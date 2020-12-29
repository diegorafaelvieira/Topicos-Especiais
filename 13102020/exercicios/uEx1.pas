unit uEx1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEx1 = class(TForm)
    btSair: TButton;
    btCadastrar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    lbTotalCoelho: TLabel;
    lbTotalRato: TLabel;
    lbCobaias: TLabel;
    lbTotal: TLabel;
    lbPercCoelho: TLabel;
    lbPercRato: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btSairClick(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx1: TfrmEx1;

implementation

{$R *.dfm}



procedure TfrmEx1.btCadastrarClick(Sender: TObject);
var coelho, rato, total, op : Integer;
    percRato, percCoelho : Real;

begin
  coelho := 0;
  rato := 0;
  total := 0;
  percCoelho := 0;
  percRato := 0;

  repeat
  op := StrToInt(InputBox('Informe o tipo da Cobaia 1-Coelho | 2-Rato','Op��o','1'));

  if (op=1) then
    begin
       coelho := coelho + 1;
       lbTotalCoelho.Caption := IntToStr(coelho);

    end;

  if (op=2) then
  begin
    rato := rato + 1;
    lbTotalRato.Caption := InttoStr(rato);

  end;

  total := total + 1;

  percCoelho := ((coelho * 100) / total);
  lbPercCoelho.Caption := FloatToStr(percCoelho);

  percRato := ((rato * 100) / total);
  lbPercRato.Caption := FloatToStr(percRato);

  lbTotal.Caption := IntToStr(total);

  until (total = 15);
end;

procedure TfrmEx1.btSairClick(Sender: TObject);
begin
  //Retornar Menu
  frmEx1.Close;

  //Limpar Valores
  lbTotalCoelho.Caption := '0';
  lbTotalRato.Caption := '0';
  lbTotal.Caption := '0';
  lbPercCoelho.Caption := '0';
  lbPercRato.Caption := '0';
end;

end.
