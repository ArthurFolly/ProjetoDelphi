object FProfessores: TFProfessores
  Left = 0
  Top = 0
  Caption = 'FProfessor'
  ClientHeight = 399
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    411
    399)
  TextHeight = 15
  object btnAdicionar: TButton
    Left = 16
    Top = 111
    Width = 90
    Height = 28
    Caption = 'Adicionar'
    TabOrder = 0
  end
  object btnEditar: TButton
    Left = 112
    Top = 111
    Width = 90
    Height = 28
    Caption = 'Editar'
    TabOrder = 1
  end
  object btnExcluir: TButton
    Left = 208
    Top = 111
    Width = 90
    Height = 28
    Caption = 'Excluir'
    TabOrder = 2
  end
  object btnListar: TButton
    Left = 304
    Top = 111
    Width = 90
    Height = 28
    Caption = 'Listar'
    TabOrder = 3
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 8
    Width = 120
    Height = 23
    TabOrder = 4
    TextHint = 'C'#243'digo'
  end
  object edtNome: TEdit
    Left = 8
    Top = 37
    Width = 360
    Height = 23
    TabOrder = 5
    TextHint = 'Nome'
  end
  object lbEstudantes: TListBox
    Left = 8
    Top = 156
    Width = 395
    Height = 235
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 6
  end
  object edtCPF: TEdit
    Left = 8
    Top = 66
    Width = 121
    Height = 23
    TabOrder = 7
    TextHint = 'Digite seu CPF'
  end
end
