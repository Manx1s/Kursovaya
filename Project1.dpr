program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UFasad in 'UFasad.pas';

  var
  Fasad: IFasad;

{$R *.res}



begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TForm1, Form1);
   Fasad := TFasad.Create(Application);
  Application.Run;
end.
