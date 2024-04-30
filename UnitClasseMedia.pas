unit UnitClasseMedia;

interface

uses
  System.Classes;

type
  TMedia = class

    protected
      FValor1 : Real;
      FValor2 : Real;

      procedure SetValor1(valor : Real);
      procedure SetValor2(valor : Real);

    public
    constructor Create;
    function CalculaMedia : Real; virtual;

    property Valor1 : Real
      read FValor1 write FValor1;
    property Valor2 : Real
      read FValor2 write FValor2;
  end;

implementation

{ TMedia }

procedure TMedia.SetValor1(valor: Real);
begin
  if valor > 0 then
  begin
    FValor1 := valor
  end
  else
  begin
    FValor1 := 0;
  end;
end;

procedure TMedia.SetValor2(valor: Real);
begin
  if valor > 0 then
  begin
    FValor2 := valor
  end
  else
  begin
    FValor2 := 0;
  end;
end;

constructor TMedia.Create;
begin
  FValor1 := 0;
  FValor2 := 0;
end;

function TMedia.CalculaMedia: Real;
begin
  Result := (Valor1 + Valor2) / 2;
end;

end.
