object FEstudantes: TFEstudantes
  Left = 0
  Top = 0
  Caption = 'Estudantes'
  ClientHeight = 401
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    418
    401)
  TextHeight = 15
  object edtCodigo: TEdit
    Left = 16
    Top = 16
    Width = 120
    Height = 23
    TabOrder = 0
    TextHint = 'C'#243'digo'
  end
  object edtNome: TEdit
    Left = 16
    Top = 48
    Width = 360
    Height = 23
    TabOrder = 1
    TextHint = 'Nome'
  end
  object btnAdicionar: TButton
    Left = 16
    Top = 88
    Width = 90
    Height = 28
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btnAdicionarClick
  end
  object btnEditar: TButton
    Left = 112
    Top = 88
    Width = 90
    Height = 28
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 208
    Top = 88
    Width = 90
    Height = 28
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object btnListar: TButton
    Left = 304
    Top = 88
    Width = 90
    Height = 28
    Caption = 'Listar'
    TabOrder = 5
    OnClick = btnListarClick
  end
  object lbEstudantes: TListBox
    Left = 8
    Top = 136
    Width = 402
    Height = 249
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 6
  end
end
