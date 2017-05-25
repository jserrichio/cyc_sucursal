object fcaja: Tfcaja
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Caja'
  ClientHeight = 646
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ingresos: TGroupBox
    Left = 32
    Top = 24
    Width = 577
    Height = 273
    Caption = 'Ingresos'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 16
      Top = 32
      Width = 513
      Height = 217
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object egresos: TGroupBox
    Left = 32
    Top = 311
    Width = 577
    Height = 322
    Caption = 'Egresos'
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 16
      Top = 32
      Width = 513
      Height = 217
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 16
      Top = 272
      Width = 113
      Height = 25
      Caption = 'Registrar egreso'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel1: TPanel
    Left = 624
    Top = 24
    Width = 233
    Height = 609
    TabOrder = 2
    object Button2: TButton
      Left = 32
      Top = 559
      Width = 177
      Height = 25
      Caption = 'Cierre de caja'
      TabOrder = 0
    end
    object LabeledEdit1: TLabeledEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'Caja n'#176
      TabOrder = 1
    end
    object LabeledEdit2: TLabeledEdit
      Left = 32
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Fecha'
      TabOrder = 2
    end
    object LabeledEdit3: TLabeledEdit
      Left = 32
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Monto inicial'
      TabOrder = 3
    end
    object Button3: TButton
      Left = 32
      Top = 511
      Width = 177
      Height = 25
      Caption = 'Abrir caja'
      TabOrder = 4
    end
  end
end
