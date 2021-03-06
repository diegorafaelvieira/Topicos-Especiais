unit uEx2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEx2 = class(TForm)
    Label1: TLabel;
    edVal: TEdit;
    btExecutar: TButton;
    lstResultado: TListBox;
    btSair: TButton;
    procedure btSairClick(Sender: TObject);
    procedure btExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx2: TfrmEx2;

implementation

{$R *.dfm}

function parImpar(I: integer): boolean;
begin
  if (I mod 2 = 0) then
        begin
          result := True;
        end
        else
        begin
          result := False;
        end;
end;

function sPar(contNp : integer; num: integer): real;
begin
   result := contNp / num;
end;

function sImpar(num : integer; contNp: integer): real;
begin
   result := num / contNp;
end;

function valNp(contPar : integer; contImpar : integer):boolean;
begin
  if (contPar = contImpar) then
  begin
    result := True;
  end
  else
    result := false;
end;

procedure TfrmEx2.btExecutarClick(Sender: TObject);
var
  contPar, contImpar, cont, contNp, val, num: Integer;
  somaPar, somaImpar, soma: Real;
  I: Integer;

begin
  val := StrToInt(edVal.Text);
  soma := 0;
  cont := 0;
  contNp := 1;
  num := 1;

  while (cont < val) do
  begin
    contPar := 0;
    contImpar := 0;
    for I := 1 to contNp do
    begin
      if (contNp mod I = 0) then
      begin
        if (parImpar(I)) then
        begin
          inc(contPar);
        end
        else
        begin
          inc(contImpar);
        end;
      end;

    end;

    if (valNp(contPar, contImpar) = True) then
    begin
      inc(cont);
      lstResultado.Items.Add(contNp.ToString + ' � NP');

      if (num mod 2 = 0) then
      begin
        somaPar := sPar(contNp, num);
        //somaPar(contNp, num)
        lstResultado.Items.Add(contNp.ToString + ' NP / ' + num.ToString +
           FloatToStr(somaPar));
        inc(num);
        soma := soma + somaPar;
      end
      else
      begin
        somaImpar := sImpar(num, contNp);
        //somaImpar(num, contNp) := somaImpar;
        lstResultado.Items.Add(num.ToString + ' / ' + contNp.ToString +
          ' NP = ' + FloatToStr(somaImpar));
        inc(num);
        soma := soma + somaImpar;
      end;
    end;
    inc(contNp);
  end;
  lstResultado.Items.Add('TOTAL = ' + FloatToStr(soma));
end;

procedure TfrmEx2.btSairClick(Sender: TObject);
begin
  // Ir Menu Principal
  frmEx2.Close;

  // Limpar Campos
  edVal.Clear;
  lstResultado.Items.Clear;
end;

end.
