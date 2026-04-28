program Login_p;

uses
  Vcl.Forms,
  Login_U in 'Login_U.pas' {login},
  Main_u in 'Main_u.pas' {main},
  OOP in 'OOP.pas';

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(Tmain, main);
  Application.Run;
end.
