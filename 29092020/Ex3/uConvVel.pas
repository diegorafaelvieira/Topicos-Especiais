unit uConvVel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edVel: TEdit;
    btKmh2ms: TButton;
    lbRes: TLabel;
    btms2kmh: TButton;
    procedure btKmh2msClick(Sender: TObject);
    procedure btms2kmhClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btKmh2msClick(Sender: TObject);
var v, ms : Real;
begin
     v := StrToFloat(edVel.Text);
     lbRes.Caption := FloatToStr(v / 3.6) + ' m/s';
end;

procedure TForm1.btms2kmhClick(Sender: TObject);
var v : Real;
begin
     v := StrToFloat(edVel.Text);
     lbRes.Caption := FloatToStr(v * 3.6) + ' Km/H';
end;

end.
