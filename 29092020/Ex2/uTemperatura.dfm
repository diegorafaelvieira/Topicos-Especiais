object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Converte Temperatura'
  ClientHeight = 72
  ClientWidth = 447
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
    Left = 12
    Top = 27
    Width = 62
    Height = 13
    Caption = 'Temperatura'
  end
  object lbRes: TLabel
    Left = 289
    Top = 27
    Width = 11
    Height = 13
    Caption = '= '
  end
  object edTemp: TEdit
    Left = 81
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Fah2Cel: TButton
    Left = 208
    Top = 8
    Width = 75
    Height = 25
    Caption = 'F'#186' --> C'#186
    TabOrder = 1
    OnClick = Fah2CelClick
  end
  object Cel2Fah: TButton
    Left = 208
    Top = 39
    Width = 75
    Height = 25
    Caption = 'C'#186' --> F'#186
    TabOrder = 2
    OnClick = Cel2FahClick
  end
end
