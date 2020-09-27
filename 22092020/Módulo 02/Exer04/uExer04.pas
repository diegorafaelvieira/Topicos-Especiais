unit uExer04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    lbRotulo: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    btCourrierNew: TButton;
    procedure lbRotuloClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure btCourrierNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btCourrierNewClick(Sender: TObject);
begin
  lbRotulo.Font.Name := btCourrierNew.Caption;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  lbRotulo.Font.Name := 'Tahoma';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  lbRotulo.Font.Name := Button11.Caption;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    lbRotulo.Color := clRed;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  lbRotulo.Color := clGreen;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  lbRotulo.Color := clBlue;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    lbRotulo.Font.Color := clRed;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  lbRotulo.Font.Color := clGreen;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  lbRotulo.Font.Color := clBlue;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  lbRotulo.Font.Size := 8;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  lbRotulo.Font.Size := 14;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  lbRotulo.Font.Size := 20;
end;

procedure TForm1.lbRotuloClick(Sender: TObject);
begin
    lbRotulo.Color := clRed;
end;

end.
