program Exer03;

uses
  Vcl.Forms,
  uExer03 in 'uExer03.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
