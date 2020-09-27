unit uExer3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSemaforo = class(TForm)
    lbPare: TLabel;
    lbAtencao: TLabel;
    lbSiga: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaforo: TfrmSemaforo;

implementation

{$R *.dfm}

procedure TfrmSemaforo.Button1Click(Sender: TObject);
begin
    lbPare.Enabled := True;
    lbAtencao.Enabled := False;
    lbSiga.Enabled := False;
end;

procedure TfrmSemaforo.Button2Click(Sender: TObject);
begin
    lbPare.Enabled := False;
    lbAtencao.Enabled := True;
    lbSiga.Enabled := False;
end;

procedure TfrmSemaforo.Button3Click(Sender: TObject);
begin
    lbPare.Enabled := False;
    lbAtencao.Enabled := False;
    lbSiga.Enabled := True;
end;

end.
