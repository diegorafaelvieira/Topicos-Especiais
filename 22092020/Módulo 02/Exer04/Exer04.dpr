program Exer04;

uses
  Vcl.Forms,
  uExer04 in 'uExer04.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
