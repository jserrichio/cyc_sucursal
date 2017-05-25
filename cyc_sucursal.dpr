program cyc_sucursal;

uses
  Forms,
  principal in 'principal.pas' {Form1},
  productonuevo in 'productonuevo.pas' {productonuevof},
  datamodule in 'datamodule.pas' {DataModule1: TDataModule},
  cargarstockremeras in 'cargarstockremeras.pas' {fcargarstockremeras},
  cargarstockpantalon in 'cargarstockpantalon.pas' {fcargarstockpantalon},
  cargarstockcinturon in 'cargarstockcinturon.pas' {fcargarstockcinturon},
  venta in 'venta.pas' {fventa},
  consultarstock in 'consultarstock.pas' {fconsultarstock},
  clientenuevo in 'clientenuevo.pas' {fclientenuevo},
  verclientes in 'verclientes.pas' {fverclientes},
  remito in 'remito.pas' {fRemito},
  historialventas in 'historialventas.pas' {fhistorialventas},
  freporteClientes in 'freporteClientes.pas' {freporteCliente},
  reportePantalonHombre in 'reportePantalonHombre.pas' {freportePantalonHombre},
  reportePantalonMujer in 'reportePantalonMujer.pas' {freportePantalonMujer},
  reporteRemeraHombre in 'reporteRemeraHombre.pas' {freporteRemeraHombre},
  reporteRemeraMujer in 'reporteRemeraMujer.pas' {freporteRemeraMujer},
  reporteCinturonHombre in 'reporteCinturonHombre.pas' {freporteCinturonHombre},
  reporteCinturonMujer in 'reporteCinturonMujer.pas' {freporteCinturonMujer},
  devolucion in 'devolucion.pas' {fdevolucion},
  cargarstockbolsa in 'cargarstockbolsa.pas' {fcargarstockbolsa},
  cargarstockmedia in 'cargarstockmedia.pas' {fcargarstockmedia},
  reporteBolsa in 'reporteBolsa.pas' {Form2},
  reporteMedias in 'reporteMedias.pas' {freporteMedias},
  cargarstockninos in 'cargarstockninos.pas' {fcargarstockninos},
  reporteNinosHombre in 'reporteNinosHombre.pas' {freporteNinosH},
  reporteNinosMujer in 'reporteNinosMujer.pas' {fReporteNinosMujer},
  remitoPago in 'remitoPago.pas' {fremitoPago},
  acerca in 'acerca.pas' {acercade},
  productoEliminado in 'productoEliminado.pas' {recuperarProducto},
  caja in 'caja.pas' {fcaja},
  usuarionuevo in 'usuarionuevo.pas' {fusuarionuevo},
  verusuarios in 'verusuarios.pas' {fverusuarios},
  egreso in 'egreso.pas' {fegreso};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'C&C - Fabrica';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfcargarstockremeras, fcargarstockremeras);
  Application.CreateForm(Tfcargarstockpantalon, fcargarstockpantalon);
  Application.CreateForm(Tfcargarstockcinturon, fcargarstockcinturon);
  Application.CreateForm(Tfventa, fventa);
  Application.CreateForm(Tproductonuevof, productonuevof);
  Application.CreateForm(Tfconsultarstock, fconsultarstock);
  Application.CreateForm(Tfclientenuevo, fclientenuevo);
  Application.CreateForm(Tfverclientes, fverclientes);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfRemito, fRemito);
  Application.CreateForm(Tfhistorialventas, fhistorialventas);
  Application.CreateForm(TfreporteCliente, freporteCliente);
  Application.CreateForm(TfreportePantalonHombre, freportePantalonHombre);
  Application.CreateForm(TfreportePantalonMujer, freportePantalonMujer);
  Application.CreateForm(TfreporteRemeraHombre, freporteRemeraHombre);
  Application.CreateForm(TfreporteRemeraMujer, freporteRemeraMujer);
  Application.CreateForm(TfreporteCinturonHombre, freporteCinturonHombre);
  Application.CreateForm(TfreporteCinturonMujer, freporteCinturonMujer);
  Application.CreateForm(Tfdevolucion, fdevolucion);
  Application.CreateForm(Tfcargarstockbolsa, fcargarstockbolsa);
  Application.CreateForm(Tfcargarstockmedia, fcargarstockmedia);
  Application.CreateForm(TfreporteBolsa, freporteBolsa);
  Application.CreateForm(TfreporteMedias, freporteMedias);
  Application.CreateForm(Tfcargarstockninos, fcargarstockninos);
  Application.CreateForm(TfreporteNinosH, freporteNinosH);
  Application.CreateForm(TfReporteNinosMujer, fReporteNinosMujer);
  Application.CreateForm(TfremitoPago, fremitoPago);
  Application.CreateForm(Tfcaja, fcaja);
  Application.CreateForm(Tfusuarionuevo, fusuarionuevo);
  Application.CreateForm(Tfverusuarios, fverusuarios);
  Application.CreateForm(Tfegreso, fegreso);
  //  Application.CreateForm(TfReporteDeudaClientes, fReporteDeudaClientes);
  Application.CreateForm(Tacercade, acercade);
  Application.CreateForm(TrecuperarProducto, recuperarProducto);
  Application.Run;
end.
