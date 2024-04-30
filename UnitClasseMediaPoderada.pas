unit UnitClasseMediaPoderada;

interface

uses
  System.Classes, UnitClasseMedia;

type
  TMediaPonderada = class(TMedia)

  protected
    FPeso1 : Real;
    FPeso2 : Real;

    procedure SetPeso1(valor : Real);
    procedure SetPeso2(valor : Real);

  public
    constructor Create;
    function CalculaMedia : Real; override;

    property Peso1 : Real
      read FPeso1 write FPeso1;
    property Peso2 : Real
      read FPeso2 write FPeso2;
  end;

implementation

{ TMediaPonderada }

procedure TMediaPonderada.SetPeso1(valor: Real);
begin
  if valor > 1 then
  begin
    FPeso1 := valor
  end
  else
  begin
    FPeso1 := 1;
  end;
end;

procedure TMediaPonderada.SetPeso2(valor: Real);
begin
  if valor > 1 then
  begin
    FPeso2 := valor
  end
  else
  begin
    FPeso2 := 1;
  end;
end;

constructor TMediaPonderada.Create;
begin
  inherited;
  FPeso1 := 1;
  FPeso2 := 1;
end;

function TMediaPonderada.CalculaMedia: Real;

var
  media: Real;
  somaPesos: Real;

begin
  media := (Valor1 * Peso1) + (Valor2 * Peso2);
  somaPesos := Peso1 + Peso2;

  media := media / somaPesos;
  Result := media;
end;

end.
