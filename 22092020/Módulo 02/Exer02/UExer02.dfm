object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object lbTexto: TLabel
    Left = 149
    Top = 136
    Width = 3
    Height = 13
  end
  object edTexto: TEdit
    Left = 149
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btMoveTexto: TButton
    Left = 160
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Move texto'
    TabOrder = 1
    OnClick = btMoveTextoClick
  end
end
