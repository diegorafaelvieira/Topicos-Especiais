program Semaforo;

uses
  Vcl.Forms,
  uExer3 in 'uExer3.pas' {frmSemaforo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSemaforo, frmSemaforo);
  Application.Run;
end.
