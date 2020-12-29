object frmEx2: TfrmEx2
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 2'
  ClientHeight = 417
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
    Left = 128
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object edVal: TEdit
    Left = 162
    Top = 29
    Width = 73
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object btExecutar: TButton
    Left = 241
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = btExecutarClick
  end
  object lstResultado: TListBox
    Left = 74
    Top = 72
    Width = 271
    Height = 297
    ItemHeight = 13
    TabOrder = 2
  end
  object btSair: TButton
    Left = 176
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btSairClick
  end
end
