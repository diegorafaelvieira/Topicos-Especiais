object frmRepete: TfrmRepete
  Left = 0
  Top = 0
  Caption = 'Mostra n'#250'meros'
  ClientHeight = 187
  ClientWidth = 284
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
    Top = 11
    Width = 21
    Height = 13
    Caption = 'Num'
  end
  object edNum: TEdit
    Left = 48
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 175
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Repete'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 48
    Top = 35
    Width = 121
    Height = 134
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
