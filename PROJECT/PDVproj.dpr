program PDVproj;

uses
  Forms,
  PDV in '..\FORM\PDV.pas' {frmPDV};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPDV, frmPDV);
  Application.Run;
end.
