unit uEstudante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids;

type
  TFEstudantes = class(TForm)
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
  FEstudantes: TFEstudantes;

implementation

{$R *.dfm}

var Nome,CodigoAluno:String;

end.




type TEstudanteSet = class

protected


Nome:String;
CodigoAluno:String;

end;

