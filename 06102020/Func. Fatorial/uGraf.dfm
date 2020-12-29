object frmGraf: TfrmGraf
  Left = 398
  Top = 133
  BorderStyle = bsSingle
  Caption = 'Gr'#225'ficos'
  ClientHeight = 532
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClick = FormClick
  PixelsPerInch = 96
  TextHeight = 13
  object btWhileDo: TButton
    Left = 32
    Top = 16
    Width = 97
    Height = 25
    Caption = 'While-Do'
    TabOrder = 0
    OnClick = btWhileDoClick
  end
  object btrRepeatUntil: TButton
    Left = 144
    Top = 16
    Width = 105
    Height = 25
    Caption = 'Repeat-Until'
    TabOrder = 1
    OnClick = btrRepeatUntilClick
  end
end
