program Exercicios;

uses
  Vcl.Forms,
  uExercicios in 'uExercicios.pas' {frmMenu},
  uEx1A in 'uEx1A.pas' {frm1A},
  uEx1B in 'uEx1B.pas' {frm1B},
  uEx1C in 'uEx1C.pas' {frm1C},
  uEx2 in 'uEx2.pas' {frmEx2},
  uEx3 in 'uEx3.pas' {frmEx3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(Tfrm1A, frm1A);
  Application.CreateForm(Tfrm1B, frm1B);
  Application.CreateForm(Tfrm1C, frm1C);
  Application.CreateForm(TfrmEx2, frmEx2);
  Application.CreateForm(TfrmEx3, frmEx3);
  Application.Run;
end.
