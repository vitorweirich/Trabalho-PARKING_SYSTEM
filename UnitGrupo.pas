unit UnitGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormGrupo = class(TFormBase)
    FDQuerycodigo: TLargeintField;
    FDQuerynome: TWideStringField;
    FDQueryvalor: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrupo: TFormGrupo;

implementation

{$R *.dfm}

procedure TFormGrupo.ButtonSalvarClick(Sender: TObject);
begin

  if FDQuery.FieldByName('nome').AsString = '' then
  begin
    ShowMessage('É obrigatório preencher o Nome do Grupo!!');
    Exit;
  end;
  if FDQuery.FieldByName('valor').AsInteger = 0 then
  begin
    ShowMessage('É obrigatório selecionar um Valor para o Grupo!!');
    Exit;
  end;

  inherited;

end;

procedure TFormGrupo.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'nome';
  inherited;

end;

end.
