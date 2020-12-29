program prjLacosStrings;

uses
  Vcl.Forms,
  uLacosStrings in 'uLacosStrings.pas' {frmSTLacos},
  uSegundo in 'uSegundo.pas' {frmLacos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSTLacos, frmSTLacos);
  Application.CreateForm(TfrmLacos, frmLacos);
  Application.Run;
end.
