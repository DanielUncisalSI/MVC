unit uEmpresaModel;

interface

type
  TEmpresa = class
  private
    FCodigo: Integer;
    FRSocial: string;

    procedure SetCodigo(const Value: Integer);
    procedure SetRSocial(const Value: string);

  public
    constructor Create(ACodigo: Integer);

    property Codigo: Integer read FCodigo write SetCodigo;
    Property RSocial: string read FRSocial write SetRSocial;
  end;
implementation

{ TEmpresa }

constructor TEmpresa.Create(ACodigo: Integer);
begin
  FCodigo := ACodigo;
end;

procedure TEmpresa.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TEmpresa.SetRSocial(const Value: string);
begin
  FRSocial := Value;
end;

end.
