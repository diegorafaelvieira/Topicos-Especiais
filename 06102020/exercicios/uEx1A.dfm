object frm1A: Tfrm1A
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 1 A'
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
  object btSair: TButton
    Left = 168
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = btSairClick
  end
  object btWhileDo: TButton
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = 'While-Do'
    TabOrder = 1
    OnClick = btWhileDoClick
  end
  object memoWhileDo: TMemo
    Left = 32
    Top = 47
    Width = 121
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object btForToDo: TButton
    Left = 224
    Top = 16
    Width = 75
    Height = 25
    Caption = 'For-To-Do'
    TabOrder = 3
    OnClick = btForToDoClick
  end
  object memoForToDo: TMemo
    Left = 225
    Top = 49
    Width = 128
    Height = 89
    TabOrder = 4
  end
end
