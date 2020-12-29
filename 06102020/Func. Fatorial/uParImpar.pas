unit uParImpar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmParImpar = class(TForm)
    btSair: TButton;
    btParImpar: TButton;
    edNum: TEdit;
    lbRes: TLabel;
    procedure btSairClick(Sender: TObject);
    procedure btParImparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParImpar: TfrmParImpar;

implementation

{$R *.dfm}

procedure TfrmParImpar.btParImparClick(Sender: TObject);
var valor: integer;

begin
//      Implementar Fun��o que recebe um n�mero e retorna
//       o texto � par ou � �mpar
valor := strtoint(edNum.Text);

if ((valor mod 2) = 0) then
   begin
     lbRes.Caption := 'PAR';
   end
   Else
   begin
       lbRes.Caption := '�MPAR';
   end;


//     lbRes.Caption := ParImpar(edNum.Text);
end;

procedure TfrmParImpar.btSairClick(Sender: TObject);
begin
     Application.Terminate; //Close;
end;

end.
