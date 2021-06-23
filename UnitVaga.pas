unit UnitVaga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormVaga = class(TFormBase)
    ButtonBuscarGrupo: TButton;
    FDQuerycodigo: TLargeintField;
    FDQuerynome: TWideStringField;
    FDQueryocupado: TIntegerField;
    FDQuerygrupo: TLargeintField;
    FDQuerynomegrupo: TWideStringField;
    FDQueryocupadostr: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    FDQueryDuplicado: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure ButtonBuscarGrupoClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVaga: TFormVaga;

implementation

{$R *.dfm}

uses UnitGrupo;

procedure TFormVaga.ButtonBuscarGrupoClick(Sender: TObject);
var
  form: TFormGrupo;
begin
  form := TFormGrupo.Create(Self);
  form.ButtonSelecionar.Visible := true;
  if form.ShowModal = mrOk then
  begin
    FDQuery.FieldByName('grupo').AsInteger := form.FDQuery.FieldByName('codigo').AsInteger;
    FDQuery.FieldByName('nomeGrupo').AsString := form.FDQuery.FieldByName('nome').AsString;
  end;

  form.Free;
end;

procedure TFormVaga.ButtonSalvarClick(Sender: TObject);
var
  vaga, grupo: String;
begin
  DBEdit3.Text := '0';

  if FDQuery.FieldByName('nome').AsString = '' then
  begin
    ShowMessage('É obrigatório preencher o Nome da Vaga!!');
    Exit;
  end;
  if FDQuery.FieldByName('grupo').AsInteger = 0 then
  begin
    ShowMessage('É obrigatório selecionar um Grupo para a Vaga!!');
    Exit;
  end;
  vaga := FDQuery.FieldByName('nome').AsString;
  grupo := FDQuery.FieldByName('grupo').AsString;
  FDQueryDuplicado.Close;
  FDQueryDuplicado.ParamByName('vaga').AsString := vaga;
  FDQueryDuplicado.ParamByName('grupo').AsInteger := StrToInt(grupo);
  FDQueryDuplicado.Open();
  if not FDQueryDuplicado.IsEmpty then
   begin
    ShowMessage('Já existe uma Vaga no Grupo '
    + QuotedStr(FDQuery.FieldByName('nomegrupo').AsString)
    + ' com o nome: ' + QuotedStr(vaga));
    Exit;
  end;


  inherited;

end;

procedure TFormVaga.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'vaga.nome';
  inherited;

end;

end.
