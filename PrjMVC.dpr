program PrjMVC;

uses
  Vcl.Forms,
  fPrincipalView in 'View\fPrincipalView.pas' {frmPrincipal},
  uConexao in 'Dao\uConexao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.