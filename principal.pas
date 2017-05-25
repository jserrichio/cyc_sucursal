unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, pngimage, ExtCtrls, ComCtrls, StdCtrls, Keyboard;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Inicio1: TMenuItem;
    Productos1: TMenuItem;
    Ingresarproductonuevo1: TMenuItem;
    Stock1: TMenuItem;
    Consultarstock1: TMenuItem;
    Ventas1: TMenuItem;
    Nuevaventa1: TMenuItem;
    Historial1: TMenuItem;
    Salir1: TMenuItem;
    Clientes1: TMenuItem;
    Agregarclientenuevo1: TMenuItem;
    Verclientes1: TMenuItem;
    Informes1: TMenuItem;
    Stock2: TMenuItem;
    Clientes2: TMenuItem;
    Ventas2: TMenuItem;
    Image1: TImage;
    Hombre1: TMenuItem;
    Mujer1: TMenuItem;
    Pantalon1: TMenuItem;
    Remera1: TMenuItem;
    Cinturon1: TMenuItem;
    Pantalon2: TMenuItem;
    Remera2: TMenuItem;
    Cinturon2: TMenuItem;
    Cuentacorriente1: TMenuItem;
    DeudasSaldos1: TMenuItem;
    Pagos1: TMenuItem;
    alleres2: TMenuItem;
    Cobros1: TMenuItem;
    Bolsa1: TMenuItem;
    Medias1: TMenuItem;
    Nios1: TMenuItem;
    Nios2: TMenuItem;
    CuentaCorriente2: TMenuItem;
    Deudadeclientes1: TMenuItem;
    Acercade1: TMenuItem;
    Recuperarproductoeliminado1: TMenuItem;
    Usuarios1: TMenuItem;
    Vermodificarusuarios1: TMenuItem;
    Agregarusuario1: TMenuItem;
    Caja1: TMenuItem;
    Fabrica1: TMenuItem;
    Pedidospendientes1: TMenuItem;
    Stockenfabrica1: TMenuItem;
    procedure Ingresarproductonuevo1Click(Sender: TObject);
    procedure Nuevaventa1Click(Sender: TObject);
    procedure Stock1Click(Sender: TObject);
    procedure Agregarclientenuevo1Click(Sender: TObject);
    procedure Verclientes1Click(Sender: TObject);
    procedure Historial1Click(Sender: TObject);
    procedure Consultarstock1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Pantalon1Click(Sender: TObject);
    procedure Pantalon2Click(Sender: TObject);
    procedure Remera1Click(Sender: TObject);
    procedure Remera2Click(Sender: TObject);
    procedure Cinturon1Click(Sender: TObject);
    procedure Cinturon2Click(Sender: TObject);
    procedure Bolsa1Click(Sender: TObject);
    procedure Medias1Click(Sender: TObject);
    procedure Nios1Click(Sender: TObject);
    procedure Nios2Click(Sender: TObject);
    procedure Deudadeclientes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure Recuperarproductoeliminado1Click(Sender: TObject);
    procedure Vermodificarusuarios1Click(Sender: TObject);
    procedure Caja1Click(Sender: TObject);
    procedure Agregarusuario1Click(Sender: TObject);
  private
    { Private declarations }

 //   procedure reporteSaldoCLientes;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses productonuevo, datamodule, venta, consultarstock, clientenuevo,
  verclientes, historialventas, freporteClientes, reportePantalonHombre,
  reportePantalonMujer, reporteRemeraHombre, reporteRemeraMujer,
  reporteCinturonHombre, reporteCinturonMujer, reporteBolsa,
  cargarstockmedia, reporteMedias, reporteNinosHombre, reporteNinosMujer,
  cargarstockremeras, reporteDeudaClientes, acerca,
  productoEliminado, verusuarios, caja, usuarionuevo;
{$R *.dfm}

procedure TForm1.Acercade1Click(Sender: TObject);
begin
acercade.ShowModal;
end;

procedure TForm1.Agregarclientenuevo1Click(Sender: TObject);
begin
  fclientenuevo.setNuevo;
  fclientenuevo.ShowModal;
end;






procedure TForm1.Agregarusuario1Click(Sender: TObject);
begin
 fusuarionuevo.setNuevo;
 fusuarionuevo.ShowModal;

end;

procedure TForm1.Bolsa1Click(Sender: TObject);
begin
  datamodule1.QreporteBolsa.Active := false;
  datamodule1.QreporteBolsa.Active := true;
  freporteBolsa.QuickRep1.preview;
end;

procedure TForm1.Caja1Click(Sender: TObject);
begin
fcaja.ShowModal;
end;

procedure TForm1.Cinturon1Click(Sender: TObject);
begin
  datamodule1.QreporteCinturonH.Active := false;
  datamodule1.QreporteCinturonH.Active := true;
  freporteCinturonHombre.QuickRep1.preview;
end;

procedure TForm1.Cinturon2Click(Sender: TObject);
begin
  datamodule1.QreporteCinturonM.Active := false;
  datamodule1.QreporteCinturonM.Active := true;
  freporteCinturonMujer.QuickRep1.preview;
end;

procedure TForm1.Clientes2Click(Sender: TObject);
begin
  freportecliente.QuickRep1.preview;
end;


procedure TForm1.Consultarstock1Click(Sender: TObject);
begin
  fconsultarstock.setConsultar;
  fconsultarstock.ShowModal;
end;



procedure TForm1.Deudadeclientes1Click(Sender: TObject);
begin
  //reporteSaldoClientes;

end;


procedure TForm1.FormCreate(Sender: TObject);
begin
//DecimalSeparator := ',';
end;

procedure TForm1.Historial1Click(Sender: TObject);
begin
  fhistorialventas.ShowModal;
end;


procedure TForm1.Ingresarproductonuevo1Click(Sender: TObject);
begin
  fconsultarstock.entrePorConsultar := false;
  fconsultarstock.entrePorModificar := false;
  productonuevof.ShowModal;
end;

procedure TForm1.Medias1Click(Sender: TObject);
begin
  datamodule1.QreporteMedia.Active := false;
  datamodule1.QreporteMedia.Active := true;
  freporteMedias.QuickRep1.preview;
end;





procedure TForm1.Nios1Click(Sender: TObject);
begin
  datamodule1.QreporteninosH.Active := false;
  datamodule1.QreporteninosH.Active := true;
  freporteNinosH.QuickRep1.preview;
end;


{procedure tform1.reporteSaldoCLientes;
var
  aux: double;
begin
  fcuentaCorriente.actualizarSaldoClientes;
  datamodule1.QreporteDeudaClientes.Active := false;
  datamodule1.QreporteDeudaClientes.SQL.Clear;
  datamodule1.QreporteDeudaClientes.SQL.Add(
     'select id_cliente, nombre_cli, saldo from cliente c '
     + 'where saldo <> 0 and nombre_cli <> '+ quotedstr('Incrementar CC'));
  datamodule1.QreporteDeudaClientes.open;
  datamodule1.QreporteDeudaClientes.Active := true;

  if not(datamodule1.QreporteDeudaClientes.IsEmpty) then
  begin
    aux := 0;
    while (not datamodule1.QreporteDeudaClientes.Eof) do
    begin
      aux := aux + datamodule1.QreporteDeudaClientes.FieldByName('saldo')
        .AsFloat;
      datamodule1.QreporteDeudaClientes.Next;
    end;
    freportedeudaclientes.QRLabel17.Caption :=
      'Cuenta corriente: clientes';
    freportedeudaclientes.qrlabel3.caption:= '$ '+floattostr(aux);
    freportedeudaclientes.QuickRep1.preview;
  end
  else
  begin
    ShowMessage('No existen clientes con cuenta corriente activa');
  end;
end;
       }


procedure TForm1.Nios2Click(Sender: TObject);
begin
  datamodule1.QreporteninosM.Active := false;
  datamodule1.QreporteninosM.Active := true;
  fReporteNinosMujer.QuickRep1.preview;
end;




procedure TForm1.Nuevaventa1Click(Sender: TObject);
begin

  fventa.ShowModal;
end;




procedure TForm1.Pantalon1Click(Sender: TObject);
begin
  datamodule1.QreportePantalonH.Active := false;
  datamodule1.QreportePantalonH.Active := true;
  freportePantalonHombre.QuickRep1.preview;
end;

procedure TForm1.Pantalon2Click(Sender: TObject);
begin
  datamodule1.QreportePantalonM.Active := false;
  datamodule1.QreportePantalonM.Active := true;
  freportePantalonMujer.QuickRep1.preview;
end;

procedure TForm1.Recuperarproductoeliminado1Click(Sender: TObject);
begin
  recuperarProducto.ShowModal;
end;

procedure TForm1.Remera1Click(Sender: TObject);
begin
  datamodule1.QreporteRemeraH.Active := false;
  datamodule1.QreporteRemeraH.Active := true;
  freporteRemeraHombre.QuickRep1.preview;
end;

procedure TForm1.Remera2Click(Sender: TObject);
begin
  datamodule1.QreporteRemeraM.Active := false;
  datamodule1.QreporteRemeraM.Active := true;

  freporteRemeraMujer.QuickRep1.preview;
end;



procedure TForm1.Stock1Click(Sender: TObject);
begin
  fconsultarstock.setModificar;
  fconsultarstock.ShowModal;
end;

procedure TForm1.Verclientes1Click(Sender: TObject);
begin
  fverclientes.ShowModal;
end;



procedure TForm1.Vermodificarusuarios1Click(Sender: TObject);
begin
fverusuarios.ShowModal;
end;

end.
