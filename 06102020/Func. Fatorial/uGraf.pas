unit uGraf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmGraf = class(TForm)
    btWhileDo: TButton;
    btrRepeatUntil: TButton;
    procedure btWhileDoClick(Sender: TObject);
    procedure btrRepeatUntilClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraf: TfrmGraf;

implementation

{$R *.dfm}

procedure TfrmGraf.btrRepeatUntilClick(Sender: TObject);
var i, x, y : integer;
begin
     Randomize; // Liga o gerador de números aleatórios

     i := 0;
     Repeat
          frmGraf.Canvas.Pen.Color := Random(MAXLONG);

          x := Random(frmGraf.Width);
          y := Random(frmGraf.Height);
          frmGraf.Canvas.MoveTo(x, y);
          x := Random(frmGraf.Width);
          y := Random(frmGraf.Height);
          frmGraf.Canvas.LineTo(x, y);

          inc(i);
     until i > 1000;
end;

procedure TfrmGraf.btWhileDoClick(Sender: TObject);
var i, x, y : integer;
begin
     Randomize; // Liga o gerador de números aleatórios

     i := 0;
     while i < 10000 do
     begin
          x := Random(frmGraf.Width);
          y := Random(frmGraf.Height);

          frmGraf.Canvas.Pixels[x, y]   := Random(MAXLONG);
          frmGraf.Canvas.Pixels[x-1, y] := Random(MAXLONG);
          frmGraf.Canvas.Pixels[x+1, y] := Random(MAXLONG);
          frmGraf.Canvas.Pixels[x, y-1] := Random(MAXLONG);
          frmGraf.Canvas.Pixels[x, y+1] := Random(MAXLONG);

          inc(i);
     end;

end;

procedure TfrmGraf.FormClick(Sender: TObject);
begin
     frmGraf.Canvas.Pen.Color := Random(MAXLONG);

end;

end.
