program MyCalculator;

uses
  Vcl.Forms,
  uCalc in 'Fontes\uCalc.pas' {frmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
