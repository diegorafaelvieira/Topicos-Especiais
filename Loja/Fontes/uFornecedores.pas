unit uFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDM, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, PngBitBtn;

type
  TfrmFornec = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    btInserir: TPngBitBtn;
    btEditar: TPngBitBtn;
    btExcluir: TPngBitBtn;
    btCancelar: TPngBitBtn;
    btConfirmar: TPngBitBtn;
    btSair: TPngBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btInserirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);

  private
    { Private declarations }
    Procedure TrataBotoes;  //ctrl + shif + c PARA CRIAR PROCEDURE
  public
    { Public declarations }
  end;

var
  frmFornec: TfrmFornec;

implementation

{$R *.dfm}


procedure TfrmFornec.btCancelarClick(Sender: TObject);
begin
  dm.tbFornec.Cancel;
  TrataBotoes;
end;


procedure TfrmFornec.btConfirmarClick(Sender: TObject);
begin
  // Regras de valida��o
  if dm.tbFornec.FieldByName('DCFORNECEDOR').AsString = '' then
  begin
    MessageDlg('Falta digitar o nome do fornecedor', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
    Exit;
  end;

  dm.tbFornec.Post; // Grava as informa��es
  TrataBotoes;
end;

procedure TfrmFornec.btEditarClick(Sender: TObject);
begin
  TrataBotoes;
  dm.tbFornec.Edit;
end;

procedure TfrmFornec.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir?', mtConfirmation, [mbYes, mbNo], 0) = idYes
  then
    dm.tbFornec.delete;
end;

procedure TfrmFornec.btInserirClick(Sender: TObject);
var
  prox: integer;
begin
  TrataBotoes;

  dm.tbFornec.Last; // Posiciona no �ltimo registro
  prox := dm.tbFornec.FieldByName('cdfornecedor').AsInteger + 1;

  dm.tbFornec.Append; // Insere no final da tabela
  dm.tbFornec.FieldByName('cdfornecedor').AsInteger := prox;

  // cxDBTextEdit1.SetFocus;
  DBEdit2.SetFocus; // seta o Campo a ser preenchido
 end;

  procedure TfrmFornec.btSairClick(Sender: TObject);
begin
    if dm.tbProdutos.State IN [dsInsert, dsEdit] then
  begin
    MessageDlg('Cancele ou confirme a opera��o', mtWarning, [mbOk], 0);
    Exit;
  end;
  Close;
end;

procedure TfrmFornec.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    // dm.tbFornec.Active := False;

    dm.tbFornec.Close;
  end;

  procedure TfrmFornec.FormShow(Sender: TObject);
  begin
    // dm.tbFornec.Active := True;

    dm.tbFornec.Open;

  end;

  procedure TfrmFornec.TrataBotoes;
  begin
    btInserir.enabled := not btInserir.enabled;
    btEditar.enabled := not btEditar.enabled;
    btExcluir.enabled := not btExcluir.enabled;
    btConfirmar.enabled := not btConfirmar.enabled;
    btCancelar.enabled := not btCancelar.enabled;

    DBNavigator1.enabled := not DBNavigator1.enabled;
  end;

end.
