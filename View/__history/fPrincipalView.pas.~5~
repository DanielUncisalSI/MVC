unit fPrincipalView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uConexao;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  VConexao : Tconexao;
begin
  VConexao := Tconexao.Create;
  VConexao.GetConn.Connected := true;
try
  if VConexao.GetConn.Connected then
    ShowMessage('Conectado!');
finally
    FreeAndNil(VConexao);
end;
end;
  initialization
  ReportMemoryLeaksOnShutdown := true;
end.
