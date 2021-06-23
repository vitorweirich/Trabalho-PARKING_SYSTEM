inherited FormRelRecebimentos: TFormRelRecebimentos
  Caption = 'Relat'#243'rio de Recebimentos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 29
    Width = 55
    Height = 13
    Caption = 'Data inicial:'
  end
  object Label2: TLabel [1]
    Left = 216
    Top = 29
    Width = 46
    Height = 13
    Caption = 'Data final'
  end
  inherited Panel1: TPanel
    inherited ButtonImprimir: TButton
      ExplicitLeft = 64
    end
    inherited ButtonFechar: TButton
      ExplicitLeft = 256
    end
  end
  object DatePicker1: TDatePicker [3]
    Left = 24
    Top = 48
    Date = 44353.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 1
  end
  object DatePicker2: TDatePicker [4]
    Left = 216
    Top = 48
    Date = 44353.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 2
  end
  inherited frxReport: TfrxReport
    Left = 166
    Top = 93
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
          Top = 7.559060000000000000
          Memo.UTF8W = (
            'LISTAGEM DE RECEBIMENTOS')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Placa')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 49.133890000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da Entrada')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 49.133890000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da Sa'#237'da')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Recebido')
        end
      end
      inherited MasterData1: TfrxMasterData
        Top = 200.315090000000000000
        object frxDBDatasetplaca: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 173.858380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'placa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."placa"]')
          ParentFont = False
        end
        object frxDBDatasetdata_hora_saida: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'data_hora_saida'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."data_hora_saida"]')
        end
        object frxDBDatasetdata_hora_entrada1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 279.685220000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'data_hora_entrada'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."data_hora_entrada"]')
        end
        object frxDBDatasetvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."valor"]')
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
        Condition = 'frxDBDataset."dataentrada"'
        object frxDBDatasetdataentrada: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'dataentrada'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."dataentrada"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'select e.*, data_hora_entrada::date as dataEntrada'
      'from estacionado e'
      ' where data_hora_entrada::date '
      'between :inicio and :fim and'
      'data_hora_saida::date '
      'between :inicio and :fim '
      'and valor is not null'
      'group by data_hora_entrada::date, '
      'e.codigo, e.data_hora_entrada, e.data_hora_saida, '
      'e.placa, e.valor'
      'order by data_hora_saida')
    Left = 22
    Top = 88
    ParamData = <
      item
        Name = 'INICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQuerycodigo: TLargeintField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQueryplaca: TWideStringField
      FieldName = 'placa'
      Origin = 'placa'
      Size = 10
    end
    object FDQuerydata_hora_entrada: TSQLTimeStampField
      FieldName = 'data_hora_entrada'
      Origin = 'data_hora_entrada'
    end
    object FDQueryvaga: TLargeintField
      FieldName = 'vaga'
      Origin = 'vaga'
    end
    object FDQuerydata_hora_saida: TSQLTimeStampField
      FieldName = 'data_hora_saida'
      Origin = 'data_hora_saida'
    end
    object FDQueryvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object FDQuerydataentrada: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataentrada'
      Origin = 'dataentrada'
      ReadOnly = True
    end
  end
  inherited frxDBDataset: TfrxDBDataset
    Left = 342
    Top = 101
  end
end
