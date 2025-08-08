object FEstudantes: TFEstudantes
  Left = 0
  Top = 0
  Caption = 'Estudantes'
  ClientHeight = 350
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object edtCodigo: TEdit
    Left = 24
    Top = 24
    Width = 120
    Height = 23
    TabOrder = 0
    TextHint = 'C'#195#179'digo'
  end
  object edtNome: TEdit
    Left = 24
    Top = 60
    Width = 378
    Height = 23
    TabOrder = 1
    TextHint = 'Nome'
  end
  object btnAdicionar: TButton
    Left = 24
    Top = 100
    Width = 90
    Height = 28
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btnAdicionarClick
  end
  object btnEditar: TButton
    Left = 120
    Top = 100
    Width = 90
    Height = 28
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 216
    Top = 100
    Width = 90
    Height = 28
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object btnListar: TButton
    Left = 312
    Top = 100
    Width = 90
    Height = 28
    Caption = 'Listar'
    TabOrder = 5
    OnClick = btnListarClick
  end
  object lbEstudantes: TListBox
    Left = 424
    Top = 32
    Width = 296
    Height = 300
    ItemHeight = 15
    TabOrder = 6
  end
end
