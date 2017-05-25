unit egreso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfegreso = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function camposCompletos: boolean;
    procedure guardarEgreso();

  public
    { Public declarations }
    procedure limpiarFormulario();
  end;

var
  fegreso: Tfegreso;

implementation

{$R *.dfm}


procedure tfegreso.limpiarFormulario;
begin
  labelededit1.Text:='';
  labelededit2.Text:='';

end;

procedure Tfegreso.Button1Click(Sender: TObject);
begin
  if self.camposCompletos then
  begin
    self.guardarEgreso;
  end;

end;

procedure Tfegreso.guardarEgreso;
begin
  // aca registro un egreso en la BD
end;

procedure Tfegreso.Button2Click(Sender: TObject);
begin
  if MessageDlg('¿Desea salir sin guardar los cambios?', mtCustom,
    [mbYes, mbCancel], 0) = mrYes then
  begin
    self.limpiarformulario;
    self.Close;
  end;

end;

function Tfegreso.camposCompletos;
// verifico que esten todos los campos completos y que el monto es un numero
begin
  try
    strtofloat(LabeledEdit1.Text);
    if ((LabeledEdit1.Text <> '') and (LabeledEdit2.Text <> '')) then
    begin
      result := true;
    end
    else
    begin
      ShowMessage('Complete los 2 campos');
      result := false;
    end;
  except
    on econverterror do
      ShowMessage('Verifique el monto ingresado');

  end;
end;

end.
