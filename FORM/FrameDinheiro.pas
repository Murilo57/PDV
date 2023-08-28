unit FrameDinheiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TFraDinheiro = class(TFrame)
    pnCentro: TPanel;
    edTroco: TEdit;
    Label2: TLabel;
    edValoraPagar: TEdit;
    lbValorPago: TLabel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
