unit PDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Buttons, StdCtrls, jpeg;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPDV: TfrmPDV;

implementation

{$R *.dfm}

end.
