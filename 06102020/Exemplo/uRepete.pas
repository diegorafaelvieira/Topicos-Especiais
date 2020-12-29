unit uRepete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmRepete = class(TForm)
    edNum: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepete: TfrmRepete;

implementation

{$R *.dfm}

procedure TfrmRepete.Button1Click(Sender: TObject);
var n, qt : integer;
begin
     //Limpa o memo
     memo1.Clear;

     qt := StrToInt(edNum.Text);
     for n := 1 to qt do
       memo1.Lines.Add(inttostr(n));

end;

end.
