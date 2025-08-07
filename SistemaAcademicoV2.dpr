program SistemaAcademicoV2;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FMain},
  UEstudante in 'UEstudante.pas' {FEstudantes},
  UProfessor in 'UProfessor.pas' {FProfessor},
  UDisciplinas in 'UDisciplinas.pas' {FDisciplinas},
  UTurmas in 'UTurmas.pas' {FTurmas},
  UMatriculas in 'UMatriculas.pas' {FMatriculas};

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
