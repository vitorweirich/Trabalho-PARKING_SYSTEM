inherited FormVagaPorGrupo: TFormVagaPorGrupo
  Caption = 'Buscar Vagas Por Grupo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheetConsulta: TTabSheet
      inherited Panel1: TPanel
        Height = 65
        ExplicitHeight = 65
        inherited EditBusca: TEdit
          Width = 662
          TextHint = 'Pesquisar no grupo selecionado'
          ExplicitWidth = 662
        end
        inherited ButtonBusca: TButton
          Left = 567
          Top = 36
          Width = 120
          Height = 23
          Caption = 'Selecionar Grupo'
          Visible = True
          WordWrap = True
          ExplicitLeft = 567
          ExplicitTop = 36
          ExplicitWidth = 120
          ExplicitHeight = 23
        end
        object EditVaga: TEdit
          Left = 25
          Top = 38
          Width = 536
          Height = 21
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
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
        Top = 65
        Height = 355
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 267
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomegrupo'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocupadostr'
            Width = 50
            Visible = True
          end>
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'select vaga.*, grupo.nome as nomeGrupo,'
      'cast(case vaga.ocupado'
      '        when 0 then '#39'N'#227'o'#39
      '        when 1 then '#39'Sim'#39
      '        end as varchar) as ocupadoStr'
      'from vaga '
      'join grupo on grupo.codigo = vaga.grupo where '
      'vaga.grupo = :grupo and vaga.ocupado = 0')
    Left = 660
    Top = 136
    ParamData = <
      item
        Name = 'GRUPO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuerycodigo: TLargeintField
      DisplayLabel = 'C'#243'digo da Vaga'
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynome: TWideStringField
      DisplayLabel = 'Nome da Vaga'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object FDQueryocupado: TIntegerField
      DisplayLabel = 'Ocupada'
      FieldName = 'ocupado'
      Origin = 'ocupado'
    end
    object FDQuerygrupo: TLargeintField
      FieldName = 'grupo'
      Origin = 'grupo'
    end
    object FDQuerynomegrupo: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'nomegrupo'
      Origin = 'nomegrupo'
      Size = 60
    end
    object FDQueryocupadostr: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ocupado'
      FieldName = 'ocupadostr'
      Origin = 'ocupadostr'
      ReadOnly = True
      Size = 8190
    end
  end
  inherited DataSource: TDataSource
    Left = 660
    Top = 184
  end
  inherited frxReport: TfrxReport
    Left = 660
    Top = 248
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
  end
  inherited frxDBDataset: TfrxDBDataset
    Left = 660
    Top = 312
  end
end
