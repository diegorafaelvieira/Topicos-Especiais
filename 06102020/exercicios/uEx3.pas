unit uEx3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEx3 = class(TForm)
    btSair: TButton;
    btCalcular: TButton;
    Label1: TLabel;
    edTab: TEdit;
    memoTabuada: TMemo;
    Label2: TLabel;
    lbTab: TLabel;
    procedure btSairClick(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx3: TfrmEx3;

implementation

{$R *.dfm}

procedure TfrmEx3.btCalcularClick(Sender: TObject);
var res, val, cont: integer;

begin
  val := strtoint(edTab.Text);
  lbTab.Caption := edTab.Text;
  cont := 1;
  while (cont <= 10) do
  begin
    res := val * cont;
    memoTabuada.Lines.Add(inttostr(val)+' X ' + inttostr(cont) + ' = ' + IntToStr(val*cont));
    cont := cont + 1;
  end;

end;

procedure TfrmEx3.btSairClick(Sender: TObject);
begin
  //Ir Menu Principal
  frmEx3.Close;

  //Limpar Memo/Lb/Ed
  memoTabuada.Clear;
  lbTab.Caption := '';
  edTab.Clear;
end;

end.
