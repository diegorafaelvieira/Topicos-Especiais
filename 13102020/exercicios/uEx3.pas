unit uEx3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEx3 = class(TForm)
    btSair: TButton;
    Label1: TLabel;
    edLinha: TEdit;
    btMostrar: TButton;
    lstLinhas: TListBox;
    procedure btSairClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx3: TfrmEx3;

implementation

{$R *.dfm}

procedure TfrmEx3.btMostrarClick(Sender: TObject);
var linhas, i, j, val, cont : integer;
    n : string;
begin
  lstLinhas.Items.Clear;
  linhas := StrToInt(edLinha.Text);
  val := 1;

  if (linhas <= 20) then
  begin
       cont := 0;   //
    for i := 1 to linhas do
       begin

         n := inttostr(i) + '-';
         for j := 1 to i do
             //
           begin
           cont := cont + 1;
           n := n + cont.ToString + ' ';  //
           end;
         lstLinhas.Items.Add(n);
       end;

  end

  else
  begin
    ShowMessage('Insira um valor menor ou igual a 20');
  end;
end;

procedure TfrmEx3.btSairClick(Sender: TObject);
begin
  //Retornar Menu
  frmEx3.Close;

end;

end.
