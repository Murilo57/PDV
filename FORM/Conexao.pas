unit Conexao;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  Tdm = class(TDataModule)
    sqlconexao: TSQLConnection;
    dtsLogin: TDataSource;
    cdsLogin: TClientDataSet;
    dspLogin: TDataSetProvider;
    sqlLogin: TSQLDataSet;
    sqlLoginID: TIntegerField;
    sqlLoginNOME: TStringField;
    sqlLoginLOGIN: TStringField;
    sqlLoginSENHA: TStringField;
    sqlLoginNIVEL: TStringField;
    cdsLoginID: TIntegerField;
    cdsLoginNOME: TStringField;
    cdsLoginLOGIN: TStringField;
    cdsLoginSENHA: TStringField;
    cdsLoginNIVEL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
