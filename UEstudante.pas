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
    Codigo: Integer;  // n�mero do aluno
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
    function IndexPorCodigo(const Cod: Integer): Integer; // acha pelo c�digo
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
  Result := False;  // come�a como falso
  E := nil;         // ainda n�o criou

  p := Pos(';', Linha);              // acha o ';'
  if p <= 0 then Exit;               // se n�o tem, sai
  sCod := Copy(Linha, 1, p - 1);     // pega c�digo
  sNome := Copy(Linha, p + 1, MaxInt); // pega nome
  if (Trim(sCod) = '') or (Trim(sNome) = '') then Exit; // valida

  E := TEstudante.Create;            // cria aluno
  E.Codigo := StrToIntDef(sCod, 0);  // seta c�digo
  E.Nome := Trim(sNome);             // seta nome
  Result := True;                    // deu certo
end;

{=== Fun��es simples ===}

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
  if FLista = nil then Exit;         // se n�o tem lista, n�o faz nada
  lbEstudantes.Items.Assign(FLista); // mostra a lista na tela
end;

procedure TFEstudantes.LimparCampos;
begin
  edtCodigo.Clear;     // limpa c�digo
  edtNome.Clear;       // limpa nome
  edtCodigo.SetFocus;  // foca no c�digo
end;

function TFEstudantes.IndexPorCodigo(const Cod: Integer): Integer;
var
  i, C: Integer;
  p: Integer;
  Linha: string;
begin
  Result := -1;                       // padr�o: n�o achou
  if (FLista = nil) or (Cod = 0) then Exit; // sem lista ou c�digo 0
  for i := 0 to FLista.Count - 1 do
  begin
    Linha := FLista[i];               // pega a linha
    p := Pos(';', Linha);             // acha ';'
    C := StrToIntDef(Copy(Linha, 1, p - 1), 0); // c�digo da linha
    if C = Cod then Exit(i);          // achou
  end;
end;



procedure TFEstudantes.FormCreate(Sender: TObject);
begin
  // N�O carregar aqui para obrigar usar o bot�o Listar
  if FLista = nil then
    FLista := TStringList.Create;     // cria lista vazia
  if FArquivo = '' then
    FArquivo := ExtractFilePath(Application.ExeName) + 'estudantes.txt'; // define caminho
  lbEstudantes.Clear;                 // limpa a lista visual
  // AtualizarListaUI n�o � necess�rio aqui (lista come�a vazia)
  Flista.LoadFromFile(FArquivo);  //  Carrega os dados antigos ja escritos
end;

procedure TFEstudantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Salvar;           // salva ao fechar (se tiver algo)
  if FLista <> nil then
    FLista.Free;    // libera mem�ria
end;

procedure TFEstudantes.btnAdicionarClick(Sender: TObject);
var
  Cod: Integer;
  Nome: string;
begin
  Cod := StrToIntDef(edtCodigo.Text, 0); // pega c�digo
  Nome := Trim(edtNome.Text);            // pega nome

  if Cod = 0 then
  begin
    ShowMessage('C�digo inv�lido');
    Exit;
  end;

  if Nome = '' then
  begin
    ShowMessage('Nome inv�lido');
    Exit;
  end;

  if IndexPorCodigo(Cod) <> -1 then
  begin
    ShowMessage('J� existe este c�digo');
    Exit;
  end;

  FLista.Add(IntToStr(Cod) + ';' + Nome); // adiciona na mem�ria
  Salvar;                                  // salva no arquivo
  AtualizarListaUI;                        // atualiza a tela
  LimparCampos;                            // limpa campos
end;

procedure TFEstudantes.btnEditarClick(Sender: TObject);
var
  Idx, Cod: Integer;
  Nome: string;
begin
  Cod := StrToIntDef(edtCodigo.Text, 0); // c�digo a editar
  Nome := Trim(edtNome.Text);            // novo nome

  if Nome = '' then
  begin
    ShowMessage('Nome inv�lido');
    Exit;
  end;

  Idx := IndexPorCodigo(Cod);            // acha o �ndice
  if Idx = -1 then
  begin
    ShowMessage('C�digo n�o encontrado');
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
  Cod := StrToIntDef(edtCodigo.Text, 0); // c�digo digitado
  Idx := IndexPorCodigo(Cod);            // acha o �ndice

  if Idx = -1 then
  begin
    ShowMessage('C�digo n�o encontrado');
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
    edtCodigo.Text := Copy(Linha, 1, p - 1);              // c�digo no edit
    edtNome.Text := Copy(Linha, p + 1, MaxInt);           // nome no edit
  end;
end;

end.

