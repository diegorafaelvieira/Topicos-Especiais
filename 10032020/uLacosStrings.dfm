object frmSTLacos: TfrmSTLacos
  Left = 587
  Top = 507
  BorderIcons = [biSystemMenu]
  Caption = 'Trabalhando com Strings e La'#231'os'
  ClientHeight = 229
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 45
    Height = 13
    Caption = 'Palavra 1'
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 45
    Height = 13
    Caption = 'Palavra 2'
  end
  object edPal1: TEdit
    Left = 59
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btExecutar: TButton
    Left = 184
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Executa&r'
    TabOrder = 1
    OnClick = btExecutarClick
  end
  object edPal2: TEdit
    Left = 59
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object pnRes: TPanel
    Left = 267
    Top = 8
    Width = 378
    Height = 185
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 3
    object lbCopy: TLabel
      Left = 16
      Top = 12
      Width = 35
      Height = 13
      Caption = 'Copy : '
    end
    object lbDelete: TLabel
      Left = 16
      Top = 31
      Width = 41
      Height = 13
      Caption = 'Delete : '
    end
    object lbInsert: TLabel
      Left = 16
      Top = 50
      Width = 39
      Height = 13
      Caption = 'Insert : '
    end
    object lbPos: TLabel
      Left = 16
      Top = 69
      Width = 27
      Height = 13
      Caption = 'Pos : '
    end
    object lbMin: TLabel
      Left = 16
      Top = 108
      Width = 61
      Height = 13
      Caption = 'Min'#250'sculas : '
    end
    object lbMai: TLabel
      Left = 16
      Top = 88
      Width = 61
      Height = 13
      Caption = 'Mai'#250'sculas : '
    end
    object Label3: TLabel
      Left = 16
      Top = 127
      Width = 95
      Height = 13
      Caption = 'Busca Incremental: '
    end
    object lstBusca: TListBox
      Left = 114
      Top = 127
      Width = 247
      Height = 50
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object rgOpcao: TRadioGroup
    Left = 8
    Top = 62
    Width = 253
    Height = 131
    Caption = '[ Escolha uma op'#231#227'o ]'
    Columns = 2
    Items.Strings = (
      'Copy'
      'Delete'
      'Insert'
      'Pos (Busca)'
      'Mai'#250'sculas'
      'Min'#250'sculas'
      'Busca Incremental')
    TabOrder = 4
  end
  object btSegForm: TButton
    Left = 464
    Top = 199
    Width = 181
    Height = 25
    Caption = 'Abre segundo Form'
    TabOrder = 5
    OnClick = btSegFormClick
  end
end
