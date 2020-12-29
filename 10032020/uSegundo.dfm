object frmLacos: TfrmLacos
  Left = 0
  Top = 0
  Caption = 'Trabalhando La'#231'os de Repeti'#231#227'o'
  ClientHeight = 313
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lstFor: TListBox
    Left = 7
    Top = 38
    Width = 121
    Height = 217
    ItemHeight = 13
    TabOrder = 0
  end
  object lstRepeat: TListBox
    Left = 134
    Top = 38
    Width = 121
    Height = 217
    ItemHeight = 13
    TabOrder = 1
  end
  object lstWhile: TListBox
    Left = 261
    Top = 38
    Width = 121
    Height = 217
    ItemHeight = 13
    TabOrder = 2
  end
  object bTFor: TButton
    Left = 7
    Top = 7
    Width = 75
    Height = 25
    Caption = 'For-To-Do'
    TabOrder = 3
    OnClick = bTForClick
  end
  object btRepeat: TButton
    Left = 134
    Top = 7
    Width = 75
    Height = 25
    Caption = 'Repeat-Until'
    TabOrder = 4
    OnClick = btRepeatClick
  end
  object btWhile: TButton
    Left = 261
    Top = 7
    Width = 75
    Height = 25
    Caption = 'While-Do'
    TabOrder = 5
    OnClick = btWhileClick
  end
  object pbFor: TProgressBar
    Left = 7
    Top = 261
    Width = 121
    Height = 17
    Min = 1
    Position = 1
    Smooth = True
    MarqueeInterval = 1
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 434
    Top = 261
    Width = 75
    Height = 47
    Kind = bkClose
    Layout = blGlyphTop
    NumGlyphs = 2
    TabOrder = 7
  end
  object lstPrimos: TListBox
    Left = 388
    Top = 38
    Width = 121
    Height = 217
    ItemHeight = 13
    TabOrder = 8
  end
  object bt100Primos: TButton
    Left = 388
    Top = 7
    Width = 121
    Height = 25
    Caption = '100 primeiros Primos'
    TabOrder = 9
    OnClick = bt100PrimosClick
  end
end
