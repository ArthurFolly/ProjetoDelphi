unit UDisciplinas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls;

type
  TFDisciplinas = class(TForm)
    Panel1: TPanel;
    CodigoMateria: TLabel;
    NomeMateria: TLabel;
    EditCodigoDisciplina: TEdit;
    StringGrid2: TStringGrid;
    EditNomeMateria: TEdit;
    BtoAdicionar: TButton;
    BtoEditar: TButton;
    BtoExcluir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDisciplinas: TFDisciplinas;

implementation

{$R *.dfm}

end.
