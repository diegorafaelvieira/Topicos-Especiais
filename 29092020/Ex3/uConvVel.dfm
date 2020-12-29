object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Converte velocidade'
  ClientHeight = 79
  ClientWidth = 535
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
    Top = 32
    Width = 51
    Height = 13
    Caption = 'Velocidade'
  end
  object lbRes: TLabel
    Left = 305
    Top = 32
    Width = 3
    Height = 13
  end
  object edVel: TEdit
    Left = 97
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btKmh2ms: TButton
    Left = 224
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Km/h > m/s'
    TabOrder = 1
    OnClick = btKmh2msClick
  end
  object btms2kmh: TButton
    Left = 224
    Top = 39
    Width = 75
    Height = 25
    Caption = 'm/s > Km/h'
    TabOrder = 2
    OnClick = btms2kmhClick
  end
end
