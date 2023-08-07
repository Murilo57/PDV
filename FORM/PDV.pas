unit PDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Buttons, StdCtrls, jpeg, DB, FMTBcd,
  SqlExpr, Provider, DBClient;

type
  TfrmPDV = class(TForm)
    pnlTop: TPanel;
    pnlCentro: TPanel;
    pnInfos: TPanel;
    pnlButtons: TPanel;
    pnButtons: TPanel;
    gridProdutos: TDBGrid;
    btnMaisFuncoes: TSpeedButton;
    btnCancelarOp: TSpeedButton;
    btnCarncelarItems: TSpeedButton;
    btnConsultaPreco: TSpeedButton;
    btnAbrirCaixa: TSpeedButton;
    btnCancelarVenda: TSpeedButton;
    btnDevolucao: TSpeedButton;
    pnTotalDaCompra: TPanel;
    pnSubTotal: TPanel;
    pnQuantidade: TPanel;
    pnlImagem: TPanel;
    pnPreco: TPanel;
    imgProduto: TImage;
    lbPreco: TLabel;
    lbQuantidade: TLabel;
    lbSubTotal: TLabel;
    lbTotalDaCompra: TLabel;
    pnTotalDaCompra2: TPanel;
    pnSubTotal2: TPanel;
    pnQtde: TPanel;
    pnPreco2: TPanel;
    lbRSPreco: TLabel;
    lbQtde: TLabel;
    lbRSSubTotal: TLabel;
    lbRSTotalDaCompra: TLabel;
    pnProduto: TPanel;
    lbProduto: TLabel;
    pnProduto2: TPanel;
    lbCodProd: TLabel;
    dtsPDV: TDataSource;
    cdsPDV: TClientDataSet;
    cdsPDVID: TIntegerField;
    cdsPDVITEM: TIntegerField;
    cdsPDVDESCRICAO: TStringField;
    cdsPDVVALORUNITARIO: TFMTBCDField;
    cdsPDVQTDE: TFMTBCDField;
    cdsPDVSUBTOTAL: TFMTBCDField;
    cdsPDVVALORTOTAL: TFMTBCDField;
    dspPDV: TDataSetProvider;
    sqlPDV: TSQLDataSet;
    sqlPDVID: TIntegerField;
    sqlPDVITEM: TIntegerField;
    sqlPDVDESCRICAO: TStringField;
    sqlPDVVALORUNITARIO: TFMTBCDField;
    sqlPDVQTDE: TFMTBCDField;
    sqlPDVSUBTOTAL: TFMTBCDField;
    sqlPDVVALORTOTAL: TFMTBCDField;
    cdsPDVTOTAL: TFloatField;
    pnlFuncoes: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    procedure btnMaisFuncoesClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsPDVCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPDV: TfrmPDV;

implementation

uses Conexao;

{$R *.dfm}

procedure TfrmPDV.btnMaisFuncoesClick(Sender: TObject);
begin
    if pnlFuncoes.Visible = False then
    begin
      pnlFuncoes.Visible := True;
      pnlFuncoes.Align := alRight
    end
    else
      pnlFuncoes.Visible := False;
end;

procedure TfrmPDV.cdsPDVCalcFields(DataSet: TDataSet);
begin
    cdsPDVSUBTOTAL.AsFloat := cdsPDVVALORUNITARIO.AsFloat * cdsPDVQTDE.AsFloat;
end;

procedure TfrmPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F12: btnMaisFuncoesClick(nil);
  end;
end;

procedure TfrmPDV.FormShow(Sender: TObject);
begin
  cdsPDV.Open;
end;

end.
