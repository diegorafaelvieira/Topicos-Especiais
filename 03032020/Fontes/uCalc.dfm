object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Minha Calculadora'
  ClientHeight = 273
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
    Left = 24
    Top = 29
    Width = 34
    Height = 13
    Caption = 'Oper.1'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 34
    Height = 13
    Caption = 'Oper.2'
  end
  object Label3: TLabel
    Left = 216
    Top = 24
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edOp1: TEdit
    Left = 72
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Digite um n'#250'mero aqui'
  end
  object edOp2: TEdit
    Left = 72
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btSoma: TButton
    Left = 72
    Top = 75
    Width = 50
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = btSomaClick
  end
  object btSub: TButton
    Left = 143
    Top = 75
    Width = 50
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = btSubClick
  end
  object btMul: TButton
    Left = 72
    Top = 106
    Width = 50
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = btMulClick
  end
  object btDiv: TButton
    Left = 143
    Top = 106
    Width = 50
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = btDivClick
  end
  object edRes: TEdit
    Left = 216
    Top = 37
    Width = 185
    Height = 21
    TabStop = False
    Color = clWhite
    ReadOnly = True
    TabOrder = 6
  end
  object btRaiz: TButton
    Left = 72
    Top = 137
    Width = 50
    Height = 25
    Caption = 'Raiz Q'
    TabOrder = 7
    OnClick = btRaizClick
  end
  object btPi: TButton
    Left = 143
    Top = 137
    Width = 50
    Height = 25
    Caption = 'PI'
    TabOrder = 8
    OnClick = btPiClick
  end
  object btQuad: TButton
    Left = 72
    Top = 168
    Width = 50
    Height = 25
    Caption = 'OP1'#178
    TabOrder = 9
    OnClick = btQuadClick
  end
  object btCubo: TButton
    Left = 143
    Top = 168
    Width = 50
    Height = 25
    Caption = 'OP1'#179
    TabOrder = 10
    OnClick = btCuboClick
  end
  object BtEleva: TButton
    Left = 64
    Top = 199
    Width = 58
    Height = 25
    Caption = 'Op1^Op2'
    TabOrder = 11
    OnClick = BtElevaClick
  end
  object btPotDez: TButton
    Left = 143
    Top = 199
    Width = 50
    Height = 25
    Caption = '10^Op1'
    TabOrder = 12
    OnClick = btPotDezClick
  end
  object btLog: TButton
    Left = 64
    Top = 230
    Width = 58
    Height = 25
    Caption = 'Log(Op1)'
    TabOrder = 13
    OnClick = btLogClick
  end
  object btLN: TButton
    Left = 143
    Top = 230
    Width = 50
    Height = 25
    Caption = 'LN(Op1)'
    TabOrder = 14
    OnClick = btLNClick
  end
end
