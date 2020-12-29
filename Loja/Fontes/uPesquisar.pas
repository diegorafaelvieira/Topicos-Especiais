unit uPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, uDM;

type
  TfrmPesquisar = class(TForm)
    rgSel: TRadioGroup;
    rgOrdem: TRadioGroup;
    edBusca: TEdit;
    btSel: TPngBitBtn;
    Label1: TLabel;
    cmbTabela: TComboBox;
    DBGrid1: TDBGrid;
    procedure btSelClick(Sender: TObject);
    procedure cmbTabelaChange(Sender: TObject);
    procedure rgSelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisar: TfrmPesquisar;

implementation

{$R *.dfm}

procedure TfrmPesquisar.btSelClick(Sender: TObject);
var
  nmTab, vSQL: string;

  function RetCampoCodigo(aTab: string): string;
  begin
    if aTab = 'CLIENTES' then
      Result := 'CDCLIENTE'
    else if aTab = 'FORNECEDORES' then
      Result := 'CDFORNECEDOR'
    else if aTab = 'PRODUTOS' then
      Result := 'CDPRODUTO'
  end;

  function RetCampoDesc(aTab: string): string;
  begin
    if aTab = 'CLIENTES' then
      Result := 'DCCLIENTE'
    else if aTab = 'FORNECEDORES' then
      Result := 'DCFORNECEDOR'
    else if aTab = 'PRODUTOS' then
      Result := 'DCPRODUTO'
  end;

  function RetCampoCidade(aTab : string): string;
  begin
     if aTab = 'CLIENTES' then
      Result := 'CIDADE'
     else
      MessageDlg('Tabela Cliente n�o selecionada', mtWarning, [mbOk], 0);
      Exit;
  end;

begin
  nmTab := '';

  if cmbTabela.ItemIndex = -1 then
  begin
    MessageDlg('Selecione uma tabela', mtError, [mbOk], 0);
    Exit;
  end;


  if((edBusca.Text = '') and (rgSel.ItemIndex = 0)) then
  begin
    MessageDlg('Digite algum valor', mtWarning, [mbOk], 0);
    Exit;
  end;

  {// C�digo Professor Nilton
  if edBusca.Text = '' then
  begin
    MessageDlg('Digite algum valor', mtWarning, [mbOk], 0);
    Exit;
  end;
  }


  case cmbTabela.ItemIndex of
    0 : nmTab := 'CLIENTES';
    1 : nmTab := 'FORNECEDORES';
    2 : nmTab := 'PRODUTOS';
  end;

  vSQL := 'SELECT * FROM ' + nmTab;

  case rgSel.ItemIndex of // #13 => ENTER - Trocar de linha
    0 : vSQL := vSQL + #13 + ' WHERE ' + RetCampoCodigo(nmTab) + ' = :PCD';
    1 : vSQL := vSQL + #13 + ' WHERE ' + RetCampoDesc(nmTab) + ' CONTAINING :PCD';
    2 : vSQL := vSQL + #13 + ' WHERE ' + RetCampoCidade(nmTab) + ' CONTAINING :PCD';
  end;

  case rgOrdem.ItemIndex of
    1 : vSQL := vSQL + #13 + ' ORDER BY ' + RetCampoCodigo(nmTab) + ' ASC '; // ASC � opcional
    2 : vSQL := vSQL + #13 + ' ORDER BY ' + RetCampoCodigo(nmTab) + ' DESC ';
  end;

  dm.qrConsulta.Close;
  dm.qrConsulta.SQL.Text := vSQL;
  dm.qrConsulta.ParamByName('PCD').AsString := edBusca.Text;
  dm.qrConsulta.Open;

  if dm.qrConsulta.IsEmpty then
  begin
    MessageDlg('Nenhum resultado encontrado', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmPesquisar.cmbTabelaChange(Sender: TObject);
begin
  if ((cmbTabela.ItemIndex = 2) and (rgSel.ItemIndex = 2)) or
  ((cmbTabela.ItemIndex = 1) and (rgSel.ItemIndex = 2))then
     cmbTabela.ItemIndex := 0;
end;

procedure TfrmPesquisar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBGrid1.DataSource.DataSet.Close; //Limpa o DBGrid
  edBusca.Text := ''; //Limpa input
  cmbTabela.ItemIndex := 0;   //Limpa combo
  rgSel.ItemIndex := 0; //Limpa radio
  rgOrdem.ItemIndex := 0;  //Limpa radio
end;

procedure TfrmPesquisar.rgSelClick(Sender: TObject);
begin
  //Aqui Pesquisa Cidades apenas para Clientes
  if ((cmbTabela.ItemIndex = 2) and (rgSel.ItemIndex = 2)) or
  ((cmbTabela.ItemIndex = 1) and (rgSel.ItemIndex = 2))then
     cmbTabela.ItemIndex := 0;
end;

end.
