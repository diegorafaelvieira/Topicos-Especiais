unit uEx1C;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm1C = class(TForm)
    btSair: TButton;
    btWhileDo: TButton;
    btForToDo: TButton;
    procedure btSairClick(Sender: TObject);
    procedure btWhileDoClick(Sender: TObject);
    procedure btForToDoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm1C: Tfrm1C;

implementation

{$R *.dfm}

procedure Tfrm1C.btForToDoClick(Sender: TObject);
var t : integer;
begin
    for t := 0 to 8 do
      ShowMessage(IntToStr(t*2));

end;

procedure Tfrm1C.btSairClick(Sender: TObject);
begin
  //Ir Menu Principal
  frm1C.Close;
end;

procedure Tfrm1C.btWhileDoClick(Sender: TObject);
var t : integer;
begin
    t := 0;
    while (t < 1) do
    begin
      t := t + 1;
      ShowMessage(IntToStr(t*2));
    end;
end;

end.

{
t := 0;
Repeat
  t := t + 1;
  showmessage(IntTostr(t*2));
until(t<8);
}