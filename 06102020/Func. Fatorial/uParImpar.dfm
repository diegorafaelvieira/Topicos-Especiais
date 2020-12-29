object frmParImpar: TfrmParImpar
  Left = 0
  Top = 0
  Caption = 'Verifica se n'#250'mero '#233' Par/'#205'mpar'
  ClientHeight = 202
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
  object lbRes: TLabel
    Left = 288
    Top = 64
    Width = 3
    Height = 13
  end
  object btSair: TButton
    Left = 364
    Top = 169
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = btSairClick
  end
  object btParImpar: TButton
    Left = 200
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Par/'#205'mpar ?'
    TabOrder = 1
    OnClick = btParImparClick
  end
  object edNum: TEdit
    Left = 64
    Top = 58
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
