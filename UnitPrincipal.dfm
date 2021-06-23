object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Parking'
  ClientHeight = 473
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object LabelUsuario: TLabel
    Left = 0
    Top = 0
    Width = 751
    Height = 23
    Align = alTop
    Alignment = taRightJustify
    Caption = 'LabelUsuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
    ExplicitLeft = 645
    ExplicitWidth = 106
  end
  object MainMenu1: TMainMenu
    Left = 512
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Grupo1: TMenuItem
        Caption = 'Grupo'
        OnClick = Grupo1Click
      end
      object Vaga1: TMenuItem
        Caption = 'Vaga'
        OnClick = Vaga1Click
      end
    end
    object EntradaeSada1: TMenuItem
      Caption = 'Entrada e Sa'#237'da'
      OnClick = EntradaeSada1Click
    end
    object Localizaoes1: TMenuItem
      Caption = 'Localiza'#231#227'oes'
      object VagasporGrupo1: TMenuItem
        Caption = 'Vagas por Grupo'
        OnClick = VagasporGrupo1Click
      end
      object VeculopelaPlaca1: TMenuItem
        Caption = 'Ve'#237'culo pela Placa'
        OnClick = VeculopelaPlaca1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rios'
      object PorGrupo1: TMenuItem
        Caption = 'Por Grupo'
        OnClick = PorGrupo1Click
      end
      object DeRecebimentos1: TMenuItem
        Caption = 'De Recebimentos'
        OnClick = DeRecebimentos1Click
      end
      object SitaucaoAtual1: TMenuItem
        Caption = 'Sitau'#231#227'o Atual'
        OnClick = SitaucaoAtual1Click
      end
      object VeculosAtual1: TMenuItem
        Caption = 'Ve'#237'culos Atual'
        OnClick = VeculosAtual1Click
      end
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=parking'
      'User_Name=postgres'
      'Password=postgres'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 512
    Top = 64
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorLib = 'D:\DELL\Downloads\psqlodbc_12_02_0000\psqlodbc\libpq.dll'
    Left = 512
    Top = 120
  end
end
