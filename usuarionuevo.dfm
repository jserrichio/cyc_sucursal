object fusuarionuevo: Tfusuarionuevo
  Left = 0
  Top = 0
  Caption = 'fusuarionuevo'
  ClientHeight = 439
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 386
    Height = 441
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 24
      Width = 172
      Height = 13
      Caption = 'INGRESE LOS DATOS DEL USUARIO'
    end
    object Button1: TButton
      Left = 208
      Top = 384
      Width = 121
      Height = 33
      Caption = 'Guardar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 56
      Top = 384
      Width = 121
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object LabeledEdit1: TLabeledEdit
      Left = 56
      Top = 72
      Width = 273
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'NOMBRE'
      TabOrder = 2
    end
    object LabeledEdit2: TLabeledEdit
      Left = 56
      Top = 120
      Width = 273
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'APELLIDO'
      TabOrder = 3
    end
    object LabeledEdit3: TLabeledEdit
      Left = 56
      Top = 168
      Width = 273
      Height = 21
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = 'E-MAIL (opcional)'
      TabOrder = 4
    end
    object LabeledEdit4: TLabeledEdit
      Left = 56
      Top = 224
      Width = 273
      Height = 21
      EditLabel.Width = 68
      EditLabel.Height = 13
      EditLabel.Caption = 'CONTRASE'#209'A'
      PasswordChar = '*'
      TabOrder = 5
    end
  end
end
