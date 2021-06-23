object FormBase: TFormBase
  Left = 0
  Top = 0
  Caption = 'FormBase'
  ClientHeight = 489
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 728
    Height = 489
    ActivePage = TabSheetConsulta
    Align = alClient
    TabOrder = 0
    object TabSheetConsulta: TTabSheet
      Caption = 'Consulta'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 720
        Height = 41
        Align = alTop
        TabOrder = 0
        DesignSize = (
          720
          41)
        object EditBusca: TEdit
          Left = 25
          Top = 10
          Width = 671
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          TextHint = 'Pesquisar'
          OnChange = EditBuscaChange
        end
        object ButtonBusca: TButton
          Left = 621
          Top = 10
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Buscar'
          Default = True
          TabOrder = 1
          Visible = False
          OnClick = ButtonBuscaClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 420
        Width = 720
        Height = 41
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          720
          41)
        object ButtonInserir: TButton
          Left = 8
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
          OnClick = ButtonInserirClick
        end
        object ButtonAlterar: TButton
          Left = 89
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = ButtonAlterarClick
        end
        object ButtonExcluir: TButton
          Left = 170
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = ButtonExcluirClick
        end
        object ButtonImprimir: TButton
          Left = 251
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 3
          OnClick = ButtonImprimirClick
        end
        object ButtonFechar: TButton
          Left = 621
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = 'Fechar'
          TabOrder = 4
          OnClick = ButtonFecharClick
        end
        object ButtonSelecionar: TButton
          Left = 542
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Selecionar'
          TabOrder = 5
          Visible = False
          OnClick = ButtonSelecionarClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 720
        Height = 379
        Align = alClient
        DataSource = DataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheetCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 420
        Width = 720
        Height = 41
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          720
          41)
        object ButtonSalvar: TButton
          Left = 32
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 0
          OnClick = ButtonSalvarClick
        end
        object ButtonCancelar: TButton
          Left = 128
          Top = 8
          Width = 75
          Height = 25
          Cancel = True
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = ButtonCancelarClick
        end
        object ButtonFechar2: TButton
          Left = 629
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = 'Fechar'
          TabOrder = 2
          OnClick = ButtonFecharClick
        end
      end
    end
  end
  object FDQuery: TFDQuery
    Connection = FormPrincipal.FDConnection
    Left = 668
    Top = 72
  end
  object DataSource: TDataSource
    DataSet = FDQuery
    Left = 668
    Top = 128
  end
  object frxReport: TfrxReport
    Version = '2021.0.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44338.795890601900000000
    ReportOptions.LastChange = 44338.811302766200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 668
    Top = 192
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 260.598593500000000000
          Top = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LISTAGEM DE')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 645.921677000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina [Page#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[<Date>][<Time>]')
        end
      end
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = FDQuery
    BCDToCurrency = False
    Left = 668
    Top = 256
  end
end
