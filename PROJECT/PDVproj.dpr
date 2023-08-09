program PDVproj;



uses
  Forms,
  PDV in '..\FORM\PDV.pas' {frmPDV},
  Login in '..\FORM\Login.pas' {frmLogin},
  Conexao in '..\FORM\Conexao.pas' {dm: TDataModule},
  UMensagem in '..\FORM\UMensagem.pas' {msg},
  PagePagamentos in '..\FORM\PagePagamentos.pas' {PagePagamento},
  FramePx in '..\FORM\FramePx.pas' {FramePix: TFrame};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True; //Caso tiver vazamento de memoria no desligamento do gerenciador de tarefa essa fun��o limpa os espa�os alocados e n�o usados 
  Application.CreateForm(TfrmPDV, frmPDV);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tmsg, msg);
  Application.Run;
end.
