unit Projeto_Delphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Pagina2;

type
  TForm1 = class(TForm)
    Painel: TPanel;
    Titulo: TLabel;
    IncluirAluno: TPanel;
    IncluirProfessor: TPanel;
    Alunos: TLabel;
    EditCodigo: TEdit;
    EditNome: TEdit;
    Codigo: TLabel;
    Nome: TLabel;
    Incluir: TButton;
    TextoPainelProf: TLabel;
    EditNomePF: TEdit;
    EditCPF: TEdit;
    EditCodigoPF: TEdit;
    IncluirPF: TButton;
    Label1: TLabel;
    CPF: TLabel;
    CodigoPF: TLabel;
    Button2: TButton;
    PainelTurmas: TPanel;
    Button1: TButton;
    Turmas: TLabel;
    Label2: TLabel;
    EditTurma: TEdit;
    EditCodigoPFTurma: TEdit;
    EditEstudante: TEdit;
    CodigoProfessor: TLabel;
    CodigoEstudante: TLabel;
    procedure IncluirClick(Sender: TObject);
    procedure IncluirPFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    listaCPFs: TStringList;
    listaCodigo : TStringList;
    listacodigoaluno : TStringList;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
 Form2.Show;
 Form1.Hide;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//Bloco do Professor
  listaCPFs := TStringList.Create;
  listaCodigo := TStringList.Create;
//CPF PESSOAL DE TESTE
  listaCPFs.Add('20210857757');
//CODIGO DE TESTE
  listaCodigo.Add('12345');

//Bloco do Aluno

//Criação Da listas
listacodigoaluno  := TStringList.Create;

//Codigo do aluno
listacodigoaluno.Add('12345');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  listaCPFs.Free;
  listaCodigo.Free;
  listacodigoaluno.Free;
end;

procedure TForm1.IncluirPFClick(Sender: TObject);
var
  cpfDigitado, nomepf, codigoPF: string;
  cpfExiste,codigoExiste: Boolean;
  i: Integer;
begin
  nomepf := EditNomePF.Text;
  cpfDigitado := EditCPF.Text;
  codigoPF := EditCodigoPF.Text;

  // Verifica se o CPF tem 11 caracteres
  if Length(cpfDigitado) <> 11 then
  begin
    ShowMessage('O CPF deve ter 11 dígitos.');
    Exit;
  end;

  if codigoPF = '' then  begin

    ShowMessage('Não pode estar vazio.');
    exit;

  end;

  //Verifica se o codigo ja está na lista

  codigoExiste := listacodigo.Indexof(codigopf) <> -1;

  if codigoExiste then begin
    ShowMessage('Este Codigo já está cadastrado no sistema');

  end else begin
    listacodigo.Add(codigopf);
    ShowMessage('Codigo cadastrado com sucesso');
  end;



  // Verifica se só tem números
  for i := 1 to Length(cpfDigitado) do
  begin
    if not (cpfDigitado[i] in ['0'..'9']) then
    begin
      ShowMessage('O CPF deve conter apenas números.');
      Exit;
    end;
  end;

  // Verifica se o CPF já está cadastrado (indexof) procura o cpf na lista, tive que aprender
  cpfExiste := listaCPFs.IndexOf(cpfDigitado) <> -1;

  if cpfExiste then
  begin
    ShowMessage('Este CPF já está cadastrado.');
  end
  else
  begin
    listaCPFs.Add(cpfDigitado);
    ShowMessage('CPF cadastrado com sucesso.');
  end;
end;

procedure TForm1.IncluirClick(Sender: TObject);

//Declara as variaveis do botão do painel alunos
var codigoaluno:String;
codigoal:Boolean;
begin
  codigoaluno :=EditCodigo.Text;
//Verifica se tem algum codigo cadastrado no sistema dos alunos
 codigoal := listacodigoaluno.Indexof(codigoaluno) <> -1;

  if codigoal then begin
    ShowMessage('Este Codigo já está cadastrado no sistema');

  end else begin
    listacodigoaluno.Add(codigoaluno);
    ShowMessage('Codigo cadastrado com sucesso');
  end;


end;



end.
