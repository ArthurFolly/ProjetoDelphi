unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Grids, Data.FMTBcd, Data.DB, Data.SqlExpr,uEstudante,uDisciplinas,uMatriculas,uProfessor,uTurmas, Vcl.Menus;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Professores1: TMenuItem;
    Disciplinas1: TMenuItem;
    urmas1: TMenuItem;
    Matrculas1: TMenuItem;
    Matrculas2: TMenuItem;
    Sair1: TMenuItem;
    Sobre1: TMenuItem;
    procedure Cadastro2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}







procedure TFMain.Cadastro2Click(Sender: TObject);
begin
  Application.CreateForm(TFEstudantes, FEstudantes);
  FEstudantes.ShowModal;
  FEstudantes.Free;
end;

end.
