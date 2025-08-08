unit uEstudante;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Classes, System.UITypes,
  Vcl.Forms, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Controls;

type
  TFEstudantes = class(TForm)
    edtCodigo: TEdit;
    edtNome: TEdit;
    lbEstudantes: TListBox;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnListar: TButton;
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private

    FArquivo: string;
    FLista: TStringList;


    procedure EnsureLista;
    function  MontarLinha(const Cod: Integer; const Nome: string): string;
    procedure LerLinha(const Linha: string; out Cod: Integer; out Nome: string);
    function  IndexPorCodigo(const Cod: Integer): Integer;
    procedure Carregar;
    procedure Salvar;
    procedure AtualizarListaUI;
    procedure LimparCampos;
  public
  end;

var
  FEstudantes: TFEstudantes;

implementation

{$R *.dfm}



procedure TFEstudantes.EnsureLista;
begin
    if FArquivo = '' then begin
       FArquivo := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'estudantes.txt';
      if FLista = nil then begin
         FLista := TStringList.Create;
      end;


    end;

end;

function TFEstudantes.MontarLinha(const Cod: Integer; const Nome: string): string;
begin

  Result := IntToStr(Cod) + 'n' + Nome;
end;

procedure TFEstudantes.LerLinha(const Linha: string; out Cod: Integer; out Nome: string);
var
  p: integer;
begin
  p := Pos(';', Linha); // Encontra o delimitador de ponto e vírgula
  if p > 0 then
  begin
    Cod := StrToIntDef(Copy(Linha, 1, p - 1), 0); // Obtém o código e converte para inteiro
    Nome := Copy(Linha, p + 1, MaxInt); // Obtém o nome
  end
  else
  begin
    // Se nenhum ponto e vírgula for encontrado, define valores padrão
    Cod := 0;
    Nome := Linha; // ou '' se preferir
  end;

end;



function TFEstudantes.IndexPorCodigo(const Cod: Integer): Integer;
var i,C : Integer;
    N:String;
begin
  Result := -1;
  for I := 0 to FLista.Count -1  do begin
   // Pega a linha atual e separa o código ('C') e o nome ('N').
    LerLinha(FLista[i],C,N);
    // Verifica se o código que acabamos de ler ('C') é o que estamos procurando ('Cod').
    if C = Cod then begin
      Result := i;
      exit;
    end;

  end;

end;

procedure TFEstudantes.Carregar;
begin
  EnsureLista;     // garante que FLista existe
  FLista.Clear;    // limpa a lista atual
  if FileExists(FArquivo) then
  FLista.LoadFromFile(FArquivo, TEncoding.UTF8); // lê do disco

end;

procedure TFEstudantes.Salvar;

begin
  EnsureLista; // O papel que é garantir que a FLista Exista
  FLista.SaveToFile(FArquivo,TEncoding .UTF8);
end;

procedure TFEstudantes.AtualizarListaUI;
var   i, C: Integer;
      N: string;
begin
  lbEstudantes.Items.BeginUpdate;
  try
    lbEstudantes.Clear;
    for i := 0 to FLista.Count - 1 do
    begin
      //Separa a linha por codigo (C) e (N)
      LerLinha(FLista[i], C, N);
      //Adiciona o estudante  na lista visual, mostrando o código e o nome.
      //A função Format cria um texto como "codigo - nome".
      //Aqui, o '%d' é substituido pelo valor do codigo ('C'),
      //e o '%s' é substituido pelo valor do nome ('N');
      lbEstudantes.Items.Add(Format('%d - %s', [C,N]));

    end;
  finally
    lbEstudantes.Items.EndUpdate;
  end;

end;

procedure TFEstudantes.LimparCampos;
begin
  edtCodigo.Clear;
  edtNome.Clear;
  edtCodigo.SetFocus;

end;

//Eventos dos Botoes

procedure TFEstudantes.btnAdicionarClick(Sender: TObject);
var
  Cod: Integer;
  Nome: string;
begin
  EnsureLista;

  // Lê os campos
  Cod  := StrToIntDef(Trim(edtCodigo.Text), 0);
  Nome := Trim(edtNome.Text);

//Validação
  if Cod = 0 then
  begin
    MessageDlg('Informe um código numérico válido.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if Nome = '' then
  begin
    MessageDlg('Informe o nome.', mtWarning, [mbOK], 0);
    Exit;
  end;

  Carregar; // pega a versão mais atual do arquivo

  // IF para verificar se já não tem o mesmo codigo
  if IndexPorCodigo(Cod) <> -1 then
  begin
    MessageDlg('Já existe estudante com esse código.', mtInformation, [mbOK], 0);
    Exit;
  end;

  // Adiciona na memória e salva
  FLista.Add(MontarLinha(Cod, Nome));
  Salvar;

  // Reflete na tela e limpa os edits
  AtualizarListaUI;
  LimparCampos;
end;




procedure TFEstudantes.btnEditarClick(Sender: TObject);
var
 Idx,Cod:Integer;
 Nome,NomeLido: string;

begin

  EnsureLista;

  Nome :=Trim(edtNome.Text); //Trim serve para remover os espaços em brancos
  if Nome = '' then begin
    MessageDlg('Informe o novo nome.',  mtWarning, [mbOK],0); //mtwarning cria uma tela de aviso e mbok cria um botao de ok
  end;exit;

end;


procedure TFEstudantes.btnExcluirClick(Sender: TObject);
begin
  //
end;

procedure TFEstudantes.btnListarClick(Sender: TObject);
begin
  //
end;

end.

