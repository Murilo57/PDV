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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
//  cdsPDV.Open;
//  cdsPDV.Append;
//  cdsPDVID.Value := 1;
//  cdsPDVDESCRICAO.Value := 'Caixa de leite';
//  cdsPDVITEM.Value := 3;
//  cdsPDVVALORUNITARIO.Value := 8.50;
//  cdsPDVQTDE.Value := 6;
//  cdsPDV.Post;
//
//  cdsPDV.Append;
//  cdsPDVID.Value := 2;
//  cdsPDVDESCRICAO.Value := 'Cacho de banana';
//  cdsPDVITEM.Value := 2;
//  cdsPDVVALORUNITARIO.Value := 4.50;
//  cdsPDVQTDE.Value := 10;
//  cdsPDV.Post;
//
//  cdsPDV.Append;
//  cdsPDVID.Value := 3;
//  cdsPDVDESCRICAO.Value := 'Mel';
//  cdsPDVITEM.Value := 6;
//  cdsPDVVALORUNITARIO.Value := 16;
//  cdsPDVQTDE.Value := 1;
//  cdsPDV.Post;
//

end;

end.
