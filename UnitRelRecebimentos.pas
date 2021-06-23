unit UnitRelRecebimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBaseRel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.WinXPickers, frxClass, frxDBSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TFormRelRecebimentos = class(TFormBaseRel)
    DatePicker1: TDatePicker;
    DatePicker2: TDatePicker;
    Label1: TLabel;
    Label2: TLabel;
    FDQuerycodigo: TLargeintField;
    FDQueryplaca: TWideStringField;
    FDQuerydata_hora_entrada: TSQLTimeStampField;
    FDQueryvaga: TLargeintField;
    FDQuerydata_hora_saida: TSQLTimeStampField;
    FDQueryvalor: TFloatField;
    FDQuerydataentrada: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelRecebimentos: TFormRelRecebimentos;

implementation

{$R *.dfm}

procedure TFormRelRecebimentos.ButtonImprimirClick(Sender: TObject);
begin
  FDQuery.Close;
//  FDQuery.ParamByName('inicio').AsString := QuotedStr(FormatDateTime('yyyy-MM-dd', DatePicker1.Date));
//  FDQuery.ParamByName('fim').AsString :=QuotedStr(FormatDateTime('yyyy-MM-dd', DatePicker2.Date));
  FDQuery.ParamByName('inicio').AsDate := DatePicker1.Date;
  FDQuery.ParamByName('fim').AsDate := DatePicker2.Date;

  inherited;

end;

procedure TFormRelRecebimentos.FormCreate(Sender: TObject);
begin
  inherited;
  DatePicker1.Date:=date;
  DatePicker2.Date:=date;

end;

end.
