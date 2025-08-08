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
    edtCodigo: TEdit;
    edtNome: TEdit;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    lbEstudantes: TListBox;
    btnListar: TButton;
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





end;

