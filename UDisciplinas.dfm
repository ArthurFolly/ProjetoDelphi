object FDisciplinas: TFDisciplinas
  Left = 0
  Top = 0
  Caption = 'FDisciplinas'
  ClientHeight = 373
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    447
    373)
  TextHeight = 15
  object btnAdicionar: TButton
    Left = 16
    Top = 80
    Width = 90
    Height = 28
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = btnAdicionarClick
  end
  object btnEditar: TButton
    Left = 168
    Top = 80
    Width = 90
    Height = 28
    Caption = 'Editar'
    TabOrder = 1
  end
  object btnExcluir: TButton
    Left = 320
    Top = 80
    Width = 90
    Height = 28
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = btnExcluirClick
  end
  object edtCodigo: TEdit
    Left = 16
    Top = 8
    Width = 120
    Height = 23
    TabOrder = 3
    TextHint = 'C'#243'digo'
  end
  object edtNome: TEdit
    Left = 16
    Top = 40
    Width = 360
    Height = 23
    TabOrder = 4
    TextHint = 'Nome'
  end
  object lbDisciplinas: TListBox
    Left = 8
    Top = 114
    Width = 402
    Height = 249
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 5
    OnClick = lbDisciplinasClick
  end
end
