object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'FMain'
  ClientHeight = 601
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object painelpagina2: TPanel
    Left = 0
    Top = 5
    Width = 1121
    Height = 596
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 1119
      Height = 594
      ActivePage = Matriculas
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Aluno: TTabSheet
        Caption = 'Aluno'
        object PanelEstudante: TPanel
          Left = 0
          Top = 3
          Width = 1161
          Height = 569
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object CodigoAluno: TLabel
            Left = 128
            Top = 125
            Width = 145
            Height = 25
            Caption = 'Codigo Do Aluno'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Nome: TLabel
            Left = 128
            Top = 254
            Width = 138
            Height = 25
            Caption = 'Nome Completo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Codigo: TEdit
            Left = 128
            Top = 160
            Width = 249
            Height = 33
            TabOrder = 0
            TextHint = 'Codigo'
          end
          object StringGrid1: TStringGrid
            Left = 504
            Top = 125
            Width = 529
            Height = 297
            TabOrder = 1
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object NomeAluno: TEdit
            Left = 128
            Top = 285
            Width = 249
            Height = 33
            TabOrder = 2
            TextHint = 'Coloque seu nome completo'
          end
          object adicionar: TButton
            Left = 128
            Top = 448
            Width = 193
            Height = 57
            Caption = 'Adicionar'
            TabOrder = 3
            OnClick = adicionarClick
          end
          object Editar: TButton
            Left = 504
            Top = 448
            Width = 169
            Height = 57
            Caption = 'Editar'
            TabOrder = 4
            OnClick = EditarClick
          end
          object Excluir: TButton
            Left = 864
            Top = 448
            Width = 169
            Height = 57
            Caption = 'Excluir'
            TabOrder = 5
            OnClick = ExcluirClick
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Professor'
        ImageIndex = 1
        object PanelProfessor: TPanel
          Left = 0
          Top = 1
          Width = 1108
          Height = 550
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object CodigoPF: TLabel
            Left = 136
            Top = 93
            Width = 61
            Height = 25
            Caption = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object NomePF: TLabel
            Left = 136
            Top = 190
            Width = 138
            Height = 25
            Caption = 'Nome Completo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object CPF: TLabel
            Left = 136
            Top = 293
            Width = 32
            Height = 25
            Caption = 'CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object AdicionarPF: TButton
            Left = 136
            Top = 456
            Width = 193
            Height = 57
            Caption = 'Adicionar'
            TabOrder = 0
            OnClick = AdicionarPFClick
          end
          object EditCodigoPF: TEdit
            Left = 136
            Top = 133
            Width = 249
            Height = 33
            TabOrder = 1
            TextHint = 'Escreva o codigo'
          end
          object ExcluirPF: TButton
            Left = 872
            Top = 456
            Width = 169
            Height = 57
            Caption = 'Excluir'
            TabOrder = 2
            OnClick = ExcluirPFClick
          end
          object EditarPF: TButton
            Left = 512
            Top = 456
            Width = 169
            Height = 57
            Caption = 'Editar'
            TabOrder = 3
            OnClick = EditarPFClick
          end
          object EditCPF: TEdit
            Left = 136
            Top = 324
            Width = 249
            Height = 33
            TabOrder = 4
            TextHint = 'Digite seu CPF'
          end
          object StringGrid3: TStringGrid
            Left = 512
            Top = 133
            Width = 529
            Height = 297
            TabOrder = 5
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object EditNomePF: TEdit
            Left = 136
            Top = 221
            Width = 249
            Height = 33
            TabOrder = 6
            TextHint = 'Coloque seu nome completo'
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Disciplinas'
        ImageIndex = 2
        object Panel1: TPanel
          Left = -50
          Top = -15
          Width = 1161
          Height = 569
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object CodigoMateria: TLabel
            Left = 128
            Top = 125
            Width = 159
            Height = 25
            Caption = 'Codigo Da Materia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object NomeMateria: TLabel
            Left = 128
            Top = 230
            Width = 149
            Height = 25
            Caption = 'Nome D'#225' Materia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object EditCodigoDisciplina: TEdit
            Left = 128
            Top = 156
            Width = 249
            Height = 33
            TabOrder = 0
            TextHint = 'Codigo'
          end
          object StringGrid2: TStringGrid
            Left = 504
            Top = 125
            Width = 529
            Height = 297
            TabOrder = 1
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object EditNomeMateria: TEdit
            Left = 128
            Top = 261
            Width = 249
            Height = 33
            TabOrder = 2
            TextHint = 'Nome d'#225' materia'
          end
          object BtoAdicionar: TButton
            Left = 136
            Top = 448
            Width = 193
            Height = 57
            Caption = 'Adicionar'
            TabOrder = 3
          end
          object BtoEditar: TButton
            Left = 504
            Top = 448
            Width = 169
            Height = 57
            Caption = 'Editar'
            TabOrder = 4
          end
          object BtoExcluir: TButton
            Left = 864
            Top = 448
            Width = 169
            Height = 57
            Caption = 'Excluir'
            TabOrder = 5
          end
        end
      end
      object Turmas: TTabSheet
        Caption = 'Turmas'
        ImageIndex = 3
        object Panel2: TPanel
          Left = 3
          Top = 4
          Width = 1108
          Height = 550
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object CodigoTurma: TLabel
            Left = 136
            Top = 93
            Width = 61
            Height = 25
            Caption = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object CodigoProfessor: TLabel
            Left = 136
            Top = 190
            Width = 172
            Height = 25
            Caption = 'Codigo do Professor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object CodigoEstudante: TLabel
            Left = 136
            Top = 293
            Width = 176
            Height = 25
            Caption = 'Codigo do Estudante'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object BtoAdcTurma: TButton
            Left = 144
            Top = 456
            Width = 193
            Height = 57
            Caption = 'Adicionar'
            TabOrder = 0
          end
          object EditCodigoTrm: TEdit
            Left = 136
            Top = 133
            Width = 249
            Height = 33
            TabOrder = 1
            TextHint = 'Escreva o codigo'
          end
          object BtoEditarTurma: TButton
            Left = 872
            Top = 456
            Width = 169
            Height = 57
            Caption = 'Excluir'
            TabOrder = 2
          end
          object BtoExcluirTurma: TButton
            Left = 512
            Top = 456
            Width = 169
            Height = 57
            Caption = 'Editar'
            TabOrder = 3
          end
          object EditEstudanteTurma: TEdit
            Left = 136
            Top = 324
            Width = 249
            Height = 33
            TabOrder = 4
            TextHint = 'Codigo Estudante'
          end
          object StringGrid4: TStringGrid
            Left = 512
            Top = 133
            Width = 529
            Height = 297
            TabOrder = 5
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object EditCodigoPFTurma: TEdit
            Left = 136
            Top = 221
            Width = 249
            Height = 33
            TabOrder = 6
            TextHint = 'Codigo Professor'
          end
        end
      end
      object Matriculas: TTabSheet
        Caption = 'Matriculas'
        ImageIndex = 4
        object Panel3: TPanel
          Left = 3
          Top = 4
          Width = 1108
          Height = 550
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object CodigoMatricula: TLabel
            Left = 136
            Top = 93
            Width = 61
            Height = 25
            Caption = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object CodigoDaTurma: TLabel
            Left = 136
            Top = 190
            Width = 148
            Height = 25
            Caption = 'Codigo Da Turma'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object CodigoEstudanteTurma: TLabel
            Left = 136
            Top = 293
            Width = 149
            Height = 25
            Caption = 'Codigo Estudante'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object BtoAdcMatriculas: TButton
            Left = 144
            Top = 456
            Width = 193
            Height = 57
            Caption = 'Adicionar'
            TabOrder = 0
          end
          object EditCodigoMatricula: TEdit
            Left = 136
            Top = 133
            Width = 249
            Height = 33
            TabOrder = 1
            TextHint = 'Escreva o codigo'
          end
          object BtoExcluirMatriculas: TButton
            Left = 872
            Top = 456
            Width = 169
            Height = 57
            Caption = 'Excluir'
            TabOrder = 2
          end
          object BtoEditarMatriculas: TButton
            Left = 512
            Top = 456
            Width = 169
            Height = 57
            Caption = 'Editar'
            TabOrder = 3
          end
          object EditCodigoEstudante: TEdit
            Left = 136
            Top = 324
            Width = 249
            Height = 33
            TabOrder = 4
            TextHint = 'Codigo Estudante'
          end
          object StringGrid5: TStringGrid
            Left = 512
            Top = 133
            Width = 529
            Height = 297
            TabOrder = 5
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object EditCodigoTurma: TEdit
            Left = 136
            Top = 221
            Width = 249
            Height = 33
            TabOrder = 6
            TextHint = 'Codigo Turma'
          end
        end
      end
    end
  end
end
