object frmEx1: TfrmEx1
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 1'
  ClientHeight = 186
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 45
    Width = 33
    Height = 13
    Caption = 'Coelho'
  end
  object Label2: TLabel
    Left = 192
    Top = 85
    Width = 23
    Height = 13
    Caption = 'Rato'
  end
  object lbTotalCoelho: TLabel
    Left = 240
    Top = 45
    Width = 6
    Height = 13
    Caption = '0'
  end
  object lbTotalRato: TLabel
    Left = 240
    Top = 85
    Width = 6
    Height = 13
    Caption = '0'
  end
  object lbCobaias: TLabel
    Left = 145
    Top = 8
    Width = 80
    Height = 13
    Caption = 'Total de Cobaias'
  end
  object lbTotal: TLabel
    Left = 240
    Top = 8
    Width = 6
    Height = 13
    Caption = '0'
  end
  object lbPercCoelho: TLabel
    Left = 288
    Top = 45
    Width = 6
    Height = 13
    Caption = '0'
  end
  object lbPercRato: TLabel
    Left = 288
    Top = 85
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label5: TLabel
    Left = 261
    Top = 45
    Width = 11
    Height = 13
    Caption = '%'
  end
  object Label6: TLabel
    Left = 261
    Top = 85
    Width = 11
    Height = 13
    Caption = '%'
  end
  object btSair: TButton
    Left = 160
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = btSairClick
  end
  object btCadastrar: TButton
    Left = 70
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = btCadastrarClick
  end
end
