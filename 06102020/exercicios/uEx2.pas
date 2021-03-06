unit uEx2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TfrmEx2 = class(TForm)
    btSair: TButton;
    btMostrar: TButton;
    memoRes: TMemo;
    procedure btSairClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx2: TfrmEx2;

implementation

{$R *.dfm}

procedure TfrmEx2.btMostrarClick(Sender: TObject);
var n, quadrado, cubo: integer;
var raizQ : real;

begin
  n := 1;
  while (n <= 20) do
  begin
     quadrado := SQR(n); //Pot�ncia ao Quadrado
     cubo := SQR(n) * n; //Pot�ncia ao Cubo
     raizQ := SQRT(n);   //Raiz Quadrada
     
     //Exibo no Memo
     memoRes.Lines.Add('QUADRADO DE '+inttostr(n)+' = '+inttostr(quadrado));
     memoRes.Lines.Add('CUBO DE '+inttostr(n)+' = '+inttostr(cubo));
     memoRes.Lines.Add('RAIZ QUADRADA DE '+ inttostr(n)+ ' = ' + FloatToStr(raizQ));
     memoRes.Lines.Add('');

     n := n + 1;
  end;
    {
    Escrever um programa que mostra os n�meros de 1 a 20,
    mostrando, para cada valor: seu quadrado, seu cubo e sua raiz quadrada.
     }
end;

procedure TfrmEx2.btSairClick(Sender: TObject);
begin
  //Ir Menu Principal
  frmEx2.Close;

  //Limpo Memo
  memoRes.Clear;
end;

end.

