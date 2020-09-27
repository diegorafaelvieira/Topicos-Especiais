unit uExer03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edVel: TEdit;
    btKmh: TButton;
    btMts: TButton;
    lbResultado: TLabel;
    procedure btKmhClick(Sender: TObject);
    procedure btMtsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vel, res: Real;

implementation

{$R *.dfm}

procedure TForm1.btKmhClick(Sender: TObject);
begin
  vel:=StrToFloat(edVel.Text);
  res:= vel * 3.6;
  lbResultado.Caption:=FloatToStr(res) + ' Km/h';
end;

procedure TForm1.btMtsClick(Sender: TObject);
begin
  vel:=StrToFloat(edVel.Text);
  res:= vel / 3.6;
  lbResultado.Caption:=FloatToStr(res) + ' Mt/s';
end;

end.
