object FProfessor: TFProfessor
  Left = 0
  Top = 0
  Caption = 'FProfessor'
  ClientHeight = 669
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelEstudante: TPanel
    Left = 5
    Top = 40
    Width = 1105
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
      Height = 23
      TabOrder = 0
      TextHint = 'Codigo'
    end
    object StringGrid1: TStringGrid
      Left = 496
      Top = 109
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
      Height = 23
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
    end
    object Editar: TButton
      Left = 504
      Top = 448
      Width = 169
      Height = 57
      Caption = 'Editar'
      TabOrder = 4
    end
    object Excluir: TButton
      Left = 864
      Top = 448
      Width = 169
      Height = 57
      Caption = 'Excluir'
      TabOrder = 5
    end
  end
end
