object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 186
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbRotulo: TLabel
    Left = 112
    Top = 152
    Width = 39
    Height = 13
    Caption = 'lbRotulo'
    Color = clRed
    ParentColor = False
    Transparent = False
    OnClick = lbRotuloClick
  end
  object Button1: TButton
    Left = 40
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Vermelho'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Verde'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Azul'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 152
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Vermelho'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 152
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Verde'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 152
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Azul'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 256
    Top = 32
    Width = 75
    Height = 25
    Caption = '8'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 256
    Top = 71
    Width = 75
    Height = 25
    Caption = '14'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 256
    Top = 112
    Width = 75
    Height = 25
    Caption = '20'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 353
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Tahoma'
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 353
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Arial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button11Click
  end
  object btCourrierNew: TButton
    Left = 353
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Courier New'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = btCourrierNewClick
  end
end
