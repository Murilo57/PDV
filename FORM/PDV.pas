unit PDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfrmPDV = class(TForm)
    pnlTop: TPanel;
    pnlCentro: TPanel;
    pnInfos: TPanel;
    pnlButtons: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
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