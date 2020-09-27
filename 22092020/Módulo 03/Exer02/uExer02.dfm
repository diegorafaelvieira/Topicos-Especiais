object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 154
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbRes: TLabel
    Left = 108
    Top = 109
    Width = 21
    Height = 13
  end
  object edValor: TEdit
    Left = 80
    Top = 32
    Width = 49
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object btCelsius: TButton
    Left = 168
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Celsius'
    TabOrder = 1
    OnClick = btCelsiusClick
  end
  object btFahrenheit: TButton
    Left = 80
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Fahrenheit'
    TabOrder = 2
    OnClick = btFahrenheitClick
  end
end
