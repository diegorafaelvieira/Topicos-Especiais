object frmCalc: TfrmCalc
  Left = 0
  Top = 0
  Caption = 'My Calculator'
  ClientHeight = 106
  ClientWidth = 388
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
    Left = 11
    Top = 19
    Width = 20
    Height = 13
    Caption = 'Op1'
  end
  object Label2: TLabel
    Left = 11
    Top = 46
    Width = 20
    Height = 13
    Caption = 'Op2'
  end
  object lbRes: TLabel
    Left = 175
    Top = 28
    Width = 20
    Height = 23
    Caption = '= '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edOp1: TEdit
    Left = 48
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edOp2: TEdit
    Left = 48
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btSoma: TButton
    Left = 48
    Top = 70
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = btSomaClick
  end
  object btSub: TButton
    Left = 79
    Top = 70
    Width = 25
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = btSubClick
  end
  object btMul: TButton
    Left = 113
    Top = 70
    Width = 25
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = btMulClick
  end
  object btDiv: TButton
    Left = 144
    Top = 70
    Width = 25
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = btDivClick
  end
end
