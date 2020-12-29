unit uCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Math;

type
  TfrmCalculadora = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edOp1: TEdit;
    edOp2: TEdit;
    btSoma: TButton;
    btSub: TButton;
    btMul: TButton;
    btDiv: TButton;
    edRes: TEdit;
    Label3: TLabel;
    btRaiz: TButton;
    btPi: TButton;
    btQuad: TButton;
    btCubo: TButton;
    BtEleva: TButton;
    btPotDez: TButton;
    btLog: TButton;
    btLN: TButton;
    procedure btSomaClick(Sender: TObject);
    procedure btSubClick(Sender: TObject);
    procedure btMulClick(Sender: TObject);
    procedure btDivClick(Sender: TObject);
    procedure btRaizClick(Sender: TObject);
    procedure btPiClick(Sender: TObject);
    procedure btQuadClick(Sender: TObject);
    procedure btCuboClick(Sender: TObject);
    procedure BtElevaClick(Sender: TObject);
    procedure btPotDezClick(Sender: TObject);
    procedure btLogClick(Sender: TObject);
    procedure btLNClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;
  //variáveis Globais
  op1, op2, r : Real;


implementation

{$R *.dfm}

procedure TfrmCalculadora.btCuboClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     // Processamento       // power(op1,3)
     r := SQR( Op1 ) * Op1; //Eleva ao cubo  POWER(Op1, 3)

     //Resultado
     edRes.Text := FloatToStr(r);

end;

procedure TfrmCalculadora.btDivClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     if (edOp2.Text = '') then
     begin
          MessageDlg('Digite o segundo número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp2.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
      try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     try
       op2 := StrToFloat(edOp2.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop2.SetFocus;
           Exit;
        end;
     end;

     if (StrToFloat(edOp2.Text)=0) then
     begin
          MessageDlg('Não existe divisão por ZERO!', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp2.Clear;
          edOp2.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;
     // Processamento
     r := Op1 / Op2;

     //Resultado
     edRes.Text := FloatToStr(r);
end;

procedure TfrmCalculadora.BtElevaClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     if (edOp2.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp2.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     try
       op2 := StrToFloat(edOp2.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edOp2.SetFocus;
           Exit;
        end;
     end;

     // Processamento
     r := POWER( Op1, Op2 ); //Eleva

     //Resultado
     edRes.Text := FloatToStr(r);
end;

procedure TfrmCalculadora.btLNClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     // Processamento
     r := LN( Op1 ); //Eleva ao quadrado ou OP1 * OP1

     //Resultado
     edRes.Text := FloatToStr(r);

end;

procedure TfrmCalculadora.btLogClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     if op1 < 0 then
     begin
          MessageDlg('Digite apenas números positivos',mtWarning,[mbOk],0);
          edop1.SetFocus;
          Exit;
     end;

     // Processamento
     r := Log10( Op1 ); //Eleva ao quadrado ou OP1 * OP1

     //Resultado
     edRes.Text := FloatToStr(r);
end;

procedure TfrmCalculadora.btMulClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     if (edOp2.Text = '') then
     begin
          MessageDlg('Digite o segundo número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp2.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     try
       op2 := StrToFloat(edOp2.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop2.SetFocus;
           Exit;
        end;
     end;

     // Processamento
     r := Op1 * Op2;

     //Resultado
     edRes.Text := FloatToStr(r);
end;

procedure TfrmCalculadora.btPiClick(Sender: TObject);
begin
     edRes.Text := FloatToStr(PI);
end;

procedure TfrmCalculadora.btPotDezClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     // Processamento
     r := POWER(10, Op1 ); //Eleva 10 na potência OP1

     //Resultado
     edRes.Text := FloatToStr(r);

end;

procedure TfrmCalculadora.btQuadClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     // Processamento // Power(op1,2)
     r := SQR( Op1 ); //Eleva ao quadrado ou OP1 * OP1

     //Resultado
     edRes.Text := FloatToStr(r);
end;

procedure TfrmCalculadora.btRaizClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     if op1 < 0 then
     begin
          MessageDlg('Digite apenas números positivos',mtWarning,[mbOk],0);
          edop1.SetFocus;
          Exit;
     end;

     // Processamento
     r := SQRT( Op1 ); //Raiz Quadrada

     //Resultado
     edRes.Text := FloatToStr(r);
end;

procedure TfrmCalculadora.btSomaClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     if (edOp2.Text = '') then
     begin
          MessageDlg('Digite o segundo número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp2.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     try
       op2 := StrToFloat(edOp2.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop2.SetFocus;
           Exit;
        end;
     end;

     // Processamento
     r := Op1 + Op2;

     //Resultado
     edRes.Text := FloatToStr(r);
end;

procedure TfrmCalculadora.btSubClick(Sender: TObject);
begin
     if (edOp1.Text = '') then
     begin
          MessageDlg('Digite o primeiro número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp1.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     if (edOp2.Text = '') then
     begin
          MessageDlg('Digite o segundo número', //mensagem
                     mtWarning,                  //Tipo da msg
                     [mbOk],                     //Botões
                     0);                         // sempre zero
          edOp2.SetFocus;  // mandar o foco para o objeto
          Exit;
     end;

     // Leitura
     try
       op1 := StrToFloat(edOp1.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop1.SetFocus;
           Exit;
        end;
     end;

     try
       op2 := StrToFloat(edOp2.Text);
     except
        on EConvertError do
        begin
           MessageDlg('Digite apenas números',mtWarning,[mbOk],0);
           edop2.SetFocus;
           Exit;
        end;
     end;

     // Processamento
     r := Op1 - Op2;

     //Resultado
     edRes.Text := FloatToStr(r);
end;

end.



