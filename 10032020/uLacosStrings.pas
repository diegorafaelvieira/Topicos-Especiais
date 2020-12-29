unit uLacosStrings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmSTLacos = class(TForm)
    Label1: TLabel;
    edPal1: TEdit;
    btExecutar: TButton;
    edPal2: TEdit;
    Label2: TLabel;
    pnRes: TPanel;
    lbCopy: TLabel;
    lbDelete: TLabel;
    rgOpcao: TRadioGroup;
    lbInsert: TLabel;
    lbPos: TLabel;
    lbMin: TLabel;
    lbMai: TLabel;
    btSegForm: TButton;
    lstBusca: TListBox;
    Label3: TLabel;
    procedure btExecutarClick(Sender: TObject);
    procedure btSegFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSTLacos: TfrmSTLacos;

implementation

{$R *.dfm}

uses uSegundo;

procedure TfrmSTLacos.btExecutarClick(Sender: TObject);
var
  st, st2: string;
  op : integer;
  st1: string[1];
  ch, m: char;
  I: Integer;
  flag : Boolean;
begin
  st := edPal1.Text;
  st2 := edPal2.Text;
  // Length(st) = Tamanho da ST
  // Trim(st) = remove espa�os em branco do ini e fin
  if (Length(Trim(st)) = 0) then // st.Empty = ''
  begin
    MessageDlg('Digite uma palavra!', mtWarning, [mbOk], 0);
    edPal1.SetFocus;
    Exit;
  end;

  if rgOpcao.ItemIndex = -1 then
  begin
       MessageDlg('Escolha uma op��o!', mtWarning, [mbOk], 0);
       Exit;
  end;

  op := rgOpcao.ItemIndex;  // 0 = primeira op��o, 1 = segunda....

  case op of
    0 : begin
          // copy(st, posini, qtdcar);
          // st = origem
          // posini = posicao inicial
          // qtdcar = qtd de caracteres

          lbCopy.Caption := 'Copy : ' +
                            Copy(st,
                                 InputBox('Posi��o Inicial', //Titulo
                                          'Digite a posi��o inicial:', //msg
                                          '1' {vlr padrao}  ).ToInteger,
                                 InputBox('Qtd de Caracteres',
                                          'Digite a quantidade:',
                                          '1').ToInteger);
        end;
    1 : begin
            // delete(st, posini, qtdcar);
            // st = origem
            // posini = posicao inicial
            // qtdcar = qtd de caracteres

            Delete(st,
                 InputBox('Posi��o Inicial', //Titulo
                          'Digite a posi��o inicial:', //msg
                          '1' {vlr padrao}  ).ToInteger,
                 InputBox('Qtd de Caracteres',
                          'Digite a quantidade:',
                          '1').ToInteger);

            lbDelete.Caption := 'Delete : ' + st;
        end;
    2 : begin
          //Insert(Origem, destino, posicao);
          if (Length(Trim(st2)) = 0) then // st.Empty = ''
          begin
            MessageDlg('Digite uma palavra!', mtWarning, [mbOk], 0);
            edPal2.SetFocus;
            Exit;
          end;

          Insert(st2, st, StrToInt(
                             InputBox('Posi��o da inser��o',
                                      'Digite a posi��o:',
                                      '1')));

          lbInsert.Caption := 'Insert : ' + st;
        end;
    3:  begin
          //  Pos(st2, st1) = 0 n�o encontrou
          //                > 0 - resultado � a posi��o da 1� ocorr�ncia

          if Pos(st2, st) = 0 then
            lbPos.Caption := 'N�o encontrou'
          else
            lbPos.Caption := 'Posi��o : ' + IntToStr(Pos(st2, st));
        end;
     4: begin
          lbMai.Caption := 'Mai�sculas : ' + AnsiUpperCase(st) + ' - ' +
                                             AnsiUpperCase(st2);
        end;
     5: begin
          lbMin.Caption := 'Min�sculas : ' + AnsiLowerCase(st);
        end;
     6: begin
             flag := False;
             for I := 1 to Length(st) do
             begin
                  if (Pos(st2, st) = 0) then
                  begin
                       if (Flag = False) then
                       begin
                            lstBusca.Items.Add('N�o encontrou');
                            Break;
                       end;
                  end
                  else
                  begin
                       lstBusca.Items.Add('Posi��o : ' + IntToStr(Pos(st2, st)));
                       st[Pos(st2, st)] := '\';
                       Flag := True;
                  end;
             end;
        end;
  end;
end;

procedure TfrmSTLacos.btSegFormClick(Sender: TObject);
begin
     frmLacos.ShowModal;
end;

end.
