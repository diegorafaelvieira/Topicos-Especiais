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
    Left = 40
    Top = 33
    Width = 46
    Height = 13
    Caption = 'Tabuada:'
  end
  object Label2: TLabel
    Left = 216
    Top = 8
    Width = 65
    Height = 13
    Caption = 'TABUADA DO'
  end
  object lbTab: TLabel
    Left = 287
    Top = 8
    Width = 3
    Height = 13
  end
  object btSair: TButton
    Left = 56
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = btSairClick
  end
  object btCalcular: TButton
    Left = 56
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btCalcularClick
  end
  object edTab: TEdit
    Left = 92
    Top = 27
    Width = 53
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object memoTabuada: TMemo
    Left = 168
    Top = 27
    Width = 233
    Height = 151
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
