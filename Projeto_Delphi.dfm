object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 543
  ClientWidth = 1133
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Painel: TPanel
    Left = 8
    Top = 8
    Width = 1129
    Height = 545
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object Titulo: TLabel
      Left = 456
      Top = 32
      Width = 207
      Height = 32
      Caption = 'Sistema Academico'
      Color = 11118807
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Button2: TButton
    Left = 1031
    Top = 500
    Width = 75
    Height = 25
    Caption = 'Page2'
    TabOrder = 1
  end
end
