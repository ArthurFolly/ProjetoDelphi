unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.UITypes, // Dialog types
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls,  // <- garante registro do TPanel cedo
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids,
  Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.Menus;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;  // Estudantes
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

// >>> Coloque as units dos forms AQUI no uses da IMPLEMENTATION <<<
// (assim o Main não fica pesado na interface e evitamos ordem ruim de init)
uses
  uEstudante, uDisciplinas, uMatriculas, uProfessor, uTurmas;

procedure TFMain.Disciplinas1Click(Sender: TObject);
var
  LForm: TFDisciplinas;
begin
  // cria, mostra modal e destrói com segurança
  LForm := TFDisciplinas.Create(Self);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TFMain.Estudante2Click(Sender: TObject);
var
  LForm: TFEstudantes;
begin
  // IMPORTANTE: Vcl.ExtCtrls já está no uses (interface) -> TPanel registrado
  LForm := TFEstudantes.Create(Self);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TFMain.Matrculas1Click(Sender: TObject);
var
  LForm: TFMatriculas;
begin
  LForm := TFMatriculas.Create(Self);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TFMain.Professores1Click(Sender: TObject);
var
  LForm: TFProfessor;
begin
  LForm := TFProfessor.Create(Self);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TFMain.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFMain.urmas1Click(Sender: TObject);
var
  LForm: TFTurmas;
begin
  LForm := TFTurmas.Create(Self);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

end.

