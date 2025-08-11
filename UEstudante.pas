unit uEstudante;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Classes, System.UITypes,
  Vcl.Forms, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Controls, UProfessor;

type
  // Classe simples do estudante
  TEstudante = class
  public
    Codigo: Integer;  // número do aluno
    Nome: string;     // nome do aluno
    function ToLine: string; // "codigo;nome"
    class function FromLine(const Linha: string; out E: TEstudante): Boolean; static; // cria a partir do texto
  end;


  TFEstudantes = class(TForm)
    edtCodigo: TEdit;
    edtNome: TEdit;
    lbEstudantes: TListBox;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnListar: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure lbEstudantesClick(Sender: TObject);
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
  FEstudantes: TFEstudantes;

implementation

{$R *.dfm}



function TEstudante.ToLine: string;
begin
  Result := IntToStr(Codigo) + ';' + Nome;
end;

class function TEstudante.FromLine(const Linha: string; out E: TEstudante): Boolean;
var
  p: Integer;
  sCod, sNome: string;
begin
  Result := False;  // começa como falso
  E := nil;         // ainda não criou

  p := Pos(';', Linha);              // acha o ';'
  if p <= 0 then Exit;               // se não tem, sai
  sCod := Copy(Linha, 1, p - 1);     // pega código
  sNome := Copy(Linha, p + 1, MaxInt); // pega nome
  if (Trim(sCod) = '') or (Trim(sNome) = '') then Exit; // valida

  E := TEstudante.Create;            // cria aluno
  E.Codigo := StrToIntDef(sCod, 0);  // seta código
  E.Nome := Trim(sNome);             // seta nome
  Result := True;                    // deu certo
end;

{=== Funções simples ===}

procedure TFEstudantes.Carregar;
begin
  if FLista = nil then
    FLista := TStringList.Create; // garante a lista
  if FArquivo = '' then
    FArquivo := ExtractFilePath(Application.ExeName) + 'estudantes.txt'; // define o arquivo

  if FileExists(FArquivo) then
    FLista.LoadFromFile(FArquivo, TEncoding.UTF8); // carrega do disco
end;

procedure TFEstudantes.Salvar;
begin
  if (FLista <> nil) and (FArquivo <> '') then
    FLista.SaveToFile(FArquivo, TEncoding.UTF8); // salva no disco
end;

procedure TFEstudantes.AtualizarListaUI;
begin
  if FLista = nil then Exit;         // se não tem lista, não faz nada
  lbEstudantes.Items.Assign(FLista); // mostra a lista na tela
end;

procedure TFEstudantes.LimparCampos;
begin
  edtCodigo.Clear;     // limpa código
  edtNome.Clear;       // limpa nome
  edtCodigo.SetFocus;  // foca no código
end;

function TFEstudantes.IndexPorCodigo(const Cod: Integer): Integer;
var
  i, C: Integer;
  p: Integer;
  Linha: string;
begin
  Result := -1;                       // padrão: não achou
  if (FLista = nil) or (Cod = 0) then Exit; // sem lista ou código 0
  for i := 0 to FLista.Count - 1 do
  begin
    Linha := FLista[i];               // pega a linha
    p := Pos(';', Linha);             // acha ';'
    C := StrToIntDef(Copy(Linha, 1, p - 1), 0); // código da linha
    if C = Cod then Exit(i);          // achou
  end;
end;



procedure TFEstudantes.FormCreate(Sender: TObject);
begin
  // NÃO carregar aqui para obrigar usar o botão Listar
  if FLista = nil then
    FLista := TStringList.Create;     // cria lista vazia
  if FArquivo = '' then
    FArquivo := ExtractFilePath(Application.ExeName) + 'estudantes.txt'; // define caminho
  lbEstudantes.Clear;                 // limpa a lista visual
  // AtualizarListaUI não é necessário aqui (lista começa vazia)
  Flista.LoadFromFile(FArquivo);  //  Carrega os dados antigos ja escritos
end;

procedure TFEstudantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Salvar;           // salva ao fechar (se tiver algo)
  if FLista <> nil then
    FLista.Free;    // libera memória
end;

procedure TFEstudantes.btnAdicionarClick(Sender: TObject);
var
  Cod: Integer;
  Nome: string;
begin
  Cod := StrToIntDef(edtCodigo.Text, 0); // pega código
  Nome := Trim(edtNome.Text);            // pega nome

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
  Salvar;                                  // salva no arquivo
  AtualizarListaUI;                        // atualiza a tela
  LimparCampos;                            // limpa campos
end;

procedure TFEstudantes.btnEditarClick(Sender: TObject);
var
  Idx, Cod: Integer;
  Nome: string;
begin
  Cod := StrToIntDef(edtCodigo.Text, 0); // código a editar
  Nome := Trim(edtNome.Text);            // novo nome

  if Nome = '' then
  begin
    ShowMessage('Nome inválido');
    Exit;
  end;

  Idx := IndexPorCodigo(Cod);            // acha o índice
  if Idx = -1 then
  begin
    ShowMessage('Código não encontrado');
    Exit;
  end;

  FLista[Idx] := IntToStr(Cod) + ';' + Nome; // troca a linha
  Salvar;                                    // salva
  AtualizarListaUI;                          // atualiza a tela
end;

procedure TFEstudantes.btnExcluirClick(Sender: TObject);
var
  Idx, Cod: Integer;
begin
  Cod := StrToIntDef(edtCodigo.Text, 0); // código digitado
  Idx := IndexPorCodigo(Cod);            // acha o índice

  if Idx = -1 then
  begin
    ShowMessage('Código não encontrado');
    Exit;
  end;

  if MessageDlg('Tem certeza?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    FLista.Delete(Idx); // remove da lista
    Salvar;             // salva no arquivo
    AtualizarListaUI;   // atualiza a tela
    LimparCampos;       // limpa campos
  end;
end;

procedure TFEstudantes.btnListarClick(Sender: TObject);
begin
  Carregar;           // agora SIM carrega do arquivo
  AtualizarListaUI;   // e mostra na tela
end;

procedure TFEstudantes.lbEstudantesClick(Sender: TObject);
var
  Linha: string;
  p: Integer;
begin
  if lbEstudantes.ItemIndex <> -1 then
  begin
    Linha := lbEstudantes.Items[lbEstudantes.ItemIndex]; // linha selecionada
    p := Pos(';', Linha);                                 // separador
    edtCodigo.Text := Copy(Linha, 1, p - 1);              // código no edit
    edtNome.Text := Copy(Linha, p + 1, MaxInt);           // nome no edit
  end;
end;

end.

