unit uConexao;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FB, System.SysUtils, FireDAC.DApt, FireDAC.VCLUI.Wait;

type
  Tconexao = class

  Private
  //criando um atributo da classe do tipo Conection
  FConn: TFDConnection;

  procedure ConfigurarConexao;

  function criarQuery: TFDQuery;

  public
    constructor Create;
    destructor Destroy; override;

    function GetConn: TFDConnection;

  end;

  const
    PATH_BANCO: string = 'C:\MVC\BD_MVC.FDB';


implementation

{ Tconexao }

procedure Tconexao.ConfigurarConexao;
begin
  FConn.Params.DriverID := 'FB';
  FConn.Params.Database := PATH_BANCO;
  FConn.Params.UserName := 'SYSDBA';
  FConn.Params.Password := 'masterkey';
  FConn.LoginPrompt     := False;
end;

constructor Tconexao.Create;
begin
  FConn := TFDConnection.Create(nil);

  Self.ConfigurarConexao();
end;

function Tconexao.criarQuery: TFDQuery;
var
VQuery: TFDQuery;
begin
  VQuery := TFDQuery.Create(nil);
  VQuery.Connection := FConn;

  Result := VQuery;

end;

destructor Tconexao.Destroy;
begin
    FreeAndNil(FConn);
  inherited;
end;

function Tconexao.GetConn: TFDConnection;
begin
  Result := FConn;
end;

end.
