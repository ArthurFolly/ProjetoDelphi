object FDisciplinas: TFDisciplinas
  Left = 0
  Top = 0
  Caption = 'FDisciplinas'
  ClientHeight = 633
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = -1
    Top = 24
    Width = 1115
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
      Height = 23
      TabOrder = 0
      TextHint = 'Codigo'
    end
    object EditNomeMateria: TEdit
      Left = 128
      Top = 261
      Width = 249
      Height = 23
      TabOrder = 1
      TextHint = 'Nome d'#225' materia'
    end
    object BtoAdicionar: TButton
      Left = 136
      Top = 448
      Width = 193
      Height = 57
      Caption = 'Adicionar'
      TabOrder = 2
    end
    object BtoEditar: TButton
      Left = 504
      Top = 448
      Width = 169
      Height = 57
      Caption = 'Editar'
      TabOrder = 3
    end
    object BtoExcluir: TButton
      Left = 864
      Top = 448
      Width = 169
      Height = 57
      Caption = 'Excluir'
      TabOrder = 4
    end
    object ListBox1: TListBox
      Left = 592
      Top = 136
      Width = 409
      Height = 265
      ItemHeight = 15
      TabOrder = 5
    end
  end
end
