object fverusuarios: Tfverusuarios
  Left = 0
  Top = 0
  Caption = 'Usuarios'
  ClientHeight = 433
  ClientWidth = 688
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 433
    TabOrder = 0
    object Panel3: TPanel
      Left = 13
      Top = 352
      Width = 660
      Height = 65
      TabOrder = 0
      object Button2: TButton
        Left = 32
        Top = 16
        Width = 97
        Height = 33
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 304
        Top = 16
        Width = 153
        Height = 33
        Caption = 'Agregar usuario nuevo'
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button1: TButton
        Left = 479
        Top = 16
        Width = 153
        Height = 33
        Caption = 'Modificar usuario actual'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 13
      Top = 87
      Width = 660
      Height = 259
      DataSource = DataModule1.DSQUsuario
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nombre'
          Title.Caption = 'Nombre'
          Width = 153
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'apellido'
          Title.Caption = 'Apellido'
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Title.Caption = 'e-mail'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 13
      Top = 16
      Width = 660
      Height = 57
      TabOrder = 2
      object LabeledEdit1: TLabeledEdit
        Left = 13
        Top = 21
        Width = 172
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Nombre'
        TabOrder = 0
      end
      object LabeledEdit5: TLabeledEdit
        Left = 503
        Top = 21
        Width = 138
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'E-Mail'
        ReadOnly = True
        TabOrder = 1
      end
      object LabeledEdit2: TLabeledEdit
        Left = 226
        Top = 21
        Width = 172
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Apellido'
        TabOrder = 2
      end
    end
  end
end
