program SistemaAcademicoV2;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FMain},
  uEstudante in 'uEstudante.pas' {FEstudantes},
  uProfessor in 'uProfessor.pas' {FProfessor},
  uDisciplinas in 'uDisciplinas.pas' {FDisciplinas},
  uTurmas in 'uTurmas.pas' {FTurmas},
  uMatriculas in 'uMatriculas.pas' {FMatriculas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFEstudantes, FEstudantes);
  Application.CreateForm(TFProfessor, FProfessor);
  Application.CreateForm(TFDisciplinas, FDisciplinas);
  Application.CreateForm(TFTurmas, FTurmas);
  Application.CreateForm(TFMatriculas, FMatriculas);
  Application.Run;
end.
