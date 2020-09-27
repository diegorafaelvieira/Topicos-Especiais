unit UExer02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbTexto: TLabel;
    edTexto: TEdit;
    btMoveTexto: TButton;
    procedure btMoveTextoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btMoveTextoClick(Sender: TObject);
begin
    lbTexto.Caption := edTexto.Text;
    edTexto.Clear;
    {  edTexto.Text := '';  }
end;

end.
