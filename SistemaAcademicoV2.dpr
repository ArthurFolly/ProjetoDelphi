program SistemaAcademicoV2;

uses
  Vcl.Forms,
  Projeto_Delphi in 'Projeto_Delphi.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
