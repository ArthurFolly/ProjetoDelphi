unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Grids, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TForm2 = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    StringGrid4: TStringGrid;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
