unit uExer02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edValor: TEdit;
    btCelsius: TButton;
    btFahrenheit: TButton;
    lbRes: TLabel;
    procedure btFahrenheitClick(Sender: TObject);
    procedure btCelsiusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btCelsiusClick(Sender: TObject);
begin
  lbRes.Caption := FloatToStr((StrToFloat(edValor.Text)-32) * (5/9)) + 'º Celsius';
end;

procedure TForm1.btFahrenheitClick(Sender: TObject);
begin
  lbRes.Caption := FloatToStr(((9/5)*(StrToFloat(edValor.Text))+32 )) + 'º Fahrenheit';
end;

end.
