unit Projeto_Delphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

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
    Button1: TButton;
    Label1: TLabel;
    CPF: TLabel;
    CodigoPF: TLabel;
    procedure IncluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    listaCPFs: TStringList;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  listaCPFs := TStringList.Create;
//CPF PESSOAL DE TESTE
  listaCPFs.Add('20210857757');

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  listaCPFs.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  cpfDigitado, nomepf, codigoPF: string;
  cpfExiste: Boolean;
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
var
  codigo, nome: string;
begin
  codigo := EditCodigo.Text;
  nome := EditNome.Text;
  // Aqui você pode adicionar código para incluir aluno, por exemplo
end;

end.

