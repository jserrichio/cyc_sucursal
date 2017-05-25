unit datamodule;

interface

uses
  SysUtils, Classes, DB, ADODB, inifiles, forms, dialogs, WideStrings, SqlExpr;

type
  TDataModule1 = class(TDataModule)
    producto: TADOTable;
    talle_remera: TADOTable;
    talle_pantalon: TADOTable;
    talle_cinturon: TADOTable;
    dsproducto: TDataSource;
    dstalle_remera: TDataSource;
    dstalle_pantalon: TDataSource;
    dstalle_cinturon: TDataSource;
    QstockTotal: TADOQuery;
    dsQstockTotal: TDataSource;
    cliente: TADOTable;
    dscliente: TDataSource;
    Qcliente: TADOQuery;
    dsqcliente: TDataSource;
    QstockRemera: TADOQuery;
    dsQstockRemera: TDataSource;
    QstockPantalon: TADOQuery;
    dsQstockPantalon: TDataSource;
    QstockCinturon: TADOQuery;
    dsQstockCinturon: TDataSource;
    venta: TADOTable;
    detalle_venta: TADOTable;
    dsVenta: TDataSource;
    dsDetalle_Venta: TDataSource;
    QRemito: TADOQuery;
    dsRemito: TDataSource;
    Qventa: TADOQuery;
    dsqventa: TDataSource;
    QreportePantalonH: TADOQuery;
    QreporteRemeraH: TADOQuery;
    QreporteCinturonH: TADOQuery;
    dsreportePantalonH: TDataSource;
    dsreporteRemeraH: TDataSource;
    dsreporteCinturonH: TDataSource;
    QreportePantalonM: TADOQuery;
    dsreportePantalonM: TDataSource;
    QreporteRemeraM: TADOQuery;
    dsreporteRemeraM: TDataSource;
    QreporteCinturonM: TADOQuery;
    dsreporteCinturonM: TDataSource;
    ADOConnection1: TADOConnection;
    talle_media: TADOTable;
    dstalle_media: TDataSource;
    talle_bolsa: TADOTable;
    dstalle_bolsa: TDataSource;
    QstockMedia: TADOQuery;
    QstockBolsa: TADOQuery;
    dsQstockMedia: TDataSource;
    dsQstockBolsa: TDataSource;
    QCCCliente: TADOQuery;
    dsqcccliente: TDataSource;
    Qpagos: TADOQuery;
    dsQpagos: TDataSource;
    QstockAvio: TADOQuery;
    dsQstockAvio: TDataSource;
    QreporteBolsa: TADOQuery;
    QreporteMedia: TADOQuery;
    dsreporteMedia: TDataSource;
    dsreporteBolsa: TDataSource;
    QreporteTaller: TADOQuery;
    dsreporteTaller: TDataSource;
    QMercaderia: TADOQuery;
    dsqmercaderia: TDataSource;
    foto_producto: TADOTable;
    dsfoto_producto: TDataSource;
    productoid_prod: TAutoIncField;
    productonombre_prod: TStringField;
    productodescripcion_prod: TStringField;
    productotipo_prod: TStringField;
    productosexo_prod: TStringField;
    productoprecio_unitario: TBCDField;
    productoprecio_xmayor: TBCDField;
    productofoto_prod: TBlobField;
    talle_ninos: TADOTable;
    dsninos: TDataSource;
    QreporteNinosH: TADOQuery;
    dsreporteNinosH: TDataSource;
    QreporteNinosM: TADOQuery;
    dsreporteNinosM: TDataSource;
    productonum_prod: TIntegerField;
    QstockNinos: TADOQuery;
    dsQstockNinos: TDataSource;
    QCCTaller: TADOQuery;
    dsqcctaller: TDataSource;
    incrementarSaldoCliente: TADOStoredProc;
    incrementarStockRemera: TADOStoredProc;
    incrementarStockPantalon: TADOStoredProc;
    incrementarStockNino: TADOStoredProc;
    incrementarStockCinturon: TADOStoredProc;
    modificarCliente: TADOStoredProc;
    nuevoCliente: TADOStoredProc;
    qRemitoPago: TADOQuery;
    dsqremitopago: TDataSource;
    modificarCorte: TADOStoredProc;
    QCCTaller2: TADOQuery;
    dsqcctaller2: TDataSource;
    setSaldoCliente: TADOStoredProc;
    productoactivo: TIntegerField;
    QUsuario: TADOQuery;
    DSQUsuario: TDataSource;
    usuario: TADOTable;
    dsusuario: TDataSource;
    nuevoUsuario: TADOStoredProc;
    modificarUsuario: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure activartablas();

    procedure cargarConnectionString();

  public
    { Public declarations }

  end;

var
  DataModule1: TDataModule1;

implementation

uses principal;
{$R *.dfm}

procedure TDataModule1.activartablas;
begin
  producto.Active := true;
  talle_remera.Active := true;
  talle_pantalon.Active := true;
  talle_cinturon.Active := true;
  talle_bolsa.Active := true;
  talle_media.Active := true;
  talle_ninos.Active:=true;
  cliente.Active := true;
  venta.Active := true;
  detalle_venta.Active := true;
  usuario.Active := true;
end;

procedure TDataModule1.cargarConnectionString;
var
  BaseDeDatos: string;
  IniFile: TIniFile;
begin

  // Obtiene la ruta y el nombre de la base de datos
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'conf.ini');
  BaseDeDatos := IniFile.ReadString('BD', 'Path', '');
  If BaseDeDatos = '' then
    ShowMessage('Error al cargar Base de Datos');

  ADOConnection1.Connected := false;
  ADOConnection1.ConnectionString := BaseDeDatos;
  ADOConnection1.Connected := true;

end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  self.cargarConnectionString;
  self.activartablas;
  // self.activarconsultas;
end;

end.
