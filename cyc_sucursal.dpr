program cyc_sucursal;

uses
  Forms,
  principal in 'principal.pas' {form_principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.Run;
end.
