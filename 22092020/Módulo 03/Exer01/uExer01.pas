unit uExer01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edVal1: TEdit;
    edVal2: TEdit;
    lbResultado: TLabel;
    btSoma: TButton;
    btSubtracao: TButton;
    btMultiplicacao: TButton;
    btDivisao: TButton;
    procedure btSomaClick(Sender: TObject);
    procedure btSubtracaoClick(Sender: TObject);
    procedure btMultiplicacaoClick(Sender: TObject);
    procedure btDivisaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  val1, val2, soma, sub, mult, divisao: Real;

implementation

{$R *.dfm}

procedure TForm1.btDivisaoClick(Sender: TObject);
begin
  val1:=StrToFloat(edVal1.Text);
  val2:=StrToFloat(edVal2.Text);
  divisao:=val1/val2;
  lbResultado.Caption:=FloatToStr(divisao);
end;

procedure TForm1.btMultiplicacaoClick(Sender: TObject);
begin
  val1:=StrToFloat(edVal1.Text);
  val2:=StrToFloat(edVal2.Text);
  mult:=val1*val2;
  lbResultado.Caption:=FloatToStr(mult);
end;

procedure TForm1.btSomaClick(Sender: TObject);
begin
  val1:=StrToFloat(edVal1.Text);
  val2:=StrToFloat(edVal2.Text);
  soma:=val1+val2;
  lbResultado.Caption:=FloatToStr(soma);
end;

procedure TForm1.btSubtracaoClick(Sender: TObject);
begin
  val1:=StrToFloat(edVal1.Text);
  val2:=StrToFloat(edVal2.Text);
  sub:=val1-val2;
  lbResultado.Caption:=FloatToStr(sub);
end;

end.
