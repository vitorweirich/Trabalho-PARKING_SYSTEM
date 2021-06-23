unit UnitVagaPorGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFormVagaPorGrupo = class(TFormBase)
    EditVaga: TEdit;
    FDQuerycodigo: TLargeintField;
    FDQuerynome: TWideStringField;
    FDQueryocupado: TIntegerField;
    FDQuerygrupo: TLargeintField;
    FDQuerynomegrupo: TWideStringField;
    FDQueryocupadostr: TWideStringField;
    procedure ButtonBuscaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditBuscaChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormVagaPorGrupo: TFormVagaPorGrupo;

implementation

{$R *.dfm}

uses UnitGrupo;

procedure TFormVagaPorGrupo.ButtonBuscaClick(Sender: TObject);
var
  form: TFormGrupo;
begin
  form := TFormGrupo.Create(Self);
  form.ButtonSelecionar.Visible := true;
  if form.ShowModal = mrOk then
  begin
    EditVaga.Text := form.FDQuery.FieldByName('nome').AsString;

    FDQuery.Close;
    FDQuery.ParamByName('grupo').AsInteger := form.FDQuery.FieldByName('codigo').AsInteger;
    FDQuery.Open();
  end;

end;

procedure TFormVagaPorGrupo.EditBuscaChange(Sender: TObject);
var
  SQL: String;
begin
  SQL := BASE_SQL;

  if EditBusca.Text <> '' then
  begin
    SQL := SQL + ' and upper('+BASE_CAMPOBUSCA+') like upper('+
    QuotedStr('%'+EditBusca.Text+'%') +')';
  end;

  SQL := SQL + ' order by ' + BASE_CAMPOBUSCA;

  FDQuery.Close;
  FDQuery.SQL.Text := SQL;
  FDQuery.Open();
end;

procedure TFormVagaPorGrupo.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'vaga.nome';
  BASE_SQL := FDQuery.SQL.Text;
  PageControl1.ActivePageIndex := 0;
  TabSheetCadastro.TabVisible := false;
end;

end.
