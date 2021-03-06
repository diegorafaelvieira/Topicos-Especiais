unit uEx1A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm1A = class(TForm)
    btSair: TButton;
    btWhileDo: TButton;
    memoWhileDo: TMemo;
    btForToDo: TButton;
    memoForToDo: TMemo;
    procedure btSairClick(Sender: TObject);
    procedure btWhileDoClick(Sender: TObject);
    procedure btForToDoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm1A: Tfrm1A;

implementation

{$R *.dfm}

procedure Tfrm1A.btForToDoClick(Sender: TObject);
var a, cont : integer;

begin
    a := 9;
    for cont := 1 to 10 do
      if (a < 10) then
      begin
        a := a + 1;
        memoForToDo.Lines.Add(inttostr(a));
      end;
end;

procedure Tfrm1A.btSairClick(Sender: TObject);
begin
 //Ir Menu Principal
 frm1A.Close;

 //Limpar Memo
 memoWhileDo.Clear;
 memoForToDo.Clear;
end;

procedure Tfrm1A.btWhileDoClick(Sender: TObject);
var a : integer;
begin
  a := 9;
  while (a < 10) do
  begin
    a := a + 1;
    memoWhileDo.Lines.Add(inttostr(a));
  end;
end;

end.
