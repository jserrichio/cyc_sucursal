unit verusuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Tfverusuarios = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure actualizarConsulta;
    procedure cargarUsuarioEnComponente;
    procedure actualizarPunteroUsuario;
  public
    { Public declarations }
  end;

var
  fverusuarios: Tfverusuarios;

implementation

uses datamodule, usuarionuevo;
{$R *.dfm}

procedure Tfverusuarios.Button1Click(Sender: TObject);
begin
  fusuarionuevo.setModificacion;
  fusuarionuevo.ShowModal;
  self.actualizarConsulta;

end;

procedure Tfverusuarios.Button2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tfverusuarios.Button3Click(Sender: TObject);
begin
  fusuarionuevo.setNuevo;
  fusuarionuevo.ShowModal;
  self.actualizarConsulta;

end;

procedure Tfverusuarios.actualizarConsulta;
begin
  datamodule1.Qusuario.SQL.Clear;
  datamodule1.Qusuario.SQL.Add('select * from usuario');
  datamodule1.Qusuario.Open;
  datamodule1.Qusuario.Active := true;
end;

procedure Tfverusuarios.cargarUsuarioEnComponente;
begin
  // cargar cliente seleccionado en labelededit
  LabeledEdit1.Text := datamodule1.usuario.FieldByName('nombre').AsString;
  LabeledEdit2.Text := datamodule1.usuario.FieldByName('apellido').AsString;
  LabeledEdit5.Text := datamodule1.usuario.FieldByName('email').AsString;

end;

procedure Tfverusuarios.DBGrid1CellClick(Column: TColumn);
begin
 self.actualizarPunteroUsuario;
 self.cargarUsuarioEnComponente;
end;

procedure Tfverusuarios.FormShow(Sender: TObject);
begin
  self.actualizarConsulta;
end;

procedure Tfverusuarios.actualizarPunteroUsuario;
begin
datamodule1.usuario.Locate('id_usuario',datamodule1.Qusuario.FieldByName('id_usuario').AsString,[]);
end;

end.
