program Temporizador;

uses
  Vcl.Forms,
  Timer in 'Timer.pas' {f_timer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_timer, f_timer);
  Application.Run;
end.
