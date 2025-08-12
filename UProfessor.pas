unit UProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Classes, System.UITypes, // para MessageDlg (mtWarning etc.)
  Vcl.Forms, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Controls;

type
  // ===== Modelo bem simples =====
  TProfessor = class
  public
    Codigo: Integer;
    Nome: string;
    CPF: string;                // salvar apenas dígitos
    function ToLine: string;    // gera "codigo;nome;cpf"
    class function FromLine(const Linha: string; out P: TProfessor): Boolean; static;
  end;

  // ===== Tela =====
  TFProfessores = class(TForm)
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtCPF: TEdit;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnListar: TButton;
    lbProfessores: TListBox;

    procedure FormCreate(Sender: TObject);  // NÃO lista aqui
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);

    procedure lbProfessoresClick(Sender: TObject);
  private
    const ARQ = 'professores.txt'; // arquivo de dados

    // arquivo
    procedure CarregarArquivo;     // lê -> ListBox
    procedure SalvarArquivo;       // ListBox -> arquivo

    // helpers de exibição e validação
    function LinhaExibicao(Cod: Integer; const Nome, Cpf: string): string;
    function NormalizarCPF(const S: string): string;

    // lê os edits e valida (bem simples)
    function LerDosEdits(out Cod: Integer; out Nome, Cpf: string): Boolean;

    // pega partes do texto "cod - nome - cpf" do ListBox
    function Item_GetCodigo(const S: string; out Cod: Integer): Boolean;
    function Item_GetNome(const S: string): string;
    function Item_GetCPF(const S: string): string;

    // buscas e checagens
    function BuscarIndexPorCodigo(const Cod: Integer): Integer;
    function CPFJaExiste(const ACpf: string; IgnorarIndex: Integer = -1): Boolean;
  public
  end;

var
  FProfessores: TFProfessores;

implementation

{$R *.dfm}

{ ===== Modelo ===== }

function TProfessor.ToLine: string;
begin
  // salva simples no formato "codigo;nome;cpf"
  Result := IntToStr(Codigo) + ';' + Nome + ';' + CPF;
end;

class function TProfessor.FromLine(const Linha: string; out P: TProfessor): Boolean;
var
  S, CodStr, Resto, Nome, Cpf: string;
  p1, p2, Cod: Integer;
begin
  Result := False; P := nil;

  S := Trim(Linha);                 // exemplo "123;Fulano;00011122233"
  if S = '' then Exit;

  // primeiro ';' -> código
  p1 := Pos(';', S);
  if p1 = 0 then Exit;
  CodStr := Trim(Copy(S, 1, p1-1));
  if not TryStrToInt(CodStr, Cod) then Exit;

  // resto -> "Nome;CPF"
  Resto := Copy(S, p1+1, MaxInt);
  p2 := Pos(';', Resto);
  if p2 = 0 then Exit;

  Nome := Trim(Copy(Resto, 1, p2-1));
  Cpf  := Trim(Copy(Resto, p2+1, MaxInt));

  P := TProfessor.Create;
  P.Codigo := Cod;
  P.Nome   := Nome;
  P.CPF    := Cpf;
  Result := True;
end;

{ ===== Form ===== }

procedure TFProfessores.FormCreate(Sender: TObject);
begin
  // não carregar aqui (para o botão Listar ter função)
  lbProfessores.Clear;
end;

procedure TFProfessores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // salva o que está na lista quando fechar
  SalvarArquivo;
end;

procedure TFProfessores.btnListarClick(Sender: TObject);
begin
  // lê do arquivo e mostra na lista
  CarregarArquivo;
end;

procedure TFProfessores.lbProfessoresClick(Sender: TObject);
var
  Cod: Integer;
begin
  // quando clicar num item, joga nos edits
  if lbProfessores.ItemIndex < 0 then Exit;
  if not Item_GetCodigo(lbProfessores.Items[lbProfessores.ItemIndex], Cod) then Exit;

  edtCodigo.Text := IntToStr(Cod);
  edtNome.Text   := Item_GetNome(lbProfessores.Items[lbProfessores.ItemIndex]);
  edtCPF.Text    := Item_GetCPF (lbProfessores.Items[lbProfessores.ItemIndex]);
end;

procedure TFProfessores.btnAdicionarClick(Sender: TObject);
var
  Cod: Integer; Nome, Cpf: string;
begin
  if not LerDosEdits(Cod, Nome, Cpf) then Exit;

  // não deixar código repetido
  if BuscarIndexPorCodigo(Cod) <> -1 then
  begin
    MessageDlg('CÓDIGO já cadastrado.', mtWarning, [mbOK], 0);
    Exit;
  end;

  // não deixar CPF repetido
  if CPFJaExiste(Cpf, -1) then
  begin
    MessageDlg('CPF já cadastrado para outro professor.', mtWarning, [mbOK], 0);
    Exit;
  end;

  // inclui na lista e salva
  lbProfessores.Items.Add(LinhaExibicao(Cod, Nome, Cpf));
  SalvarArquivo;

  // limpa para novo
  edtCodigo.Clear; edtNome.Clear; edtCPF.Clear; edtCodigo.SetFocus;
end;

procedure TFProfessores.btnEditarClick(Sender: TObject);
var
  idx, idxCod, Cod: Integer; Nome, Cpf: string;
begin
  idx := lbProfessores.ItemIndex;
  if idx < 0 then
  begin
    MessageDlg('Selecione um professor na lista.', mtInformation, [mbOK], 0);
    Exit;
  end;

  if not LerDosEdits(Cod, Nome, Cpf) then Exit;

  // não pode ter outro registro com mesmo código
  idxCod := BuscarIndexPorCodigo(Cod);
  if (idxCod <> -1) and (idxCod <> idx) then
  begin
    MessageDlg('Já existe outro professor com esse CÓDIGO.', mtWarning, [mbOK], 0);
    Exit;
  end;

  // não pode ter outro CPF igual
  if CPFJaExiste(Cpf, idx) then
  begin
    MessageDlg('CPF já cadastrado para outro professor.', mtWarning, [mbOK], 0);
    Exit;
  end;

  lbProfessores.Items[idx] := LinhaExibicao(Cod, Nome, Cpf);
  SalvarArquivo;

  edtCodigo.Clear; edtNome.Clear; edtCPF.Clear; edtCodigo.SetFocus;
end;

procedure TFProfessores.btnExcluirClick(Sender: TObject);
var
  idx: Integer;
begin
  idx := lbProfessores.ItemIndex;
  if idx < 0 then
  begin
    MessageDlg('Selecione um professor na lista.', mtInformation, [mbOK], 0);
    Exit;
  end;

  if MessageDlg('Excluir este professor?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    lbProfessores.Items.Delete(idx);
    SalvarArquivo;
    edtCodigo.Clear; edtNome.Clear; edtCPF.Clear; edtCodigo.SetFocus;
  end;
end;

{ ===== Arquivo ===== }

procedure TFProfessores.CarregarArquivo;
var
  SL: TStringList; I: Integer; P: TProfessor;
begin
  lbProfessores.Items.BeginUpdate;
  try
    lbProfessores.Clear;
    if not FileExists(ARQ) then Exit;

    SL := TStringList.Create;
    try
      SL.LoadFromFile(ARQ, TEncoding.UTF8);
      for I := 0 to SL.Count - 1 do
        if TProfessor.FromLine(Trim(SL[I]), P) then
        begin
          lbProfessores.Items.Add(LinhaExibicao(P.Codigo, P.Nome, P.CPF));
          P.Free;
        end;
    finally
      SL.Free;
    end;
  finally
    lbProfessores.Items.EndUpdate;
  end;
end;

procedure TFProfessores.SalvarArquivo;
var
  SL: TStringList; I, Cod: Integer; Nome, Cpf: string;
begin
  SL := TStringList.Create;
  try
    for I := 0 to lbProfessores.Items.Count - 1 do
    begin
      // transforma “cod - nome - cpf” em “cod;nome;cpf”
      if Item_GetCodigo(lbProfessores.Items[I], Cod) then
      begin
        Nome := Item_GetNome(lbProfessores.Items[I]);
        Cpf  := Item_GetCPF (lbProfessores.Items[I]);
        SL.Add(IntToStr(Cod) + ';' + Nome + ';' + Cpf);
      end;
    end;
    SL.SaveToFile(ARQ, TEncoding.UTF8);
  finally
    SL.Free;
  end;
end;

{ ===== Helpers simples ===== }

function TFProfessores.LinhaExibicao(Cod: Integer; const Nome, Cpf: string): string;
begin
  // o que aparece no ListBox
  Result := IntToStr(Cod) + ' - ' + Nome + ' - ' + Cpf;
end;

function TFProfessores.NormalizarCPF(const S: string): string;
var
  C: Char;
begin
  // deixa só números
  Result := '';
  for C in S do
    if C in ['0'..'9'] then
      Result := Result + C;
end;

function TFProfessores.Item_GetCodigo(const S: string; out Cod: Integer): Boolean;
var
  p: Integer;
  parte: string;
begin
  // pega o que vem antes do 1º " - "
  p := Pos(' - ', S);
  if p = 0 then Exit(False);
  parte := Trim(Copy(S, 1, p-1));
  Result := TryStrToInt(parte, Cod);
end;

function TFProfessores.Item_GetNome(const S: string): string;
var
  p1, p2: Integer;
  resto: string;
begin
  // entre o 1º e o 2º " - "
  Result := '';
  p1 := Pos(' - ', S);
  if p1 = 0 then Exit;

  resto := Copy(S, p1 + 3, MaxInt);     // depois do 1º separador
  p2 := Pos(' - ', resto);
  if p2 = 0 then Exit;

  Result := Trim(Copy(resto, 1, p2 - 1));
end;

function TFProfessores.Item_GetCPF(const S: string): string;
var
  p1, p2: Integer;
  resto, cpfParte: string;
begin
  // depois do 2º " - "
  Result := '';
  p1 := Pos(' - ', S);
  if p1 = 0 then Exit;

  resto := Copy(S, p1 + 3, MaxInt);     // "nome - cpf"
  p2 := Pos(' - ', resto);
  if p2 = 0 then Exit;

  cpfParte := Copy(resto, p2 + 3, MaxInt);
  Result := NormalizarCPF(Trim(cpfParte));
end;

function TFProfessores.BuscarIndexPorCodigo(const Cod: Integer): Integer;
var
  I, c: Integer;
begin
  Result := -1;
  for I := 0 to lbProfessores.Items.Count - 1 do
    if Item_GetCodigo(lbProfessores.Items[I], c) and (c = Cod) then
      Exit(I);
end;

function TFProfessores.CPFJaExiste(const ACpf: string; IgnorarIndex: Integer): Boolean;
var
  I: Integer;
  alvo, lista: string;
begin
  Result := False;
  alvo := NormalizarCPF(ACpf);
  for I := 0 to lbProfessores.Items.Count - 1 do
  begin
    if I = IgnorarIndex then Continue;
    lista := Item_GetCPF(lbProfessores.Items[I]);
    if lista = alvo then Exit(True);
  end;
end;

function TFProfessores.LerDosEdits(out Cod: Integer; out Nome, Cpf: string): Boolean;
begin
  Result := False;

  // código numérico
  if not TryStrToInt(Trim(edtCodigo.Text), Cod) then
  begin
    MessageDlg('Informe um CÓDIGO numérico.', mtWarning, [mbOK], 0);
    edtCodigo.SetFocus; Exit;
  end;

  // nome obrigatório
  Nome := Trim(edtNome.Text);
  if Nome = '' then
  begin
    MessageDlg('Informe o NOME.', mtWarning, [mbOK], 0);
    edtNome.SetFocus; Exit;
  end;

  // CPF com 11 dígitos (sem cálculo de DV — simples)
  Cpf := NormalizarCPF(edtCPF.Text);
  if Length(Cpf) <> 11 then
  begin
    MessageDlg('Informe um CPF com 11 dígitos.', mtWarning, [mbOK], 0);
    edtCPF.SetFocus; Exit;
  end;

  Result := True;
end;

end.

