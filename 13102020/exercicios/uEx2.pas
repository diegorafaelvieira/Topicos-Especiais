unit uEx2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEx2 = class(TForm)
    lbSair: TButton;
    Label1: TLabel;
    edVal: TEdit;
    lbFatorial: TLabel;
    btCalular: TButton;
    procedure lbSairClick(Sender: TObject);
    procedure btCalularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx2: TfrmEx2;

implementation

{$R *.dfm}

procedure TfrmEx2.btCalularClick(Sender: TObject);
var val, fat : integer;

begin
   fat := 1;
   val := StrToInt(edVal.Text);

   while (val > 0) do
   begin
    fat := fat * val;
    val := val - 1;
   end;

   lbFatorial.Caption := 'O fatorial � '+ fat.ToString;

end;

procedure TfrmEx2.lbSairClick(Sender: TObject);
begin
 //Retornar Menu
 frmEx2.Close;

 //Limpar Campos
 lbFatorial.Caption := '0';
 edVal.Text := '';
end;

end.
