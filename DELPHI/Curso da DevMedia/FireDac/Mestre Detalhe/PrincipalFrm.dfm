object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 478
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 59
    Width = 69
    Height = 23
    Caption = 'Vendas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 321
    Top = 59
    Width = 151
    Height = 23
    Caption = 'Venda Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 321
    Top = 267
    Width = 57
    Height = 23
    Caption = 'Cache'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object tblFuncoes: TToolBar
    Left = 0
    Top = 0
    Width = 706
    Height = 49
    ButtonHeight = 46
    Caption = 'tblFuncoes'
    TabOrder = 0
    object btnVerAlteracoes: TButton
      Left = 0
      Top = 0
      Width = 97
      Height = 46
      Caption = 'Ver Altera'#231#245'es'
      TabOrder = 6
      OnClick = btnVerAlteracoesClick
    end
    object btnUltimaAlteracao: TButton
      Left = 97
      Top = 0
      Width = 96
      Height = 46
      Caption = #218'ltima Altera'#231#227'o'
      TabOrder = 5
      OnClick = btnUltimaAlteracaoClick
    end
    object btnReverter: TButton
      Left = 193
      Top = 0
      Width = 80
      Height = 46
      Caption = 'Reverter'
      TabOrder = 4
      OnClick = btnReverterClick
    end
    object btnCancelar: TButton
      Left = 273
      Top = 0
      Width = 88
      Height = 46
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnCriarSavePoint: TButton
      Left = 361
      Top = 0
      Width = 96
      Height = 46
      Caption = 'Criar Save Point'
      TabOrder = 2
      OnClick = btnCriarSavePointClick
    end
    object btnRestaurarSavePoint: TButton
      Left = 457
      Top = 0
      Width = 128
      Height = 46
      Caption = 'Restaurar Save Point'
      TabOrder = 1
      OnClick = btnRestaurarSavePointClick
    end
    object btnGravar: TButton
      Left = 585
      Top = 0
      Width = 96
      Height = 46
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = btnGravarClick
    end
  end
  object grdVendas: TDBGrid
    Left = 25
    Top = 88
    Width = 248
    Height = 145
    DataSource = dtmConexao.dsVendas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object grdVendaProdutos: TDBGrid
    Left = 321
    Top = 88
    Width = 356
    Height = 145
    DataSource = dtmConexao.dsVendaProdutos
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object grdCache: TDBGrid
    Left = 25
    Top = 296
    Width = 652
    Height = 145
    DataSource = dtmConexao.dsCache
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
