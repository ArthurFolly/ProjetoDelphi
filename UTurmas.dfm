object FTurmas: TFTurmas
  Left = 0
  Top = 0
  Caption = 'FTurmas'
  ClientHeight = 675
  ClientWidth = 1119
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel2: TPanel
    Left = 8
    Top = 24
    Width = 1071
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
      Height = 23
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
      Height = 23
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
      Height = 23
      TabOrder = 6
      TextHint = 'Codigo Professor'
    end
  end
end
