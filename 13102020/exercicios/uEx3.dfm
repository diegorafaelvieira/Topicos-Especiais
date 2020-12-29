object frmEx3: TfrmEx3
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 3'
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
    Left = 16
    Top = 32
    Width = 101
    Height = 13
    Caption = 'Quantidade de linhas'
  end
  object btSair: TButton
    Left = 168
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = btSairClick
  end
  object edLinha: TEdit
    Left = 123
    Top = 29
    Width = 54
    Height = 21
    TabOrder = 1
  end
  object btMostrar: TButton
    Left = 72
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = btMostrarClick
  end
  object lstLinhas: TListBox
    Left = 208
    Top = 29
    Width = 185
    Height = 97
    ItemHeight = 13
    TabOrder = 3
  end
end
