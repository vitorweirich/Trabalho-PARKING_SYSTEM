inherited FormGrupo: TFormGrupo
  Caption = 'Grupo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheetConsulta: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo do Grupo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome do Grupo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Caption = 'Valor por Hora'
            Visible = True
          end>
      end
    end
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 24
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 64
        Width = 74
        Height = 13
        Caption = 'Nome do Grupo'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 24
        Top = 104
        Width = 69
        Height = 13
        Caption = 'Valor por Hora'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 40
        Width = 134
        Height = 21
        Color = clSilver
        DataField = 'codigo'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 80
        Width = 300
        Height = 21
        DataField = 'nome'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 120
        Width = 134
        Height = 21
        DataField = 'valor'
        DataSource = DataSource
        TabOrder = 3
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select grupo.* from grupo')
    object FDQuerycodigo: TLargeintField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object FDQueryvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
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
