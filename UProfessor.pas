unit uProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls;

type
  TFProfessor = class(TForm)
    PanelEstudante: TPanel;
    CodigoAluno: TLabel;
    Nome: TLabel;
    Codigo: TEdit;
    StringGrid1: TStringGrid;
    NomeAluno: TEdit;
    adicionar: TButton;
    Editar: TButton;
    Excluir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProfessor: TFProfessor;

implementation

{$R *.dfm}

end.
