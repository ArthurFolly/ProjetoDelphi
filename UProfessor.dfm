object FProfessores: TFProfessores
  Left = 280
  Top = 140
  Caption = 'Professores'
  ClientHeight = 360
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object edtCodigo: TEdit
    Left = 24
    Top = 16
    Width = 160
    Height = 21
    TabOrder = 0
    TextHint = 'C'#195#179'digo'
  end
  object edtNome: TEdit
    Left = 24
    Top = 52
    Width = 390
    Height = 21
    TabOrder = 1
    TextHint = 'Nome'
  end
  object edtCPF: TEdit
    Left = 24
    Top = 88
    Width = 160
    Height = 21
    TabOrder = 2
    TextHint = 'CPF'
  end
  object btnAdicionar: TButton
    Left = 24
    Top = 128
    Width = 90
    Height = 28
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btnAdicionarClick
  end
  object btnEditar: TButton
    Left = 180
    Top = 128
    Width = 90
    Height = 28
    Caption = 'Editar'
    TabOrder = 4
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 324
    Top = 128
    Width = 90
    Height = 28
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btnExcluirClick
  end
  object lbProfessores: TListBox
    Left = 24
    Top = 168
    Width = 390
    Height = 168
    ItemHeight = 13
    TabOrder = 6
    OnClick = lbProfessoresClick
  end
end
