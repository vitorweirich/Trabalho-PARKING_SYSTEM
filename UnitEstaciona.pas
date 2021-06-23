unit UnitEstaciona;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, DateUtils;

type
  TFormEstacionado = class(TFormBase)
    FDQuerycodigo: TLargeintField;
    FDQueryplaca: TWideStringField;
    FDQuerydata_hora_entrada: TSQLTimeStampField;
    FDQuerydata_hora_saida: TSQLTimeStampField;
    FDQueryvaganome: TWideStringField;
    FDQuerygruponome: TWideStringField;
    FDQueryvalorhora: TFloatField;
    FDQueryvaga: TLargeintField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    ButtonSelecionarVaga: TButton;
    FDQueryvalor: TFloatField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure ButtonInserirClick(Sender: TObject);
    procedure ButtonSelecionarVagaClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstacionado: TFormEstacionado;

implementation

{$R *.dfm}

uses UnitVaga;

procedure TFormEstacionado.ButtonAlterarClick(Sender: TObject);
var
  form: TFormVaga;
  data1, data2: TDateTime;
  Total,Horas, valorHora:Real;
begin
   if FDQuery.IsEmpty then
  begin
    ShowMessage('Não há nenhum veículo estacionado!!');
    Exit;
  end;
  if not FDQuery.FieldByName('data_hora_saida').IsNull then
  begin
    ShowMessage('Esse veículo já saiu do estacionamento!!');
    Exit;
  end;

  data1 := FDQuery.FieldByName('data_hora_entrada').AsDateTime;
  data2 := Now;
  total:= data2 - data1;
  Horas:=total - Trunc(total);
  Horas:= Trunc((Horas * 24) + (DaysBetween(data2,data1) * 24));
  if Horas = 0 then
    Horas := 1;
  valorHora:= FDQuery.FieldByName('valorhora').AsFloat;

  if MessageDlg('Placa: ' +  FDQuery.FieldByName('placa').AsString + #13 +
  'Valor total a pagar: R$' + FloatToStr(Horas * valorHora) + #13 +
  'Deseja confirmar a saida deste veículo?'
  , mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FDQuery.Edit;
    FDQuery.FieldByName('valor').AsFloat := Horas * valorHora;
    FDQuery.FieldByName('data_hora_saida').AsDateTime := data2;
    FDQuery.Post;

    form := TFormVaga.Create(Self);
    form.FDQuery.Close;
    form.FDQuery.SQL.Text := 'update vaga set ocupado = 0 where codigo = '
    + FDQuery.FieldByName('vaga').AsString;
    form.FDQuery.ExecSQL;
    form.Free;

  end;

end;

procedure TFormEstacionado.ButtonExcluirClick(Sender: TObject);
begin
  if FDQuery.FieldByName('valor').AsFloat < 1.0 then
  begin
    ShowMessage('Você não pode excluir uma vaga ocupada!');
    Exit;
  end;
  inherited;

end;

procedure TFormEstacionado.ButtonInserirClick(Sender: TObject);
begin
  inherited;
  FDQuery.FieldByName('data_hora_entrada').AsDateTime := Now;
end;

procedure TFormEstacionado.ButtonSalvarClick(Sender: TObject);
var
  form: TFormVaga;
begin

  if FDQuery.FieldByName('placa').AsString = '' then
  begin
    ShowMessage('É obrigatório preencher o campo Placa!!');
    Exit;
  end;
  if FDQuery.FieldByName('vaga').AsInteger = 0 then
  begin
    ShowMessage('É obrigatório selecionar uma Vaga!!');
    Exit;
  end;

  form := TFormVaga.Create(Self);
  form.FDQuery.Close;
  form.FDQuery.SQL.Text := 'update vaga set ocupado = 1 where codigo = '
  + FDQuery.FieldByName('vaga').AsString;
  form.FDQuery.ExecSQL;
  form.Free;

  inherited;

end;

procedure TFormEstacionado.ButtonSelecionarVagaClick(Sender: TObject);
var
  form: TFormVaga;
begin
  form := TFormVaga.Create(Self);
  form.FDQuery.SQL.Text := Copy(form.FDQuery.SQL.Text, 1,
  Length(form.FDQuery.SQL.Text) - 19) +
  ' where vaga.ocupado = 0 order by vaga.nome';
  form.ButtonSelecionar.Visible := true;
  form.FDQuery.Active := true;
  form.FDQuery.Refresh;
  if form.ShowModal = mrOk then
  begin
    FDQuery.FieldByName('vaga').AsInteger := form.FDQuery.FieldByName('codigo').AsInteger;
    FDQuery.FieldByName('vaganome').AsString := form.FDQuery.FieldByName('nome').AsString;
  end;

  form.Free;
end;

procedure TFormEstacionado.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'placa';
  inherited;

end;

end.
