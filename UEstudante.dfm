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
  OnShow = FormShow
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
    Left = 32
    Top = 88
    Width = 90
    Height = 28
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btnAdicionarClick
  end
  object btnEditar: TButton
    Left = 168
    Top = 88
    Width = 90
    Height = 28
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 286
    Top = 88
    Width = 90
    Height = 28
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object lbEstudantes: TListBox
    Left = 8
    Top = 136
    Width = 402
    Height = 249
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 5
  end
end
