unit uTurmas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFTurmas = class(TForm)
    Panel2: TPanel;
    CodigoTurma: TLabel;
    CodigoProfessor: TLabel;
    CodigoEstudante: TLabel;
    BtoAdcTurma: TButton;
    EditCodigoTrm: TEdit;
    BtoEditarTurma: TButton;
    BtoExcluirTurma: TButton;
    EditEstudanteTurma: TEdit;
    StringGrid4: TStringGrid;
    EditCodigoPFTurma: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTurmas: TFTurmas;

implementation

{$R *.dfm}

end.
