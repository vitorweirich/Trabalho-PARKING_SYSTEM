inherited FormRelVeiculosAtual: TFormRelVeiculosAtual
  Caption = 'Veiculos Atual'
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
        inherited Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Memo.UTF8W = (
            'LISTAGEM DE VE'#205'CULOS ATUAL')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 45.354360000000000000
          Width = 200.315090000000000000
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
          Left = 328.819110000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Placa do Ve'#237'culo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 45.354360000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data da Entrada do Ve'#237'culo')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        Top = 200.315090000000000000
        object frxDBDatasetvaganome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'vaganome'
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
            '[frxDBDataset."vaganome"]')
          ParentFont = False
        end
        object frxDBDatasetplaca: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
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
        object frxDBDatasetdata_hora_entrada: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'data_hora_entrada'
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
            '[frxDBDataset."data_hora_entrada"]')
          ParentFont = False
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
        Condition = 'frxDBDataset."gruponome"'
        object frxDBDatasetgruponome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'gruponome'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."gruponome"]')
          ParentFont = False
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      
        'select e.placa, v.nome as vagaNome, g.nome as grupoNome, data_ho' +
        'ra_entrada '
      
        'from (select * from  estacionado e where data_hora_saida is null' +
        ') as e'
      'join vaga v on e.vaga = v.codigo '
      'join grupo g on v.grupo = g.codigo '
      'order by grupoNome, vagaNome')
  end
end
