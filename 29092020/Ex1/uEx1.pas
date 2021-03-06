unit uEx1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalc = class(TForm)
    edOp1: TEdit;
    edOp2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btSoma: TButton;
    btSub: TButton;
    btMul: TButton;
    btDiv: TButton;
    lbRes: TLabel;
    procedure btSomaClick(Sender: TObject);
    procedure btSubClick(Sender: TObject);
    procedure btMulClick(Sender: TObject);
    procedure btDivClick(Sender: TObject);
  private
    { Private declarations }

    function Valida(aOP1, aOP2 : TEdit) : Boolean;  //CTRL+SHIFT+C
  public
    { Public declarations }

  end;

//var. Globais
var
  frmCalc: TfrmCalc;
  op1, op2, r : Real;

implementation

{$R *.dfm}

procedure TfrmCalc.btDivClick(Sender: TObject);
begin
     if not Valida(edOp1, edOp2) then
        Exit;

     op1 := StrToFloat(edop1.Text);
     op2 := StrToFloat(edop2.Text);

     if op2 = 0 then
     begin
          messagedlg('Divis�o por ZERO!!!!',
                  mtError,
                  [mbOk],
                  0);
          lbRes.caption := ' = N�o existe divis�o por ZERO!';
          Exit;
     end;

     r := op1 / op2;

     lbRes.caption := ' = ' + FloatToStr(r);end;

procedure TfrmCalc.btMulClick(Sender: TObject);
begin
     if not Valida(edOp1, edOp2) then
        Exit;

     op1 := StrToFloat(edop1.Text);
     op2 := StrToFloat(edop2.Text);

     r := op1 * op2;

     lbRes.caption := ' = ' + FloatToStr(r);
end;

procedure TfrmCalc.btSomaClick(Sender: TObject);
//var. Locais
var op1, op2, r : Real;
begin
     if not Valida(edOp1, edOp2) then
        Exit;

     //Leitura
     op1 := StrToFloat(edop1.Text);
     op2 := StrToFloat(edop2.Text);

     //Processamento
     r := op1 + op2;

     //Resultado
     lbRes.caption := ' = ' + FloatToStr(r);
end;

procedure TfrmCalc.btSubClick(Sender: TObject);
begin
     if not Valida(edOp1, edOp2) then
        Exit;
     lbRes.caption := ' = ' + FloatToStr(StrToFloat(edop1.Text)-StrToFloat(edop2.Text));
end;

function TfrmCalc.Valida(aOP1, aOP2: TEdit): Boolean;
var erro : Extended;
begin
     Result := True;
     if (aOP1.Text = '') or (aOP2.Text = '') then
     begin
       messagedlg('N�o foi digitado um n�mero',
                  mtError,
                  [mbOk],
                  0);
       Result := False;
       Exit;
     end;

     if not(TryStrToFloat(aOP1.Text, erro))  then
     begin
       messagedlg('N�o foi digitado um valor num�rico no Op1',
                  mtError,
                  [mbOk],
                  0);
       aOP1.SetFocus;
       Result := False;
       Exit;
     end;

     if not(TryStrToFloat(aOP2.Text, erro)) then
     begin
          messagedlg('N�o foi digitado um valor num�rico para Op2',
                     mtError,
                     [mbOk],
                     0);
          aOP2.SetFocus;
          Result := False;
          Exit;
     end;
end;

end.
