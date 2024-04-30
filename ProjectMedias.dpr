program ProjectMedias;

uses
  Vcl.Forms,
  UnitMedias in 'UnitMedias.pas' {FormMedias},
  UnitClasseMedia in 'UnitClasseMedia.pas',
  UnitClasseMediaPoderada in 'UnitClasseMediaPoderada.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMedias, FormMedias);
  Application.Run;
end.
