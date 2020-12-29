unit uSegundo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmLacos = class(TForm)
    lstFor: TListBox;
    lstRepeat: TListBox;
    lstWhile: TListBox;
    bTFor: TButton;
    btRepeat: TButton;
    btWhile: TButton;
    pbFor: TProgressBar;
    BitBtn1: TBitBtn;
    lstPrimos: TListBox;
    bt100Primos: TButton;
    procedure bTForClick(Sender: TObject);
    procedure btRepeatClick(Sender: TObject);
    procedure btWhileClick(Sender: TObject);
    procedure bt100PrimosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLacos: TfrmLacos;

implementation

{$R *.dfm}

procedure TfrmLacos.bt100PrimosClick(Sender: TObject);
var i, n , ndiv, cont : integer;
begin
     n := 1;
     cont := 1;
     repeat
        ndiv := 0;
        for I := 1 to n do
          if cont mod i = 0then
            inc(ndiv);
        if ndiv <= 2 then
        begin
          lstPrimos.Items.Add('#'+ n.ToString + ' - ' + cont.ToString);
          inc(n);
        end;
        inc(cont);
     until n > 100 ;




end;

procedure TfrmLacos.bTForClick(Sender: TObject);
var i : integer;
begin
     lstFor.Clear;
     // for i := 100 downto 1 do
     for i := 1 to 100 do
     begin
       pbFor.Position := i;
       lstFor.Items.Add(i.ToString);
     end;
end;

procedure TfrmLacos.btRepeatClick(Sender: TObject);
var i : integer;
begin
     lstRepeat.Clear;
     i := 1;
     Repeat
       lstRepeat.Items.Add(i.ToString);
       inc(i); // i := i + 1;
     Until (i > 100);
end;

procedure TfrmLacos.btWhileClick(Sender: TObject);
var i : integer;
begin
     lstWhile.Clear;
     i := 1;
     while (i <= 100) do
     begin
       lstWhile.Items.Add(i.ToString);
       inc(i);
     end;
end;

end.
