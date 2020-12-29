program prjRepete;

uses
  Vcl.Forms,
  uRepete in 'uRepete.pas' {frmRepete};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRepete, frmRepete);
  Application.Run;
end.
