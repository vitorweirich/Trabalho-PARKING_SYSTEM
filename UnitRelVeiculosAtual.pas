unit UnitRelVeiculosAtual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBaseRel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormRelVeiculosAtual = class(TFormBaseRel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelVeiculosAtual: TFormRelVeiculosAtual;

implementation

{$R *.dfm}

end.
