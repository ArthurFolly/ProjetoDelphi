program SistemaAcademicoV2;

uses
  Vcl.Forms,
  Vcl.ExtCtrls,     // <- garante que TPanel esteja registrado ao iniciar o app
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
  Application.CreateForm(TFMain, FMain); // só o principal
  Application.CreateForm(TFProfessores, FProfessores);
  Application.CreateForm(TFEstudantes, FEstudantes);
  Application.CreateForm(TFTurmas, FTurmas);
  Application.CreateForm(TFMatriculas, FMatriculas);
  Application.CreateForm(TFDisciplinas, FDisciplinas);
  Application.Run;
end.

