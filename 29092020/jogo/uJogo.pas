unit uJogo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    imLeao: TImage;
    imCavalo: TImage;
    imHomem: TImage;
    imMacaco: TImage;
    imMorcego: TImage;
    imBaleia: TImage;
    imAvestruz: TImage;
    Image8: TImage;
    imPato: TImage;
    imTartaruga: TImage;
    imCrocodilo: TImage;
    imAguia: TImage;
    imCobra: TImage;
    Label1: TLabel;
    rgTipo: TRadioGroup;
    rgRepteis: TRadioGroup;
    rgAves: TRadioGroup;
    rgMamiferos: TRadioGroup;
    Label2: TLabel;
    lbResultado: TLabel;
    rgNaoVoadores: TRadioGroup;
    Button1: TButton;
    rgQuadrupede: TRadioGroup;
    rgBipede: TRadioGroup;
    procedure rgTipoClick(Sender: TObject);
    procedure rgRepteisClick(Sender: TObject);
    procedure rgAvesClick(Sender: TObject);
    procedure rgNaoVoadoresClick(Sender: TObject);
    //procedure rgQuadrupedeClick(Sender: TObject);
    procedure rgMamiferosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rgQuadrupedeClick(Sender: TObject);
    procedure rgBipedeClick(Sender: TObject);
    //procedure rgBipedeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  //Aqui Limpo os Campos antes de Jogar
  rgTipo.ItemIndex := -1;
  rgRepteis.ItemIndex := -1;
  rgAves.ItemIndex := -1;
  rgNaoVoadores.ItemIndex := -1;
  rgMamiferos.ItemIndex := -1;
  rgQuadrupede.ItemIndex := -1;
  rgBipede.ItemIndex := -1;
  lbResultado.Caption := '';

  //Aqui Exibe Novamente os Groups
  rgRepteis.Enabled := True;
  rgAves.Enabled := True;
  rgNaoVoadores.Enabled := True;
  rgMamiferos.Enabled := True;
  rgQuadrupede.Enabled := True;
  rgBipede.Enabled := True;

end;

procedure TForm1.rgAvesClick(Sender: TObject);
begin
    //N�o Voadores
    if (rgAves.ItemIndex = 0) and (rgTipo.ItemIndex = 1) then
    begin
        rgRepteis.ItemIndex := -1;
        rgMamiferos.ItemIndex := -1;
        rgNaoVoadores.Enabled := True;
    end;

    //Nadador
    if (rgAves.ItemIndex = 1) and (rgTipo.ItemIndex = 1) then
    begin
        lbResultado.Caption :=   'PATO';
        rgNaoVoadores.ItemIndex := -1;
        rgRepteis.ItemIndex := -1;
        rgMamiferos.ItemIndex := -1;
        rgNaoVoadores.Enabled := False;
     end;

     //Rapina
    if (rgAves.ItemIndex = 2) and (rgTipo.ItemIndex = 1) then
    begin
        lbResultado.Caption :=   '�GUIA';
        rgNaoVoadores.ItemIndex := -1;
        rgRepteis.ItemIndex := -1;
        rgMamiferos.ItemIndex := -1;
        rgNaoVoadores.Enabled := False;
    end;
end;



procedure TForm1.rgBipedeClick(Sender: TObject);
begin
  //B�pede On�voro
    if (rgTipo.ItemIndex = 0) and (rgBipede.ItemIndex = 0) and (rgMamiferos.ItemIndex = 1) then
    begin
      lbResultado.Caption := 'HOMEM';

      //Escondo Quadr�pede
      rgQuadrupede.Enabled := False;
    end;

    //B�pede Frut�voro
    if (rgTipo.ItemIndex = 0) and (rgBipede.ItemIndex = 1) and (rgMamiferos.ItemIndex = 1)then
    begin
      lbResultado.Caption := 'MACACO';

      //Escondo Quadr�pede
      rgQuadrupede.Enabled := False;
    end;
end;

procedure TForm1.rgMamiferosClick(Sender: TObject);
begin
  //Quadr�pede Carn�voro
  if (rgMamiferos.ItemIndex = 0) and (rgQuadrupede.ItemIndex = 0) and (rgTipo.ItemIndex = 0) then
  begin
    lbResultado.Caption := 'LE�O';

    //Exibo Group Quadr�pede
    rgQuadrupede.Enabled := True;

   end;

  //Quadr�pede Herb�voro
  if (rgMamiferos.ItemIndex = 0) and (rgQuadrupede.ItemIndex = 1) and (rgTipo.ItemIndex = 0) then
  begin
    lbResultado.Caption := 'CAVALO';

    //Exibo Group Quadr�pede
    rgQuadrupede.Enabled := True;
  end;

  //B�pede On�voros
  if (rgMamiferos.ItemIndex = 1) and (rgBipede.ItemIndex = 0) and (rgTipo.ItemIndex = 0) then
  begin
    lbResultado.Caption := 'HOMEM';

    //N�o exibo Group Quadr�pede
    rgQuadrupede.Enabled := False;
  end;

  //B�pede Frut�voro
  if (rgMamiferos.ItemIndex = 1) and (rgBipede.ItemIndex = 1) and (rgTipo.ItemIndex = 0) then
  begin
    lbResultado.Caption := 'MACACO';

    //N�o exibo Group Quadr�pede
    rgQuadrupede.Enabled := False;
   end;

  //Voador
  if (rgMamiferos.ItemIndex = 2) then
  begin
    lbResultado.Caption := 'MORCEGO';
    rgQuadrupede.ItemIndex := -1;
    rgBipede.ItemIndex := -1;

  end;

  //Aqu�tico
  if (rgMamiferos.ItemIndex = 3) then
  begin
    lbResultado.Caption := 'BALEIA';
    rgQuadrupede.ItemIndex := -1;
    rgBipede.ItemIndex := -1;

   end;
     
end;

procedure TForm1.rgNaoVoadoresClick(Sender: TObject);
begin
    //Tropical
    if (rgNaoVoadores.ItemIndex = 0) and (rgAves.ItemIndex = 0) then
    begin
        lbResultado.Caption := 'AVESTRUZ';
        rgRepteis.ItemIndex := -1;
        rgMamiferos.ItemIndex := -1;
     end;

    //Polar
    if (rgNaoVoadores.ItemIndex = 1) and (rgAves.ItemIndex = 0) then
    begin
        lbResultado.Caption := 'PINGUIM';
        rgRepteis.ItemIndex := -1;
        rgMamiferos.ItemIndex := -1;
    end;
end;



procedure TForm1.rgQuadrupedeClick(Sender: TObject);
begin
  //Quadr�pede Carn�voro
    if (rgTipo.ItemIndex = 0) and (rgQuadrupede.ItemIndex = 0) and (rgMamiferos.ItemIndex = 0) then
    begin
        lbResultado.Caption := 'LE�O';
        //rgBipede.ItemIndex := -1;

        // Escondo B�pede
        rgBipede.Enabled := False;
     end;

    //Quadr�pede Herb�voro
    if (rgTipo.ItemIndex = 0) and (rgQuadrupede.ItemIndex = 1) and (rgMamiferos.ItemIndex = 0)then
    begin
        lbResultado.Caption := 'CAVALO';
        //rgBipede.ItemIndex := -1;

        // Escondo B�pede
        rgBipede.Enabled := False;
    end;
end;

procedure TForm1.rgRepteisClick(Sender: TObject);
begin
    //Com Casco
    if (rgRepteis.ItemIndex = 0) and (rgTipo.ItemIndex = 2) then
    begin
        lbResultado.Caption :=  'TARTARUGA';
        rgAves.ItemIndex := -1;
        rgNaoVoadores.ItemIndex := -1;
        rgMamiferos.ItemIndex := -1;
        rgQuadrupede.ItemIndex := -1;
        rgBipede.ItemIndex := -1;
     end;

    // Carn�voro
    if (rgRepteis.ItemIndex = 1) and (rgTipo.ItemIndex = 2) then
    begin
        lbResultado.Caption :=  'CROCODILO';
        rgAves.ItemIndex := -1;
        rgNaoVoadores.ItemIndex := -1;
        rgMamiferos.ItemIndex := -1;
        rgQuadrupede.ItemIndex := -1;
        rgBipede.ItemIndex := -1;
     end;

    //Sem Patas
    if (rgRepteis.ItemIndex = 2) and (rgTipo.ItemIndex = 2) then
    begin
        lbResultado.Caption :=  'COBRA';
        rgAves.ItemIndex := -1;
        rgNaoVoadores.ItemIndex := -1;
        rgMamiferos.ItemIndex := -1;
        rgQuadrupede.ItemIndex := -1;
        rgBipede.ItemIndex := -1;
    end;
end;

procedure TForm1.rgTipoClick(Sender: TObject);
  
begin
  //Mam�feros
  if (rgTipo.ItemIndex = 0) then
  begin
    rgMamiferos.Visible := True;   //Exibo Mam�feros
    rgRepteis.ItemIndex := -1;
    rgAves.ItemIndex := -1;
    rgNaoVoadores.ItemIndex := -1;
    //Esconder Group Aves,Nao Voadores e Repteis
    rgAves.Enabled := False;
    rgNaoVoadores.Enabled := False;
    rgRepteis.Enabled := False;
  end;

  //Aves
  if (rgTipo.ItemIndex = 1) then
  begin
    rgAves.Visible := True;  //Exibo Aves
    rgRepteis.ItemIndex := -1;
    rgMamiferos.ItemIndex := -1;
    rgQuadrupede.ItemIndex := -1;
    rgBipede.ItemIndex := -1;
    //Esconcer Group Mamiferos e Repteis
    rgMamiferos.Enabled := False;
    rgQuadrupede.Enabled := False;
    rgBipede.Enabled := False;
    rgRepteis.Enabled := False;
  end;

  //R�pteis
  if (rgTipo.ItemIndex = 2) then
  begin
    rgRepteis.Visible := True;  //Exibo R�pteis
    rgMamiferos.ItemIndex := -1;
    rgAves.ItemIndex := -1;
    rgNaoVoadores.ItemIndex := -1;
    rgQuadrupede.ItemIndex := -1;
    rgBipede.ItemIndex := -1;
    //Esconder Group Mamiferos, Aves e Nao Voadores
    rgMamiferos.Enabled := False;
    rgQuadrupede.Enabled := False;
    rgBipede.Enabled := False;
    rgAves.Enabled := False;
    rgNaoVoadores.Enabled := False;
  end;
    
end;

end.
