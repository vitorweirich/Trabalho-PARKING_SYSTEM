unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB,
  FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Relatrio1: TMenuItem;
    FDConnection: TFDConnection;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    LabelUsuario: TLabel;
    Grupo1: TMenuItem;
    Vaga1: TMenuItem;
    EntradaeSada1: TMenuItem;
    Localizaoes1: TMenuItem;
    VagasporGrupo1: TMenuItem;
    VeculopelaPlaca1: TMenuItem;
    PorGrupo1: TMenuItem;
    DeRecebimentos1: TMenuItem;
    SitaucaoAtual1: TMenuItem;
    VeculosAtual1: TMenuItem;
    procedure Grupo1Click(Sender: TObject);
    procedure Vaga1Click(Sender: TObject);
    procedure EntradaeSada1Click(Sender: TObject);
    procedure VagasporGrupo1Click(Sender: TObject);
    procedure VeculopelaPlaca1Click(Sender: TObject);
    procedure PorGrupo1Click(Sender: TObject);
    procedure DeRecebimentos1Click(Sender: TObject);
    procedure SitaucaoAtual1Click(Sender: TObject);
    procedure VeculosAtual1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitBase, UnitBaseRel, UnitGrupo, UnitVaga, UnitEstaciona,
  UnitVagaPorGrupo, UnitVeiculoPelaPlaca, UnitRelGrupo, UnitRelRecebimentos,
  UnitRelSituacaoAtual, UnitRelVeiculosAtual;

procedure TFormPrincipal.DeRecebimentos1Click(Sender: TObject);
var
 form: TFormRelRecebimentos;
begin
  form := TFormRelRecebimentos.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.EntradaeSada1Click(Sender: TObject);
var
 form: TFormEstacionado;
begin
  form := TFormEstacionado.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.Grupo1Click(Sender: TObject);
var
 form: TFormGrupo;
begin
  form := TFormGrupo.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.PorGrupo1Click(Sender: TObject);
var
 form: TFormRelGrupo;
begin
  form := TFormRelGrupo.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.SitaucaoAtual1Click(Sender: TObject);
var
 form: TFormRelSituacaoAtual;
begin
  form := TFormRelSituacaoAtual.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.Vaga1Click(Sender: TObject);
var
 form: TFormVaga;
begin
  form := TFormVaga.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.VagasporGrupo1Click(Sender: TObject);
var
 form: TFormVagaPorGrupo;
begin
  form := TFormVagaPorGrupo.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.VeculopelaPlaca1Click(Sender: TObject);
var
 form: TFormLocalizarVeiculo;
begin
  form := TFormLocalizarVeiculo.Create(Self);
  form.ShowModal;
  form.Free;
end;

procedure TFormPrincipal.VeculosAtual1Click(Sender: TObject);
var
 form: TFormRelVeiculosAtual;
begin
  form := TFormRelVeiculosAtual.Create(Self);
  form.ShowModal;
  form.Free;
end;

end.
