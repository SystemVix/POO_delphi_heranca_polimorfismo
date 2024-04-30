unit UnitMedias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFormMedias = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditValor1: TEdit;
    EditValor2: TEdit;
    Label3: TLabel;
    EditPeso1: TEdit;
    Label4: TLabel;
    EditPeso2: TEdit;
    ButtonCalcular: TButton;
    ButtonLimpar: TButton;
    procedure ButtonCalcularClick(Sender: TObject);
    procedure ButtonLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMedias: TFormMedias;

implementation

{$R *.dfm}

uses UnitClasseMedia, UnitClasseMediaPoderada;

procedure TFormMedias.ButtonCalcularClick(Sender: TObject);

var
  calculo : TMedia;
  resultado : Real;

begin
  try
    if (EditPeso1.Text = '') and (EditPeso2.Text = '') then
    begin
      calculo := TMedia.Create;
      calculo.Valor1 := StrToFloat(EditValor1.Text);
      calculo.Valor2 := StrToFloat(EditValor2.Text)
    end
    else
    begin
      calculo := TMediaPonderada.Create;
      with (calculo as TMediaPonderada) do
      begin
        Valor1 := StrToFloat(EditValor1.Text);
        Valor2 := StrToFloat(EditValor2.Text);
        Peso1 := StrToFloat(EditPeso1.Text);
        Peso2 := StrToFloat(EditPeso2.Text);
      end;
    end;

    resultado := calculo.CalculaMedia;
    ShowMessage('A média é ' + FloatToStr(resultado));
  except
    ShowMessage('Problemas da associação dos valores!');
  end;
end;

procedure TFormMedias.ButtonLimparClick(Sender: TObject);
begin
  EditValor1.Clear;
  EditValor2.Clear;
  EditPeso1.Clear;
  EditPeso2.Clear;
end;

end.
