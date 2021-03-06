object fhistorialcortes: Tfhistorialcortes
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'fhistorialcortes'
  ClientHeight = 523
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 2
    Top = 141
    Width = 743
    Height = 319
    DataSource = DataModule1.dsqcorte
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'num_corte'
        Title.Caption = 'N'#186' corte'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre_prod'
        Title.Caption = 'Producto'
        Width = 293
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Title.Caption = 'Fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cantidad'
        Title.Caption = 'Cantidad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre_taller'
        Title.Caption = 'Taller'
        Width = 231
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 125
    Top = 3
    Width = 257
    Height = 65
    TabOrder = 1
    object Label1: TLabel
      Left = 19
      Top = 9
      Width = 30
      Height = 13
      Caption = 'Desde'
    end
    object Label2: TLabel
      Left = 141
      Top = 9
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 16
      Top = 27
      Width = 105
      Height = 21
      Date = 41619.678001215280000000
      Time = 41619.678001215280000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 138
      Top = 27
      Width = 105
      Height = 21
      Date = 41619.678001215280000000
      Time = 41619.678001215280000000
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 114
    Top = 466
    Width = 521
    Height = 59
    TabOrder = 2
    object Button1: TButton
      Left = 365
      Top = 12
      Width = 137
      Height = 33
      Caption = 'Salir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 18
      Top = 12
      Width = 138
      Height = 33
      Caption = 'Eliminar corte'
      Enabled = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 184
      Top = 12
      Width = 138
      Height = 33
      Caption = 'Modificar corte'
      Enabled = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    Left = 373
    Top = 3
    Width = 263
    Height = 65
    TabOrder = 3
    object LabeledEdit1: TLabeledEdit
      Left = 15
      Top = 27
      Width = 228
      Height = 21
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = 'Taller'
      TabOrder = 0
      OnChange = LabeledEdit1Change
    end
  end
  object Panel4: TPanel
    Left = 114
    Top = 74
    Width = 522
    Height = 66
    TabOrder = 4
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 9
      Width = 482
      Height = 40
      Caption = 'Filtros'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ninguno'
        'Filtrar por fecha'
        'Filtrar por taller')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
  end
end
