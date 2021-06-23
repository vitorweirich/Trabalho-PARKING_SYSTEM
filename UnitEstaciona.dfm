inherited FormEstacionado: TFormEstacionado
  Caption = 'Estacionamento de Carros'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheetConsulta: TTabSheet
      inherited Panel2: TPanel
        inherited ButtonAlterar: TButton
          Width = 88
          Caption = 'Cadastrar Sa'#237'da'
          ExplicitWidth = 88
        end
        inherited ButtonExcluir: TButton
          Left = 184
          ExplicitLeft = 184
        end
        inherited ButtonImprimir: TButton
          Left = 265
          ExplicitLeft = 265
        end
      end
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'placa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_hora_entrada'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_hora_saida'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Caption = 'Valor Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vaganome'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gruponome'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorhora'
            Title.Caption = 'Valor p/hora'
            Visible = True
          end>
      end
    end
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 32
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 32
        Top = 56
        Width = 25
        Height = 13
        Caption = 'Placa'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 32
        Top = 96
        Width = 79
        Height = 13
        Caption = 'Data da Entrada'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 32
        Top = 136
        Width = 67
        Height = 13
        Caption = 'Data da Sa'#237'da'
        FocusControl = DBEdit4
      end
      object Label6: TLabel [4]
        Left = 32
        Top = 216
        Width = 75
        Height = 13
        Caption = 'C'#243'digo da Vaga'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [5]
        Left = 120
        Top = 216
        Width = 69
        Height = 13
        Caption = 'Nome da Vaga'
        FocusControl = DBEdit7
      end
      object Label5: TLabel [6]
        Left = 32
        Top = 179
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit5
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 32
        Width = 221
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
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 72
        Width = 221
        Height = 21
        DataField = 'placa'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 32
        Top = 109
        Width = 221
        Height = 21
        Color = clSilver
        DataField = 'data_hora_entrada'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 32
        Top = 152
        Width = 221
        Height = 21
        Color = clSilver
        DataField = 'data_hora_saida'
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
      object DBEdit6: TDBEdit
        Left = 32
        Top = 232
        Width = 75
        Height = 21
        Color = clSilver
        DataField = 'vaga'
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
      object DBEdit7: TDBEdit
        Left = 120
        Top = 232
        Width = 133
        Height = 21
        Color = clSilver
        DataField = 'vaganome'
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
      object ButtonSelecionarVaga: TButton
        Left = 272
        Top = 231
        Width = 105
        Height = 23
        Caption = 'Selecionar Vaga'
        TabOrder = 7
        OnClick = ButtonSelecionarVagaClick
      end
      object DBEdit5: TDBEdit
        Left = 32
        Top = 193
        Width = 221
        Height = 21
        Color = clSilver
        DataField = 'valor'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select e.codigo, e.placa, e.data_hora_entrada, '
      'e.data_hora_saida, e.valor, e.vaga, '
      'v.nome as vagaNome, g.nome as grupoNome, g.valor as valorHora'
      'from estacionado e '
      'join vaga v on e.vaga = v.codigo '
      'join grupo g on v.grupo = g.codigo '
      '')
    Top = 200
    object FDQuerycodigo: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
    end
    object FDQueryplaca: TWideStringField
      DisplayLabel = 'Placa'
      FieldName = 'placa'
      Size = 10
    end
    object FDQuerydata_hora_entrada: TSQLTimeStampField
      DisplayLabel = 'Data da Entrada'
      FieldName = 'data_hora_entrada'
    end
    object FDQuerydata_hora_saida: TSQLTimeStampField
      DisplayLabel = 'Data da Sa'#237'da'
      FieldName = 'data_hora_saida'
    end
    object FDQueryvaganome: TWideStringField
      DisplayLabel = 'Nome da Vaga'
      FieldName = 'vaganome'
      Size = 60
    end
    object FDQuerygruponome: TWideStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'gruponome'
      Size = 60
    end
    object FDQueryvalorhora: TFloatField
      DisplayLabel = 'Valor por Hora'
      FieldName = 'valorhora'
      currency = True
    end
    object FDQueryvaga: TLargeintField
      FieldName = 'vaga'
      Origin = 'vaga'
    end
    object FDQueryvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
  end
  inherited DataSource: TDataSource
    Top = 248
  end
  inherited frxReport: TfrxReport
    Top = 304
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
  end
  inherited frxDBDataset: TfrxDBDataset
    Top = 352
  end
end
