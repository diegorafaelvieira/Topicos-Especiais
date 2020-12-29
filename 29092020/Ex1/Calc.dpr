program Calc;

uses
  Vcl.Forms,
  uEx1 in 'uEx1.pas' {frmCalc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalc, frmCalc);
  Application.Run;
end.
