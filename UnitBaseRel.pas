unit UnitBaseRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormBaseRel = class(TForm)
    Panel1: TPanel;
    ButtonImprimir: TButton;
    ButtonFechar: TButton;
    frxReport: TfrxReport;
    FDQuery: TFDQuery;
    frxDBDataset: TfrxDBDataset;
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaseRel: TFormBaseRel;

implementation

{$R *.dfm}

uses UnitPrincipal;

procedure TFormBaseRel.ButtonFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormBaseRel.ButtonImprimirClick(Sender: TObject);
begin
  FDQuery.Open();
  frxReport.ShowReport();
end;

end.
