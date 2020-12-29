unit uTemperatura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edTemp: TEdit;
    Fah2Cel: TButton;
    Cel2Fah: TButton;
    lbRes: TLabel;
    procedure Fah2CelClick(Sender: TObject);
    procedure Cel2FahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Cel2FahClick(Sender: TObject);
var t,f : Real;
begin
     t := StrToFloat(edTemp.Text);
     f := (t * 9/5) + 32;
     lbRes.Caption := edTemp.Text + '°C = ' + FloatToStr(f) + '°F';
end;

procedure TForm1.Fah2CelClick(Sender: TObject);
var t,c : Real;
begin
     t := StrToFloat(edTemp.Text);
     c := (t - 32) * 5/9;
     lbRes.Caption := edTemp.Text + '°F = ' + FloatToStr(c) + '°C';
end;

end.
