unit PDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Buttons, StdCtrls, jpeg, DB, FMTBcd,
  SqlExpr, Provider, DBClient, DBCtrls, frxpngimage;

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
    pnlFuncoes: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    DBText1: TDBText;
    txtTotal: TDBText;
    cdsPDVTOTALCOMPRA: TFloatField;
    pnPagamento: TPanel;
    pnFormasPagamento: TPanel;
    pnInformacoes: TPanel;
    pnInfoVendas: TPanel;
    line1: TShape;
    pnCancelar: TPanel;
    pnlInfos: TPanel;
    pnlAcrescimo: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    pnEditar: TPanel;
    imgEditar: TImage;
    lbEditar: TLabel;
    pnTotaldeVenda: TPanel;
    lbTotalVenda: TLabel;
    lbVal1: TLabel;
    pnDesconto: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    pnTotalReceber: TPanel;
    lbTotalReceber: TLabel;
    lbval: TLabel;
    pnlInfos2: TPanel;
    pnTotalRecebido: TPanel;
    lbTotalRecebido: TLabel;
    lbVal3: TLabel;
    pnSaldoRestante: TPanel;
    lbSaldoRestante: TLabel;
    lbVal2: TLabel;
    pnTroco: TPanel;
    lbTroco: TLabel;
    lbVal4: TLabel;
    pnlResumo: TPanel;
    Panel1: TPanel;
    btnFecharVenda: TSpeedButton;
    Panel6: TPanel;
    Panel8: TPanel;
    pnFundoCartao: TPanel;
    pnCartao: TPanel;
    pnFundoPix: TPanel;
    pnFundoDinheiro: TPanel;
    pnDinheiro: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Shape1: TShape;
    Panel11: TPanel;
    pnPix: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Image2: TImage;
    Label5: TLabel;
    Image3: TImage;
    procedure pnDinheiroClick(Sender: TObject);
    procedure pnPixClick(Sender: TObject);
    procedure pnCartaoClick(Sender: TObject);
    procedure btnFecharVendaClick(Sender: TObject);
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

uses Conexao, PagePagamentos;

{$R *.dfm}

procedure TfrmPDV.btnFecharVendaClick(Sender: TObject);
begin
  if pnPagamento.Visible = False then
    pnPagamento.Visible := True
  else
    pnPagamento.Visible := False;
end;

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
var
  I: Double;
begin
//  cdsPDV.First;
//  while not cdsPDV.Eof do
//  begin
//    I := cdsPDVSUBTOTAL.AsFloat;
//    cdsPDV.Next;
//  end;
//  cdsPDVTOTALCOMPRA.AsFloat := I;
  cdsPDVSUBTOTAL.AsFloat := cdsPDVVALORUNITARIO.AsFloat * cdsPDVQTDE.AsFloat;
end;

procedure TfrmPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  lPagamentos: TPagePagamento;
begin
  case Key of
    VK_F12: btnMaisFuncoesClick(Sender);
    VK_F7: btnFecharVendaClick(Sender);
  end;
end;

procedure TfrmPDV.FormShow(Sender: TObject);
begin
  cdsPDV.Open;
end;

procedure TfrmPDV.pnCartaoClick(Sender: TObject);
begin
  if (pnFundoPix.Color = $002BC0EC) or (pnFundoDinheiro.Color = $002BC0EC) then
  begin
    pnFundoPix.Color := clBtnFace;
    pnFundoDinheiro.Color := clBtnFace;
  end;

  if pnFundoCartao.Color = clBtnFace then
    pnFundoCartao.Color := $002BC0EC
  else
    pnFundoCartao.Color := clBtnFace;

end;

procedure TfrmPDV.pnDinheiroClick(Sender: TObject);
begin
  if (pnFundoPix.Color = $002BC0EC) or (pnFundoCartao.Color = $002BC0EC) then
  begin
    pnFundoPix.Color := clBtnFace;
    pnFundoCartao.Color := clBtnFace;
  end;

  if pnFundoDinheiro.Color = clBtnFace then
    pnFundoDinheiro.Color := $002BC0EC
  else
    pnFundoDinheiro.Color := clBtnFace;
end;

procedure TfrmPDV.pnPixClick(Sender: TObject);
begin
  if (pnFundoCartao.Color = $002BC0EC) or (pnFundoDinheiro.Color = $002BC0EC) then
  begin
    pnFundoCartao.Color := clBtnFace;
    pnFundoDinheiro.Color := clBtnFace;
  end;

  if pnFundoPix.Color = clBtnFace then
    pnFundoPix.Color := $002BC0EC
  else
    pnFundoPix.Color := clBtnFace;
end;

end.
