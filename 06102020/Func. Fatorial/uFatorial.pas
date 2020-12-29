{   0! = 1
    1! = 1

    n!= n* (n-1)*(n-2).....
    3! = 3*2*1

    p
   C  = p! / ((n!) * (p-n)!)
    n

    20
   C   = 20! / ((6!) * (20-6)!)
    6
 }


unit uFatorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCombina = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edP: TEdit;
    edN: TEdit;
    btCalc: TButton;
    lbRes: TLabel;
    btLimpar: TButton;
    btSair: TButton;
    Button1: TButton;
    btGraf: TButton;
    procedure btCalcClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btGrafClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Limpa; //Ctrl+Alt+C
  end;

var
  frmCombina: TfrmCombina;

implementation

{$R *.dfm}

uses uParImpar, uGraf;

    {
    n!= n * (n-1) * (n-2).....
    3! = 3*2*1
    }

function Fat(num : integer) : Real;
var cont : integer;
    f : Real;
begin
     f := 1;
   //for cont := num downto 1 do //vf-vi+1
     for cont := 1 to num do
       f := f * cont;

     Result := f;
end;

{
function Fat(num : integer)  : Real ;
begin
     if (num = 1) or (num = 0) then
       Result := 1
     else
       Result := num * Fat(num - 1);
end;
}

procedure TfrmCombina.btCalcClick(Sender: TObject);
var p, n : Integer;
       c : Real;
{
    p
   C  = p! / ((n!) * (p-n)!)
    n
}
begin
     p := StrToInt(edp.Text);
     n := StrToInt(edN.Text);

     c := Fat(p) / (Fat(n) * Fat(p-n));

     lbRes.Caption := 'C('+ p.ToString + ',' +n.ToString + ')= ' +  FloatToStr(c);

     if MessageDlg('Realizar novo cálculo?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
     begin
          Limpa;
          edP.SetFocus;
     end;

end;

procedure TfrmCombina.btGrafClick(Sender: TObject);
begin
     frmGraf.ShowModal;
end;

procedure TfrmCombina.btLimparClick(Sender: TObject);
begin
     Limpa;

     edP.SetFocus;
end;

procedure TfrmCombina.btSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCombina.Button1Click(Sender: TObject);
begin
     frmParImpar.ShowModal;
end;

procedure TfrmCombina.Limpa;
begin
     edP.Clear;
     edN.text := '';
     lbRes.Caption := '';
end;

end.
