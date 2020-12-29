program Combinacao;

uses
  Vcl.Forms,
  uFatorial in 'uFatorial.pas' {frmCombina},
  uParImpar in 'uParImpar.pas' {frmParImpar},
  uGraf in 'uGraf.pas' {frmGraf};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCombina, frmCombina);
  Application.CreateForm(TfrmParImpar, frmParImpar);
  Application.CreateForm(TfrmGraf, frmGraf);
  Application.Run;
end.
