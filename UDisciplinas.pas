unit uDisciplinas;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Classes, System.UITypes,
  Vcl.Forms, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Controls, UProfessor;

type

  TDisciplinas = class
  public
    Codigo: Integer; // número da materia
    Nome: string; // nome da materia
    function ToLine: string; // "codigo;nome"
    class function FromLine(const Linha: string; out E: TDisciplinas): Boolean;
      static; // cria a partir do texto
  end;

  TFDisciplinas = class(TForm)
    edtCodigo: TEdit;
    edtNome: TEdit;
    lbDisciplinas: TListBox;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure lbDisciplinasClick(Sender: TObject);
  private
    FArquivo: string;
    FLista: TStringList;

    procedure Carregar;
    procedure Salvar;
    procedure AtualizarListaUI;
    procedure LimparCampos;
    function IndexPorCodigo(const Cod: Integer): Integer; // acha pelo código
  public
  end;

var
  FDisciplinas: TFDisciplinas;

implementation

{$R *.dfm}

function TDisciplinas.ToLine: string;
begin
  Result := IntToStr(Codigo) + ';' + Nome;
end;

class function TDisciplinas.FromLine(const Linha: string;
  out E: TDisciplinas): Boolean;
var
  p: Integer;
  sCod, sNome: string;
begin
  Result := False; // começa como falso
  E := nil; // ainda não criou

  p := Pos(';', Linha); // acha o ';'
  if p <= 0 then
    Exit; // se não tem, sai
  sCod := Copy(Linha, 1, p - 1); // pega código
  sNome := Copy(Linha, p + 1, MaxInt); // pega nome
  if (Trim(sCod) = '') or (Trim(sNome) = '') then
    Exit; // valida

  E := TDisciplinas.Create; // cria aluno
  E.Codigo := StrToIntDef(sCod, 0); // seta código
  E.Nome := Trim(sNome); // seta nome
  Result := True; // deu certo
end;



procedure TFDisciplinas.Carregar;
begin
  if FLista = nil then
    FLista := TStringList.Create; // garante a lista
  if FArquivo = '' then
    FArquivo := ExtractFilePath(Application.ExeName) + 'disciplinas.txt';
  // define o arquivo

  if FileExists(FArquivo) then
    FLista.LoadFromFile(FArquivo, TEncoding.UTF8); // carrega do disco
end;

procedure TFDisciplinas.Salvar;
begin
  if (FLista <> nil) and (FArquivo <> '') then
    FLista.SaveToFile(FArquivo, TEncoding.UTF8); // salva no disco
end;

procedure TFDisciplinas.AtualizarListaUI;
begin
  if FLista = nil then
    Exit; // se não tem lista, não faz nada
  lbDisciplinas.Items.Assign(FLista); // mostra a lista na tela
end;

procedure TFDisciplinas.LimparCampos;
begin
  edtCodigo.Clear; // limpa código
  edtNome.Clear; // limpa nome
  edtCodigo.SetFocus; // foca no código
end;

function TFDisciplinas.IndexPorCodigo(const Cod: Integer): Integer;
var
  i, C: Integer;
  p: Integer;
  Linha: string;
begin
  Result := -1; // padrão: não achou
  if (FLista = nil) or (Cod = 0) then
    Exit; // sem lista ou código 0
  for i := 0 to FLista.Count - 1 do
  begin
    Linha := FLista[i]; // pega a linha
    p := Pos(';', Linha); // acha ';'
    C := StrToIntDef(Copy(Linha, 1, p - 1), 0); // código da linha
    if C = Cod then
      Exit(i); // achou
  end;
end;

procedure TFDisciplinas.FormCreate(Sender: TObject);
begin
  // NÃO carregar aqui para obrigar usar o botão Listar
  FLista := TStringList.Create; // cria lista vazia
  if FArquivo = '' then
    FArquivo := ExtractFilePath(Application.ExeName) + 'disciplinas.txt';
  // define caminho
  lbDisciplinas.Clear; // limpa a lista visual
  // AtualizarListaUI não é necessário aqui (lista começa vazia)
  FLista.LoadFromFile(FArquivo); // Carrega os dados antigos ja escritos
  AtualizarListaUI; // Atualiza o ListBox com os dados carregados
end;

procedure TFDisciplinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Salvar; // salva ao fechar (se tiver algo)
  //if FLista <> nil then
    //FLista.Free; // libera memória
end;

procedure TFDisciplinas.btnAdicionarClick(Sender: TObject);
var
  Cod: Integer;
  Nome: string;
begin
  Cod := StrToIntDef(edtCodigo.Text, 0); // pega código
  Nome := Trim(edtNome.Text); // pega nome

  if Cod = 0 then
  begin
    ShowMessage('Código inválido');
    Exit;
  end;

  if Nome = '' then
  begin
    ShowMessage('Nome inválido');
    Exit;
  end;

  if IndexPorCodigo(Cod) <> -1 then
  begin
    ShowMessage('Já existe este código');
    Exit;
  end;

  FLista.Add(IntToStr(Cod) + ';' + Nome); // adiciona na memória
  Salvar; // salva no arquivo
  AtualizarListaUI; // atualiza a tela
  LimparCampos; // limpa campos
end;

procedure TFDisciplinas.btnEditarClick(Sender: TObject);
var
  Idx, Cod: Integer;
  Nome: string;
begin
  Cod := StrToIntDef(edtCodigo.Text, 0); // código a editar
  Nome := Trim(edtNome.Text); // novo nome

  if Nome = '' then
  begin
    ShowMessage('Nome inválido');
    Exit;
  end;

  Idx := IndexPorCodigo(Cod); // acha o índice
  if Idx = -1 then
  begin
    ShowMessage('Código não encontrado');
    Exit;
  end;

  FLista[Idx] := IntToStr(Cod) + ';' + Nome; // troca a linha
  Salvar; // salva
  AtualizarListaUI; // atualiza a tela
end;

procedure TFDisciplinas.btnExcluirClick(Sender: TObject);
var
  Idx, Cod, i: Integer;

begin
  Cod := StrToIntDef(edtCodigo.Text, 0); // agora inicializa
  Idx := IndexPorCodigo(Cod); // acha o índice

  if Idx = -1 then
  begin
    ShowMessage('Código não encontrado');
    Exit;
  end;

  if MessageDlg('Tem certeza?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
   for i := lbDisciplinas.Items.Count - 1 downto 0 do
    begin
      if lbDisciplinas.Selected[i] then
      begin
        lbDisciplinas.Items.Delete(i);
      end;
    end;

    FLista.Delete(Idx); // remove da lista
    Salvar; // salva no arquivo
    AtualizarListaUI; // atualiza a tela
    LimparCampos; // limpa campos
  end;
end;

procedure TFDisciplinas.btnListarClick(Sender: TObject);
begin
  //Carregar; // agora SIM carrega do arquivo
  //AtualizarListaUI; // e mostra na tela
end;

procedure TFDisciplinas.lbDisciplinasClick(Sender: TObject);
var
  Linha: string;
  p: Integer;
begin
  if lbDisciplinas.ItemIndex <> -1 then
  begin
    Linha := lbDisciplinas.Items[lbDisciplinas.ItemIndex]; // linha selecionada
    p := Pos(';', Linha); // separador
    edtCodigo.Text := Copy(Linha, 1, p - 1); // código no edit
    edtNome.Text := Copy(Linha, p + 1, MaxInt); // nome no edit
  end;
end;

end.
