unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edA: TEdit;
    Label2: TLabel;
    edB: TEdit;
    Label3: TLabel;
    edC: TEdit;
    btResolver: TButton;
    lbX1: TLabel;
    lbX2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    procedure btResolverClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btResolverClick(Sender: TObject);
var a,b,c,x1,x2,delta : Real;
begin
     lbX1.Caption := 'x''';
     lbX2.Caption := 'x2''''';

     a := StrToFloat(edA.Text);
     b := StrToFloat(edB.Text);
     c := StrToFloat(edC.Text);

     delta := SQR(B) - 4*a*c;
     if delta = 0 then
     begin
          x1 := -b / (2 * a);
          lbX1.Caption := lbX1.Caption + ' = ' + FloatToStr(x1);
     end
     else
     begin
          if delta > 0 then
          begin
                // (-B +- SQRT(delta)) / 2 * a
                x1 := (-B + SQRT(delta)) / 2 * a;
                x2 := (-B - SQRT(delta)) / 2 * a;
                lbX1.Caption := lbX1.Caption + ' = ' + FloatToStr(x1);
                lbX2.Caption := lbX2.Caption + ' = ' + FloatToStr(x2);
          end
          else
              MessageDlg('Não existem raízes reais!', mtError, [mbOk], 0);
     end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     Image1.Visible := False;
     Image2.Visible := False;
     Image3.Visible := False;

     RadioGroup1.Visible := True;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
     if RadioGroup1.ItemIndex = 0 then
       RadioGroup2.Visible := True;
end;

end.
