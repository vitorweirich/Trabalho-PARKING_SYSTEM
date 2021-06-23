inherited FormLocalizarVeiculo: TFormLocalizarVeiculo
  Caption = 'Localizar Ve'#237'culo pela Placa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheetConsulta: TTabSheet
      inherited Panel1: TPanel
        inherited EditBusca: TEdit
          Font.Color = clGreen
          Font.Style = [fsBold]
          ParentFont = False
          TextHint = 'Digite a placa que deseja buscar'
        end
      end
      inherited Panel2: TPanel
        inherited ButtonInserir: TButton
          Visible = False
        end
        inherited ButtonAlterar: TButton
          Visible = False
        end
        inherited ButtonExcluir: TButton
          Visible = False
        end
        inherited ButtonImprimir: TButton
          Visible = False
        end
      end
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'placa'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_1'
            Width = 240
            Visible = True
          end>
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'select e.placa, vaga.nome, grupo.nome from (select * from '
      'estacionado where upper(placa) like upper('#39'%:placa%'#39') and '
      'valor is null) as e '
      'join vaga on vaga.codigo'
      ' = e.vaga join grupo on vaga.grupo = grupo.codigo')
    object FDQuerynome: TWideStringField
      DisplayLabel = 'Nome da Vaga'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object FDQuerynome_1: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'nome_1'
      Origin = 'nome'
      Size = 60
    end
    object FDQueryplaca: TWideStringField
      DisplayLabel = 'Placa do Ve'#237'culo'
      FieldName = 'placa'
      Origin = 'placa'
      Size = 10
    end
  end
  inherited frxReport: TfrxReport
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
  end
end
