program Animacao;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Animacao in 'U_Animacao.pas' {f_animacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_animacao, f_animacao);
  Application.Run;
end.
