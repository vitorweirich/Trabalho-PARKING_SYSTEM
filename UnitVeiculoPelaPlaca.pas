unit UnitVeiculoPelaPlaca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFormLocalizarVeiculo = class(TFormBase)
    FDQuerynome: TWideStringField;
    FDQuerynome_1: TWideStringField;
    FDQueryplaca: TWideStringField;
    procedure EditBuscaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLocalizarVeiculo: TFormLocalizarVeiculo;

implementation

{$R *.dfm}

procedure TFormLocalizarVeiculo.EditBuscaChange(Sender: TObject);
begin
  FDQuery.Close;
  FDQuery.SQL.Text := BASE_SQL.Replace(':placa', EditBusca.Text);
  //ShowMessage(FDQuery.SQL.Text);
  //FDQuery.ParamByName('placa').AsString := EditBusca.Text;
  FDQuery.Open();

end;

procedure TFormLocalizarVeiculo.FormCreate(Sender: TObject);
begin
  BASE_SQL := FDQuery.SQL.Text;
  BASE_CAMPOBUSCA := 'vaga.nome';
  inherited;

end;

end.
