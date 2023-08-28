unit PagePagamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, frxpngimage, Buttons;

type
  TPagePagamento = class(TForm)
    pnlContainer: TPanel;
    pnFormasPagamento: TPanel;
    pnInformacoes: TPanel;
    pnInfoVendas: TPanel;
    pnlResumo: TPanel;
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
    line1: TShape;
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
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    pnFundoCartao: TPanel;
    pnCartao: TPanel;
    Image1: TImage;
    Label1: TLabel;
    pnFundoPix: TPanel;
    pnPix: TPanel;
    Label4: TLabel;
    Image2: TImage;
    pnFundoDinheiro: TPanel;
    pnDinheiro: TPanel;
    Label5: TLabel;
    Image3: TImage;
    pnContainerPix: TPanel;
    Shape2: TShape;
    pnContainerCartao: TPanel;
    Shape3: TShape;
    edNumero: TEdit;
    Image4: TImage;
    Edit3: TEdit;
    Edit4: TEdit;
    lbNomeCliente: TLabel;
    Shape4: TShape;
    cbSalvarConta: TCheckBox;
    lbSeguranca: TLabel;
    Image5: TImage;
    Label7: TLabel;
    pnBtn: TPanel;
    SpeedButton1: TSpeedButton;
    pnPagDinheiro: TPanel;
    Shape6: TShape;
    procedure FormShow(Sender: TObject);
    procedure pnCartaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PagePagamento: TPagePagamento;

implementation

uses FramePx;

{$R *.dfm}

procedure TPagePagamento.FormShow(Sender: TObject);
var
  lFrame: TFramePix;
begin
  lFrame := TFramePix.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnContainerPix;
end;

procedure TPagePagamento.pnCartaoClick(Sender: TObject);
begin
  if pnFundoCartao.Color = clBtnFace then
    pnFundoCartao.Color := $002BC0EC
  else
    pnFundoCartao.Color := clBtnFace;
end;

end.
