unit PagePagamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TPagePagamento = class(TForm)
    pnlContainer: TPanel;
    pnFormasPagamento: TPanel;
    pnInformacoes: TPanel;
    pnInfoVendas: TPanel;
    pnlResumo: TPanel;
    pnCancelar: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Panel6: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Shape2: TShape;
    Panel7: TPanel;
    Panel8: TPanel;
    Label9: TLabel;
    Label10: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PagePagamento: TPagePagamento;

implementation

{$R *.dfm}

end.
