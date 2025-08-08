object FEstudantes: TFEstudantes
  Left = 0
  Top = 0
  Caption = 'FEstudantes'
  ClientHeight = 600
  ClientWidth = 1085
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelEstudante: TPanel
    Left = 8
    Top = 8
    Width = 1049
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
    object edtCodigo: TEdit
      Left = 128
      Top = 160
      Width = 249
      Height = 23
      TabOrder = 0
      TextHint = 'Codigo'
    end
    object edtNome: TEdit
      Left = 128
      Top = 285
      Width = 249
      Height = 23
      TabOrder = 1
      TextHint = 'Coloque seu nome completo'
    end
    object btnAdicionar: TButton
      Left = 128
      Top = 448
      Width = 193
      Height = 57
      Caption = 'Adicionar'
      TabOrder = 2
    end
    object btnEditar: TButton
      Left = 368
      Top = 448
      Width = 169
      Height = 57
      Caption = 'Editar'
      TabOrder = 3
    end
    object btnExcluir: TButton
      Left = 568
      Top = 448
      Width = 169
      Height = 57
      Caption = 'Excluir'
      TabOrder = 4
    end
    object lbEstudantes: TListBox
      Left = 592
      Top = 96
      Width = 377
      Height = 257
      ItemHeight = 15
      TabOrder = 5
    end
    object btnListar: TButton
      Left = 776
      Top = 448
      Width = 169
      Height = 57
      Caption = 'Listar'
      TabOrder = 6
    end
  end
end
