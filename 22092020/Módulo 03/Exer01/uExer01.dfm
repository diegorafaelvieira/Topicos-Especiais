object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 186
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbResultado: TLabel
    Left = 48
    Top = 144
    Width = 3
    Height = 13
  end
  object edVal1: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edVal2: TEdit
    Left = 40
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btSoma: TButton
    Left = 224
    Top = 14
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = btSomaClick
  end
  object btSubtracao: TButton
    Left = 224
    Top = 54
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = btSubtracaoClick
  end
  object btMultiplicacao: TButton
    Left = 224
    Top = 94
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = btMultiplicacaoClick
  end
  object btDivisao: TButton
    Left = 224
    Top = 137
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = btDivisaoClick
  end
end
