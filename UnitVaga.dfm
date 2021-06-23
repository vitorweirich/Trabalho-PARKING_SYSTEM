inherited FormVaga: TFormVaga
  Caption = 'Vaga'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheetCadastro
    inherited TabSheetConsulta: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 287
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomegrupo'
            Title.Caption = 'Nome do Grupo'
            Width = 197
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocupadostr'
            Width = 100
            Visible = True
          end>
      end
    end
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 24
        Width = 75
        Height = 13
        Caption = 'C'#243'digo da Vaga'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 64
        Width = 69
        Height = 13
        Caption = 'Nome da Vaga'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 24
        Top = 104
        Width = 43
        Height = 13
        Caption = 'Ocupado'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 24
        Top = 144
        Width = 80
        Height = 13
        Caption = 'C'#243'digo do Grupo'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 110
        Top = 144
        Width = 74
        Height = 13
        Caption = 'Nome do Grupo'
        FocusControl = DBEdit5
      end
      object ButtonBuscarGrupo: TButton
        Left = 255
        Top = 163
        Width = 89
        Height = 21
        Caption = 'Selecionar Grupo'
        TabOrder = 1
        OnClick = ButtonBuscarGrupoClick
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 40
        Width = 225
        Height = 21
        Color = clSilver
        DataField = 'codigo'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 80
        Width = 225
        Height = 21
        DataField = 'nome'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 120
        Width = 225
        Height = 21
        Color = clSilver
        DataField = 'ocupado'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 163
        Width = 80
        Height = 21
        Color = clSilver
        DataField = 'grupo'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 110
        Top = 163
        Width = 139
        Height = 21
        Color = clSilver
        DataField = 'nomegrupo'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
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
      'join grupo on grupo.codigo = vaga.grupo')
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
      FieldName = 'ocupado'
      Origin = 'ocupado'
    end
    object FDQuerygrupo: TLargeintField
      FieldName = 'grupo'
      Origin = 'grupo'
    end
    object FDQuerynomegrupo: TWideStringField
      AutoGenerateValue = arDefault
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
  inherited frxReport: TfrxReport
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
  end
  object FDQueryDuplicado: TFDQuery
    Connection = FormPrincipal.FDConnection
    SQL.Strings = (
      'select * from vaga where nome = :vaga and '
      'grupo = :grupo')
    Left = 580
    Top = 112
    ParamData = <
      item
        Name = 'VAGA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GRUPO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
end
