unit uMatriculas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFMatriculas = class(TForm)
    Panel3: TPanel;
    CodigoMatricula: TLabel;
    CodigoDaTurma: TLabel;
    CodigoEstudanteTurma: TLabel;
    BtoAdcMatriculas: TButton;
    EditCodigoMatricula: TEdit;
    BtoExcluirMatriculas: TButton;
    BtoEditarMatriculas: TButton;
    EditCodigoEstudante: TEdit;
    StringGrid5: TStringGrid;
    EditCodigoTurma: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMatriculas: TFMatriculas;

implementation

{$R *.dfm}

end.
