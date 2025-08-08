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
    procedure Estudante2Click(Sender: TObject);
    procedure Professores1Click(Sender: TObject);
    procedure Disciplinas1Click(Sender: TObject);
    procedure urmas1Click(Sender: TObject);
    procedure Matrculas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}







procedure TFMain.Disciplinas1Click(Sender: TObject);
begin
  Application.CreateForm(TFDisciplinas, FDisciplinas);
  FDisciplinas.ShowModal;
  FDisciplinas.Free;
end;

procedure TFMain.Estudante2Click(Sender: TObject);
begin
  Application.CreateForm(TFEstudantes, FEstudantes);
  FEstudantes.ShowModal;
  FEstudantes.Free;
end;

procedure TFMain.Matrculas1Click(Sender: TObject);
begin
  Application.CreateForm(TFMatriculas, FMatriculas);
  FMatriculas.ShowModal;
  FMatriculas.Free;
end;

procedure TFMain.Professores1Click(Sender: TObject);
begin
  Application.CreateForm(TFProfessor, FProfessor);
  FProfessor.ShowModal;
  FProfessor.Free;
end;

procedure TFMain.Sair1Click(Sender: TObject);
begin
  Application.Terminate;

end;

procedure TFMain.urmas1Click(Sender: TObject);
begin
  Application.CreateForm(TFTurmas, FTurmas);
  FTurmas.ShowModal;
  FTurmas.Free;
end;

end.
