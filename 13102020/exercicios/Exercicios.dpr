program Exercicios;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {frmMenu},
  uEx1 in 'uEx1.pas' {frmEx1},
  uEx2 in 'uEx2.pas' {frmEx2},
  uEx3 in 'uEx3.pas' {frmEx3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmEx1, frmEx1);
  Application.CreateForm(TfrmEx2, frmEx2);
  Application.CreateForm(TfrmEx3, frmEx3);
  Application.Run;
end.
