object FMain: TFMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Sistema Academico'
  ClientHeight = 601
  ClientWidth = 1120
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 552
    Top = 304
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cadastro2: TMenuItem
        Caption = 'Estudantes'#10#10
        OnClick = Estudante2Click
      end
      object Professores1: TMenuItem
        Caption = 'Professores'
        OnClick = Professores1Click
      end
      object Disciplinas1: TMenuItem
        Caption = 'Disciplinas'
        OnClick = Disciplinas1Click
      end
      object urmas1: TMenuItem
        Caption = 'Turmas'
        OnClick = urmas1Click
      end
      object Matrculas1: TMenuItem
        Caption = 'Matr'#237'culas'
        OnClick = Matrculas1Click
      end
      object Matrculas2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
    end
  end
end
