unit usuarionuevo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfusuarionuevo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure guardarUsuario;
    procedure limpiarFormulario;
  public
    { Public declarations }
    procedure cargarUsuario;
    procedure setModificacion;
    procedure setNuevo;
  end;

var
  fusuarionuevo: Tfusuarionuevo;
  modificacion: boolean;
  hayCambios: boolean;

implementation

uses datamodule;
{$R *.dfm}

procedure Tfusuarionuevo.Button1Click(Sender: TObject);
begin
  guardarUsuario;
  limpiarFormulario;
  self.Close;
end;

procedure Tfusuarionuevo.Button2Click(Sender: TObject);
begin
  if MessageDlg('�Desea salir sin guardar los cambios?', mtCustom,
    [mbYes, mbCancel], 0) = mrYes then
  begin
    limpiarFormulario;
    self.Close;
  end;

end;

procedure Tfusuarionuevo.cargarUsuario;
begin
  LabeledEdit1.Text := datamodule1.cliente.FieldByName('nombre').AsString;
  LabeledEdit2.Text := datamodule1.cliente.FieldByName('apellido').AsString;
  LabeledEdit3.Text := datamodule1.cliente.FieldByName('email').AsString;
  LabeledEdit4.Text := datamodule1.cliente.FieldByName('password').AsString;

end;

procedure Tfusuarionuevo.FormShow(Sender: TObject);
begin
  if modificacion then
    self.cargarUsuario;
end;

procedure Tfusuarionuevo.limpiarFormulario;
begin
  LabeledEdit1.Text := '';
  LabeledEdit2.Text := '';
  LabeledEdit3.Text := '';
  LabeledEdit4.Text := '';

end;

procedure Tfusuarionuevo.setModificacion;
begin
  modificacion := true;
end;

procedure Tfusuarionuevo.setNuevo;
begin
  modificacion := false;
end;

procedure Tfusuarionuevo.guardarUsuario;
begin

  if modificacion then
  begin
    datamodule1.modificarUsuario.Parameters.ParamByName('user').Value :=
      datamodule1.cliente.FieldByName('id_usuario').AsInteger;
    datamodule1.modificarUsuario.Parameters.ParamByName('nom').Value :=
      LabeledEdit1.Text;
    datamodule1.modificarUsuario.Parameters.ParamByName('ape').Value :=
      LabeledEdit2.Text;
    datamodule1.modificarUsuario.Parameters.ParamByName('mail').Value :=
      LabeledEdit3.Text;
    datamodule1.modificarUsuario.Parameters.ParamByName('pass').Value :=
      LabeledEdit4.Text;

    datamodule1.modificarUsuario.ExecProc;
    datamodule1.usuario.Refresh;

  end
  else
  begin
    datamodule1.nuevoUsuario.Parameters.ParamByName('nom').Value :=
      LabeledEdit1.Text;
    datamodule1.nuevoUsuario.Parameters.ParamByName('ape').Value :=
      LabeledEdit2.Text;
    datamodule1.nuevoUsuario.Parameters.ParamByName('mail').Value :=
      LabeledEdit3.Text;
    datamodule1.nuevoUsuario.Parameters.ParamByName('pass').Value :=
      LabeledEdit4.Text;

    datamodule1.nuevoUsuario.ExecProc;
    datamodule1.usuario.Refresh;
  end;

end;

end.
