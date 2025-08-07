unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Grids, Data.FMTBcd, Data.DB, Data.SqlExpr,UEstudante;

type
  TFMain = class(TForm)
    painelpagina2: TPanel;
    Aluno: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    PanelEstudante: TPanel;
    Codigo: TEdit;
    StringGrid1: TStringGrid;
    NomeAluno: TEdit;
    adicionar: TButton;
    Editar: TButton;
    Excluir: TButton;
    PageControl: TPageControl;
    CodigoAluno: TLabel;
    Nome: TLabel;
    PanelProfessor: TPanel;
    AdicionarPF: TButton;
    EditCodigoPF: TEdit;
    CodigoPF: TLabel;
    ExcluirPF: TButton;
    EditarPF: TButton;
    NomePF: TLabel;
    EditCPF: TEdit;
    StringGrid3: TStringGrid;
    EditNomePF: TEdit;
    Turmas: TTabSheet;
    CPF: TLabel;
    Panel1: TPanel;
    CodigoMateria: TLabel;
    NomeMateria: TLabel;
    EditCodigoDisciplina: TEdit;
    StringGrid2: TStringGrid;
    EditNomeMateria: TEdit;
    BtoAdicionar: TButton;
    BtoEditar: TButton;
    BtoExcluir: TButton;
    Matriculas: TTabSheet;
    Panel2: TPanel;
    CodigoTurma: TLabel;
    CodigoProfessor: TLabel;
    CodigoEstudante: TLabel;
    BtoAdcTurma: TButton;
    EditCodigoTrm: TEdit;
    BtoEditarTurma: TButton;
    BtoExcluirTurma: TButton;
    EditEstudanteTurma: TEdit;
    StringGrid4: TStringGrid;
    EditCodigoPFTurma: TEdit;
    Panel3: TPanel;
    CodigoMatricula: TLabel;
    CodigoDaTurma: TLabel;
    CodigoEstudanteTurma: TLabel;
    BtoAdcMatriculas: TButton;
    EditCodigoMatricula: TEdit;
    BtoExcluirMatriculas: TButton;
    BtoEditarMatriculas: TButton;
    EditCodigoEstudante: TEdit;
    StringGrid5: TStringGrid;
    EditCodigoTurma: TEdit;
    procedure adicionarClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure AdicionarPFClick(Sender: TObject);
    procedure EditarPFClick(Sender: TObject);
    procedure ExcluirPFClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.adicionarClick(Sender: TObject);
begin

FEstudantes  := FEstudantes.Create(Self);
FEstudantes.Show;
FEstudantes.Hide;

end;

procedure TFMain.AdicionarPFClick(Sender: TObject);
begin
FEstudantes  := FEstudantes.Create(Self);
FEstudantes.Show;
FEstudantes.Hide;
end;

procedure TFMain.EditarClick(Sender: TObject);
begin

FEstudantes  := FEstudantes.Create(Self);
FEstudantes.Show;
FEstudantes.Hide;

end;

procedure TFMain.EditarPFClick(Sender: TObject);
begin
FEstudantes  := FEstudantes.Create(Self);
FEstudantes.Show;
FEstudantes.Hide;
end;

procedure TFMain.ExcluirClick(Sender: TObject);
begin
FEstudantes  := FEstudantes.Create(Self);
FEstudantes.Show;
FEstudantes.Hide;
end;

procedure TFMain.ExcluirPFClick(Sender: TObject);
begin
FEstudantes  := FEstudantes.Create(Self);
FEstudantes.Show;
FEstudantes.Hide;
end;

end.
