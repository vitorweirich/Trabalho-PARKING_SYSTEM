unit UnitRelGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBaseRel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXPickers;

type
  TFormRelGrupo = class(TFormBaseRel)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelGrupo: TFormRelGrupo;

implementation

{$R *.dfm}

uses UnitGrupo;

procedure TFormRelGrupo.Button1Click(Sender: TObject);
var
  form: TFormGrupo;
begin
  form := TFormGrupo.Create(Self);
  form.ButtonSelecionar.Visible := true;
  if form.ShowModal = mrOk then
  begin
    Edit1.Text := form.FDQuery.FieldByName('codigo').AsString;
    Edit2.Text := form.FDQuery.FieldByName('nome').AsString;
    FDQuery.ParamByName('grupo').AsInteger := form.FDQuery.FieldByName('codigo').AsInteger;
  end;

  form.Free;
end;

end.
