object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Conceito de Mensageria'
  ClientHeight = 400
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  DesignSize = (
    660
    400)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 78
    Height = 13
    Caption = 'Origem (Cliente)'
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 36
    Height = 13
    Caption = 'Destino'
  end
  object Label3: TLabel
    Left = 384
    Top = 128
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label4: TLabel
    Left = 40
    Top = 128
    Width = 24
    Height = 13
    Caption = 'A'#231#227'o'
  end
  object Label5: TLabel
    Left = 40
    Top = 184
    Width = 51
    Height = 13
    Caption = 'Mensagem'
  end
  object Label6: TLabel
    Left = 40
    Top = 293
    Width = 24
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Logs'
  end
  object Edit_origem: TEdit
    Left = 40
    Top = 34
    Width = 602
    Height = 30
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    ExplicitWidth = 638
  end
  object Edit_destino: TEdit
    Left = 40
    Top = 91
    Width = 602
    Height = 30
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    ExplicitWidth = 643
  end
  object Edit_acao: TEdit
    Left = 40
    Top = 147
    Width = 305
    Height = 30
    TabOrder = 2
  end
  object Edit_tipo: TEdit
    Left = 384
    Top = 147
    Width = 258
    Height = 30
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
  end
  object Edit_Mensagem: TEdit
    Left = 40
    Top = 200
    Width = 602
    Height = 30
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
  end
  object Memo_Logs: TMemo
    Left = 40
    Top = 312
    Width = 602
    Height = 80
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    ExplicitHeight = 161
  end
  object Btn_conectar: TButton
    Left = 177
    Top = 248
    Width = 149
    Height = 25
    Caption = 'Conectar'
    TabOrder = 6
    OnClick = Btn_conectarClick
  end
  object Btn_EnviarMensagem: TButton
    Left = 360
    Top = 248
    Width = 149
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Enviar Mensagem'
    TabOrder = 7
    OnClick = Btn_EnviarMensagemClick
  end
end
