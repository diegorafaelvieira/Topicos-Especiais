object frmEx1: TfrmEx1
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 1'
  ClientHeight = 387
  ClientWidth = 692
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
    Left = 344
    Top = 21
    Width = 27
    Height = 13
    Caption = 'Pares'
  end
  object Label2: TLabel
    Left = 348
    Top = 119
    Width = 39
    Height = 13
    Caption = #205'mpares'
  end
  object Label3: TLabel
    Left = 344
    Top = 216
    Width = 50
    Height = 13
    Caption = 'Diferentes'
  end
  object btSair: TButton
    Left = 312
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = btSairClick
  end
  object sgMat: TStringGrid
    Left = 24
    Top = 24
    Width = 305
    Height = 257
    ColCount = 9
    DefaultColWidth = 32
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 1
  end
  object btExecutar: TButton
    Left = 152
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btExecutarClick
  end
  object sgPar: TStringGrid
    Left = 344
    Top = 40
    Width = 320
    Height = 49
    DefaultColWidth = 32
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 3
  end
  object sgImpar: TStringGrid
    Left = 344
    Top = 138
    Width = 320
    Height = 46
    ColCount = 1
    DefaultColWidth = 32
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 4
  end
  object sgDif: TStringGrid
    Left = 344
    Top = 235
    Width = 320
    Height = 46
    DefaultColWidth = 32
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 5
  end
end
