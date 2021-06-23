unit UnitBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TFormBase = class(TForm)
    PageControl1: TPageControl;
    TabSheetConsulta: TTabSheet;
    TabSheetCadastro: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    EditBusca: TEdit;
    ButtonBusca: TButton;
    ButtonInserir: TButton;
    ButtonAlterar: TButton;
    ButtonExcluir: TButton;
    ButtonImprimir: TButton;
    ButtonFechar: TButton;
    ButtonSelecionar: TButton;
    Panel3: TPanel;
    ButtonSalvar: TButton;
    ButtonCancelar: TButton;
    ButtonFechar2: TButton;
    FDQuery: TFDQuery;
    DataSource: TDataSource;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonInserirClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure ButtonBuscaClick(Sender: TObject);
    procedure EditBuscaChange(Sender: TObject);
    procedure ButtonSelecionarClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirTab(n: Integer);
    procedure Buscar;
  public
    { Public declarations }

    BASE_SQL: String;
    BASE_CAMPOBUSCA: String;

  end;

var
  FormBase: TFormBase;

implementation

{$R *.dfm}

uses UnitPrincipal;

procedure TFormBase.Buscar;
var
  SQL: String;
begin
  SQL := BASE_SQL;

  if EditBusca.Text <> '' then
  begin
    SQL := SQL + ' where upper('+BASE_CAMPOBUSCA+') like upper('+
    QuotedStr('%'+EditBusca.Text+'%') +')';
  end;

  SQL := SQL + ' order by ' + BASE_CAMPOBUSCA;

  FDQuery.Close;
  FDQuery.SQL.Text := SQL;
  FDQuery.Open();
end;

procedure TFormBase.ButtonAlterarClick(Sender: TObject);
begin
  if FDQuery.IsEmpty then
  begin
    ShowMessage('Não há nenhum registro para ser alterado!!');
    Exit;
  end;


  ExibirTab(1);
  FDQuery.Edit;
end;

procedure TFormBase.ButtonBuscaClick(Sender: TObject);
begin
  Buscar;
end;

procedure TFormBase.ButtonCancelarClick(Sender: TObject);
begin
  ExibirTab(0);
  FDQuery.Cancel;
end;

procedure TFormBase.ButtonExcluirClick(Sender: TObject);
begin
  if FDQuery.IsEmpty then
  begin
    ShowMessage('Não há nenhum registro para exluir!!');
    Exit;
  end;

  if MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FDQuery.Delete;
  end;
end;

procedure TFormBase.ButtonFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TFormBase.ButtonImprimirClick(Sender: TObject);
begin
  frxReport.ShowReport();
end;

procedure TFormBase.ButtonInserirClick(Sender: TObject);
begin
  ExibirTab(1);
  FDQuery.Append;
end;

procedure TFormBase.ButtonSalvarClick(Sender: TObject);
begin
  FDQuery.Post;
  ExibirTab(0);
  //FDQuery.Post;
end;

procedure TFormBase.ButtonSelecionarClick(Sender: TObject);
begin
  if FDQuery.IsEmpty then
    Exit;

  ModalResult := mrOk;
end;

procedure TFormBase.EditBuscaChange(Sender: TObject);
begin
  Buscar;
end;

procedure TFormBase.ExibirTab(n: Integer);
begin
  TabSheetConsulta.TabVisible := (not (n = 1));
  TabSheetCadastro.TabVisible := (n = 1);
  if n = 0 then
  begin
    Buscar;
  end;
  PageControl1.ActivePageIndex := n;
//  if n = 1 then
//  begin
//    TabSheetConsulta.TabVisible := n = 1;
//    TabSheetCadastro.TabVisible := (not (n = 1));
//  end
//  else
//  begin
//
//  end;


end;

procedure TFormBase.FormCreate(Sender: TObject);
begin
  BASE_SQL := FDQuery.SQL.Text;
  ExibirTab(0);
end;

end.
