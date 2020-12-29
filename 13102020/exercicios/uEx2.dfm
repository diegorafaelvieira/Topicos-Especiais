object frmEx2: TfrmEx2
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 2'
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
    Left = 64
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object lbFatorial: TLabel
    Left = 200
    Top = 53
    Width = 6
    Height = 13
    Caption = '0'
  end
  object lbSair: TButton
    Left = 168
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = lbSairClick
  end
  object edVal: TEdit
    Left = 98
    Top = 45
    Width = 63
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object btCalular: TButton
    Left = 168
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btCalularClick
  end
end
