object FMatriculas: TFMatriculas
  Left = 0
  Top = 0
  Caption = 'FMatriculas'
  ClientHeight = 670
  ClientWidth = 1133
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 36
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
      Height = 23
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
      Height = 23
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
      Height = 23
      TabOrder = 6
      TextHint = 'Codigo Turma'
    end
  end
end
