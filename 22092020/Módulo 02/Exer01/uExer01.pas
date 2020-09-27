unit uExer01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbRotulo: TLabel;
    btEsconde: TButton;
    btMostra: TButton;
    procedure btEscondeClick(Sender: TObject);
    procedure btMostraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btEscondeClick(Sender: TObject);
begin
  lbRotulo.Visible := False;
end;

procedure TForm1.btMostraClick(Sender: TObject);
begin
  lbRotulo.Visible := True;
end;

end.
