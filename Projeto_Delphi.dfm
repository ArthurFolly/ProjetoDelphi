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
    object IncluirAluno: TPanel
      Left = 0
      Top = 135
      Width = 281
      Height = 314
      Color = 12615680
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
        Top = 191
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
        Top = 95
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
        Top = 218
        Width = 241
        Height = 23
        TabOrder = 0
        TextHint = 'Escreva o codigo'
      end
      object EditNome: TEdit
        Left = 24
        Top = 127
        Width = 241
        Height = 23
        TabOrder = 1
        TextHint = 'Escreva o seu nome'
      end
      object Incluir: TButton
        Left = 104
        Top = 264
        Width = 75
        Height = 25
        Caption = 'Incluir'
        TabOrder = 2
        OnClick = IncluirClick
      end
    end
    object IncluirProfessor: TPanel
      Left = 303
      Top = 135
      Width = 298
      Height = 314
      Color = 12615680
      ParentBackground = False
      TabOrder = 1
      object TextoPainelProf: TLabel
        Left = 48
        Top = 39
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
        Top = 88
        Width = 127
        Height = 23
        Caption = 'Nome Completo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object CPF: TLabel
        Left = 24
        Top = 144
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
        Top = 200
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
        Top = 115
        Width = 241
        Height = 23
        TabOrder = 0
        TextHint = 'Escreva o seu nome'
      end
      object EditCPF: TEdit
        Left = 24
        Top = 171
        Width = 241
        Height = 23
        TabOrder = 1
        TextHint = 'Escreva seu CPF'
      end
      object EditCodigoPF: TEdit
        Left = 24
        Top = 227
        Width = 241
        Height = 23
        TabOrder = 2
        TextHint = 'Escreva o seu codigo'
      end
      object IncluirPF: TButton
        Left = 104
        Top = 265
        Width = 75
        Height = 25
        Caption = 'Incluir'
        TabOrder = 3
        OnClick = IncluirPFClick
      end
    end
    object PainelTurmas: TPanel
      Left = 632
      Top = 135
      Width = 241
      Height = 314
      Color = 12615680
      ParentBackground = False
      TabOrder = 2
      object Turmas: TLabel
        Left = 32
        Top = 40
        Width = 168
        Height = 28
        Caption = 'Inclus'#227'o De Turmas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 88
        Width = 49
        Height = 23
        Caption = 'Turma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object CodigoProfessor: TLabel
        Left = 16
        Top = 154
        Width = 130
        Height = 23
        Caption = 'Codigo Professor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object CodigoEstudante: TLabel
        Left = 16
        Top = 208
        Width = 136
        Height = 23
        Caption = 'Codigo Estudante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object EditTurma: TEdit
        Left = 16
        Top = 117
        Width = 201
        Height = 23
        TabOrder = 0
        TextHint = 'Codigo da turma'
      end
      object EditCodigoPFTurma: TEdit
        Left = 16
        Top = 179
        Width = 201
        Height = 23
        TabOrder = 1
        TextHint = 'Codigo do Professor'
      end
      object EditEstudante: TEdit
        Left = 16
        Top = 235
        Width = 201
        Height = 23
        TabOrder = 2
        TextHint = 'Codigo Do Estudante'
      end
    end
    object Button1: TButton
      Left = 712
      Top = 399
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 3
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
