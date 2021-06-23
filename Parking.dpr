program Parking;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitBase in 'UnitBase.pas' {FormBase},
  UnitBaseRel in 'UnitBaseRel.pas' {FormBaseRel},
  UnitGrupo in 'UnitGrupo.pas' {FormGrupo},
  UnitVaga in 'UnitVaga.pas' {FormVaga},
  UnitEstaciona in 'UnitEstaciona.pas' {FormEstacionado},
  UnitVagaPorGrupo in 'UnitVagaPorGrupo.pas' {FormVagaPorGrupo},
  UnitVeiculoPelaPlaca in 'UnitVeiculoPelaPlaca.pas' {FormLocalizarVeiculo},
  UnitRelGrupo in 'UnitRelGrupo.pas' {FormRelGrupo},
  UnitRelRecebimentos in 'UnitRelRecebimentos.pas' {FormRelRecebimentos},
  UnitRelSituacaoAtual in 'UnitRelSituacaoAtual.pas' {FormRelSituacaoAtual},
  UnitRelVeiculosAtual in 'UnitRelVeiculosAtual.pas' {FormRelVeiculosAtual};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
