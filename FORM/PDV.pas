unit PDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Buttons, StdCtrls;

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
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
