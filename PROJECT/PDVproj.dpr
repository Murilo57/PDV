program PDVproj;

uses
  Forms,
  PDV in '..\FORM\PDV.pas' {frmPDV},
  Login in '..\FORM\Login.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPDV, frmPDV);
  Application.Run;
end.
