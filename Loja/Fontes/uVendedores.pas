unit uVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDM, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, PngBitBtn;

type
  TfrmVend = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
    procedure btConfirmarClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
    Procedure TrataBotoes;
  public
    { Public declarations }
  end;

var
  frmVend: TfrmVend;

implementation

{$R *.dfm}


procedure TfrmVend.btCancelarClick(Sender: TObject);
begin
  dm.tbVendedores.Cancel;
  TrataBotoes;
end;


procedure TfrmVend.btConfirmarClick(Sender: TObject);
begin
  // Regras de valida��o
  if dm.tbVendedores.FieldByName('DCVENDEDOR').AsString = '' then
  begin
    MessageDlg('Falta digitar a descri��o do vendedor', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
    Exit;
  end;

  dm.tbVendedores.Post; // Grava as informa��es
  TrataBotoes;
end;


procedure TfrmVend.btEditarClick(Sender: TObject);
begin
  TrataBotoes;
  dm.tbVendedores.Edit;
end;

procedure TfrmVend.btExcluirClick(Sender: TObject);
begin
   if MessageDlg('Deseja realmente excluir?', mtConfirmation, [mbYes, mbNo], 0) = idYes
  then
    dm.tbVendedores.delete;
end;

procedure TfrmVend.btInserirClick(Sender: TObject);
var
  prox: integer;
begin
  TrataBotoes;

  dm.tbVendedores.Last; // Posiciona no �ltimo registro
  prox := dm.tbVendedores.FieldByName('cdvendedor').AsInteger + 1;

  dm.tbVendedores.Append; // Insere no final da tabela
  dm.tbVendedores.FieldByName('cdvendedor').AsInteger := prox;

  // cxDBTextEdit1.SetFocus;
  DBEdit2.SetFocus; // seta o Campo a ser preenchido
end;

procedure TfrmVend.btSairClick(Sender: TObject);
begin
   if dm.tbVendedores.State IN [dsInsert, dsEdit] then
  begin
    MessageDlg('Cancele ou confirme a opera��o', mtWarning, [mbOk], 0);
    Exit;
  end;
  Close;
end;

procedure TfrmVend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //dm.tbVendedores.Active := False;
  dm.tbVendedores.Open;
end;

procedure TfrmVend.FormShow(Sender: TObject);
begin
  //dm.tbVendedores.Active := True;
  dm.tbVendedores.Open;
end;

procedure TfrmVend.TrataBotoes;
begin
  btInserir.enabled := not btInserir.enabled;
  btEditar.enabled := not btEditar.enabled;
  btExcluir.enabled := not btExcluir.enabled;
  btConfirmar.enabled := not btConfirmar.enabled;
  btCancelar.enabled := not btCancelar.enabled;

  DBNavigator1.enabled := not DBNavigator1.enabled;
end;

end.
