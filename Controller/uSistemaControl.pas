unit uSistemaControl;

interface

uses
  uConexao, System.SysUtils, uEmpresaModel;

type
  TSistemaControl = class
  //aqui são os atributos privados da classe
    private
      Fconexao: Tconexao;
      FEmpresa: TEmpresa;
      class var FInstance: TSistemaControl;//variavel de classe

    public
      constructor Create;
      destructor Destroy; override;
      // aqui é uma função de classe
      class function GetInstance: TSistemaControl;

      property Conexao: Tconexao read Fconexao write Fconexao;
      property Empresa: TEmpresa read FEmpresa write FEmpresa;
  end;

implementation

{ TSistemaControl }


constructor TSistemaControl.Create;
begin
  Fconexao := Fconexao.Create;
  FEmpresa := TEmpresa.Create();
end;

destructor TSistemaControl.Destroy;
begin
  FreeAndNil(FEmpresa);
  FreeAndNil(Fconexao);
  inherited;
end;


//padrao singleton
class function TSistemaControl.GetInstance: TSistemaControl;
begin
  if not Assigned(self.FInstance) then
    begin
      self.FInstance := TSistemaControl.Create;
    end;
    Result := self.FInstance
end;

end.
