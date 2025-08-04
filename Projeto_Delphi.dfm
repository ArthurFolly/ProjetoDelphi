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
    Color = clMaroon
    ParentBackground = False
    TabOrder = 0
    object Titulo: TLabel
      Left = 456
      Top = 32
      Width = 207
      Height = 32
      Caption = 'Sistema Academico'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object IncluirAluno: TPanel
      Left = 136
      Top = 96
      Width = 297
      Height = 385
      Color = clMaroon
      ParentBackground = False
      TabOrder = 0
      object Alunos: TLabel
        Left = 56
        Top = 40
        Width = 173
        Height = 30
        Caption = 'Inclus'#227'o de alunos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Codigo: TLabel
        Left = 24
        Top = 223
        Width = 50
        Height = 21
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Nome: TLabel
        Left = 24
        Top = 114
        Width = 115
        Height = 21
        Caption = 'Nome Completo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object EditCodigo: TEdit
        Left = 24
        Top = 250
        Width = 241
        Height = 23
        TabOrder = 0
        TextHint = 'Escreva o codigo'
      end
      object EditNome: TEdit
        Left = 24
        Top = 141
        Width = 241
        Height = 23
        TabOrder = 1
        TextHint = 'Escreva o seu nome'
      end
      object Incluir: TButton
        Left = 104
        Top = 312
        Width = 75
        Height = 25
        Caption = 'Incluir'
        TabOrder = 2
        OnClick = IncluirClick
      end
    end
    object IncluirProfessor: TPanel
      Left = 688
      Top = 96
      Width = 297
      Height = 385
      Color = clMaroon
      ParentBackground = False
      TabOrder = 1
      object TextoPainelProf: TLabel
        Left = 48
        Top = 40
        Width = 198
        Height = 30
        Caption = 'Inclus'#227'o de Professor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 24
        Top = 104
        Width = 115
        Height = 21
        Caption = 'Nome Completo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object CPF: TLabel
        Left = 24
        Top = 179
        Width = 27
        Height = 21
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object CodigoPF: TLabel
        Left = 24
        Top = 241
        Width = 50
        Height = 21
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object EditNomePF: TEdit
        Left = 24
        Top = 132
        Width = 241
        Height = 23
        TabOrder = 0
        TextHint = 'Escreva o seu nome'
      end
      object EditCPF: TEdit
        Left = 24
        Top = 206
        Width = 241
        Height = 23
        TabOrder = 1
        TextHint = 'Escreva seu CPF'
      end
      object EditCodigoPF: TEdit
        Left = 24
        Top = 272
        Width = 241
        Height = 23
        TabOrder = 2
        TextHint = 'Escreva o seu codigo'
      end
      object Button1: TButton
        Left = 112
        Top = 328
        Width = 75
        Height = 25
        Caption = 'Incluir'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
end
