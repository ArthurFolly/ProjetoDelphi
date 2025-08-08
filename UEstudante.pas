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
    procedure lbEstudantesClick(Sender: TObject);
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

end;

function TFEstudantes.MontarLinha(const Cod: Integer; const Nome: string): string;
begin

  Result := '';
end;

procedure TFEstudantes.LerLinha(const Linha: string; out Cod: Integer; out Nome: string);
begin

  Cod  := 0;
  Nome := '';
end;

function TFEstudantes.IndexPorCodigo(const Cod: Integer): Integer;
begin
  Result := -1;
end;

procedure TFEstudantes.Carregar;
begin

end;

procedure TFEstudantes.Salvar;
begin

end;

procedure TFEstudantes.AtualizarListaUI;
begin

end;

procedure TFEstudantes.LimparCampos;
begin

end;

//Eventos dos Botoes

procedure TFEstudantes.btnEditarClick(Sender: TObject);
begin
  //
end;

procedure TFEstudantes.btnExcluirClick(Sender: TObject);
begin
  //
end;

procedure TFEstudantes.btnListarClick(Sender: TObject);
begin
  //
end;

procedure TFEstudantes.lbEstudantesClick(Sender: TObject);
begin
  //
end;

end.

