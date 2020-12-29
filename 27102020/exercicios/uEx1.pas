unit uEx1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmEx1 = class(TForm)
    btSair: TButton;
    sgMat: TStringGrid;
    btExecutar: TButton;
    sgPar: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    sgImpar: TStringGrid;
    Label3: TLabel;
    sgDif: TStringGrid;
    procedure btSairClick(Sender: TObject);
    procedure btExecutarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx1: TfrmEx1;
  mat: array [0 .. 10, 0 .. 9] of Integer;
  vetPar: array of Integer;
  vetImpar: array of Integer;
  vetDif: array of Integer;

implementation

{$R *.dfm}

procedure decrescente (var vetor: array of Integer);
var
cont, temp: Integer;
ok: boolean;
begin
  ok := true;
  while (ok = True) do
  begin
    ok := false;
    for cont := Low(vetor) to High(vetor)-1 do
    begin
      if (vetor[cont] < vetor[cont+1]) then
      begin
        temp := vetor[cont+1];
        vetor[cont+1] := vetor[cont];
        vetor[cont] := temp;
        ok := true;
      end;
    end;
  end;
end;

procedure TfrmEx1.btExecutarClick(Sender: TObject);
var
  res : string;
  l, c, contIguais, n, contPar, contImpar, lin, col, lin2, col2, iguais: Integer;
  I: Integer;

begin
  contPar := 0;
  contImpar := 0;
  contIguais := 0;

  Randomize;

  for l := 0 to sgMat.RowCount - 1 do
  begin
    for c := 0 to sgMat.ColCount - 1 do
    begin
      n := Random(100);
      sgMat.Cells[c, l] := IntToStr(n);
      mat[l, c] := StrToInt(sgMat.Cells[c, l]);

      if (n mod 2 = 0) then
      begin
        SetLength(vetPar, contPar+1);
        vetPar[contPar-1] := n;
        //sgPar.ColCount := contPar+1;
        //sgPar.Cells[contPar, 0] := n.ToString;
        inc(contPar);
      end
      else
      begin
        SetLength(vetImpar, contImpar+1);
        vetImpar[contImpar-1] := n;
        //sgImpar.ColCount := contImpar+1;
        //sgImpar.Cells[contImpar, 0] := n.ToString;
        inc(contImpar);
      end;

    end;
  end;

  for lin := 0 to sgMat.RowCount - 1 do
    begin
      for col := 0 to sgMat.ColCount - 1 do
      begin
        iguais := 0;
        for lin2 := 0 to sgMat.RowCount - 1 do
        begin
          for col2 := 0 to sgMat.ColCount - 1 do
          begin
            if (sgMat.Cells[col, lin] = sgMat.Cells[col2, lin2]) then
            begin
              inc(Iguais);
            end;
          end;
        end;
        if (iguais = 1) then
        begin
          res := sgMat.Cells[col, lin];
          SetLength(vetDif, contIguais+1);
          vetDif[contIguais-1] := StrToInt(res);
          sgDif.ColCount := contIguais + 1;
          sgDif.Cells[contIguais, 0] := sgMat.Cells[col, lin];
          inc(contIguais);
        end;

      end;
    end;

    //Ordenar Decrescente
    decrescente(vetPar);
    for I := Low(vetPar) to High(vetPar) do
    begin
      sgPar.ColCount := I;
      sgPar.Cells[I, 0] := vetPar[I].ToString;
    end;

    decrescente(vetImpar);
    for I := Low(vetImpar) to High(vetImpar) do
    begin
      sgImpar.ColCount := I;
      sgImpar.Cells[I, 0] := vetImpar[I].ToString;
    end;
end;


procedure TfrmEx1.btSairClick(Sender: TObject);
var
  lin, col: Integer;
  // Limpar StrigGrid
begin
  for lin := 0 to sgMat.RowCount - 1 do
    for col := 0 to sgMat.ColCount - 1 do
      sgMat.Cells[col, lin] := '';

  for lin := 0 to sgPar.RowCount - 1 do
    for col := 0 to sgPar.ColCount - 1 do
      sgPar.Cells[col, lin] := '';

  for lin := 0 to sgImpar.RowCount - 1 do
    for col := 0 to sgImpar.ColCount - 1 do
      sgImpar.Cells[col, lin] := '';

  for lin := 0 to sgDif.RowCount - 1 do
    for col := 0 to sgDif.ColCount - 1 do
      sgDif.Cells[col, lin] := '';

  // Ir Menu
  frmEx1.Close;

end;

end.
