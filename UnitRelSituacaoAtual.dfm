inherited FormRelSituacaoAtual: TFormRelSituacaoAtual
  Caption = 'Relat'#243'rio de Situa'#231#227'o Atual'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited ButtonImprimir: TButton
      ExplicitLeft = 64
    end
    inherited ButtonFechar: TButton
      ExplicitLeft = 256
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
    inherited Page1: TfrxReportPage
      inherited ReportTitle1: TfrxReportTitle
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 49.133890000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nome da Vaga')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 49.133890000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o da Vaga')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 200.315090000000000000
        object frxDBDatasetnome1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 147.401670000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset."nome"]')
          ParentFont = False
        end
        object frxDBDatasetocupadostr: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'ocupadostr'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset."ocupadostr"]')
          ParentFont = False
        end
      end
      inherited PageFooter1: TfrxPageFooter
        Top = 287.244280000000000000
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
        Condition = 'frxDBDataset."nomegrupo"'
        object frxDBDatasetnomegrupo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.677180000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nomegrupo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."nomegrupo"]')
          ParentFont = False
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'select vaga.nome, grupo.nome as nomeGrupo,'
      'cast(case vaga.ocupado'
      '        when 0 then '#39'Livre'#39
      '        when 1 then '#39'Ocupada'#39
      '        end as varchar) as ocupadoStr'
      'from vaga '
      'join grupo on grupo.codigo = vaga.grupo '
      'order by nomeGrupo, vaga.nome')
  end
end
