program SistemaAcademicoV2;

uses
  Vcl.Forms,
  Projeto_Delphi in 'Projeto_Delphi.pas' {Form1},
  Pagina2 in 'Pagina2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
