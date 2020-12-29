object frmCombina: TfrmCombina
  Left = 0
  Top = 0
  Caption = 'C'#225'lculo de Combina'#231#227'o'
  ClientHeight = 120
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 9
    Height = 19
    Caption = 'P'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 11
    Height = 19
    Caption = 'N'
  end
  object lbRes: TLabel
    Left = 247
    Top = 42
    Width = 5
    Height = 19
  end
  object edP: TEdit
    Left = 39
    Top = 21
    Width = 121
    Height = 27
    NumbersOnly = True
    TabOrder = 0
  end
  object edN: TEdit
    Left = 39
    Top = 54
    Width = 121
    Height = 27
    NumbersOnly = True
    TabOrder = 1
  end
  object btCalc: TButton
    Left = 166
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btCalcClick
  end
  object btLimpar: TButton
    Left = 299
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = btLimparClick
  end
  object btSair: TButton
    Left = 380
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = btSairClick
  end
  object Button1: TButton
    Left = 200
    Top = 87
    Width = 93
    Height = 25
    Caption = 'Par/'#205'mpar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object btGraf: TButton
    Left = 104
    Top = 87
    Width = 90
    Height = 25
    Caption = 'Gr'#225'ficos'
    TabOrder = 6
    OnClick = btGrafClick
  end
end
