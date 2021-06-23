inherited FormRelGrupo: TFormRelGrupo
  Caption = 'Relat'#243'rio por Grupo'
  Color = clWindow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 21
    Width = 80
    Height = 13
    Caption = 'C'#243'digo do Grupo'
  end
  object Label2: TLabel [1]
    Left = 119
    Top = 21
    Width = 74
    Height = 13
    Caption = 'Nome do Grupo'
  end
  object Edit1: TEdit [3]
    Left = 8
    Top = 40
    Width = 105
    Height = 21
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
  end
  object Edit2: TEdit [4]
    Left = 119
    Top = 40
    Width = 171
    Height = 21
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
  end
  object Button1: TButton [5]
    Left = 296
    Top = 40
    Width = 90
    Height = 21
    Caption = 'Selecionar Grupo'
    TabOrder = 3
    OnClick = Button1Click
  end
  inherited frxReport: TfrxReport
    Left = 350
    Top = 101
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    inherited Page1: TfrxReportPage
      inherited ReportTitle1: TfrxReportTitle
        inherited Memo1: TfrxMemoView
          Left = 183.118228500000000000
          Width = 374.173470000000000000
          Memo.UTF8W = (
            'LISTAGEM DE VE'#205'CULOS ESTACIONADOS POR GRUPO')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 49.133890000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da Entrada')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 49.133890000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da Sa'#237'da')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Placa do Ve'#237'culo')
        end
      end
      inherited MasterData1: TfrxMasterData
        Top = 200.315090000000000000
        object frxDBDatasetdata_hora_entrada: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'data_hora_entrada'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."data_hora_entrada"]')
        end
        object frxDBDatasetdata_hora_saida: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'data_hora_saida'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."data_hora_saida"]')
        end
        object frxDBDatasetplaca: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'placa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."placa"]')
        end
      end
      inherited PageFooter1: TfrxPageFooter
        Top = 283.464750000000000000
        inherited Memo2: TfrxMemoView
          Left = 645.921677000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset."nome"'
        object frxDBDatasetnome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."nome"]')
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'select g.nome, e.data_hora_entrada, e.data_hora_saida, '
      'e.placa from'
      'estacionado e join vaga v on v.codigo = e.vaga '
      'join grupo g on v.grupo = g.codigo'
      'where v.grupo = :grupo order by e.data_hora_entrada '
      '')
    Left = 14
    Top = 104
    ParamData = <
      item
        Name = 'GRUPO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited frxDBDataset: TfrxDBDataset
    Left = 206
    Top = 109
  end
end
