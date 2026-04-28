program Main1_p;

uses
  Vcl.Forms,
  Main_u in 'Main_u.pas' {main},
  OOP in 'OOP.pas',
  pat in '..\..\IT_Megan_Pat\pat.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
