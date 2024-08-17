unit U_Animacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.Edit;

type
  Tf_animacao = class(TForm)
    btn_play: TButton;
    Circle1: TCircle;
    FloatAnimation1: TFloatAnimation;
    txt_duracao: TEdit;
    lb_duracao: TLabel;
    btn_pause: TSpeedButton;
    procedure btn_playClick(Sender: TObject);
    procedure txt_duracaoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure FloatAnimation1Process(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure btn_pauseClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_animacao: Tf_animacao;

implementation

{$R *.fmx}

procedure Tf_animacao.btn_pauseClick(Sender: TObject);
begin
  FloatAnimation1.Enabled := false;
end;

procedure Tf_animacao.btn_playClick(Sender: TObject);
begin
  FloatAnimation1.Enabled := true;
  btn_pause.Enabled := true;
end;

procedure Tf_animacao.FloatAnimation1Finish(Sender: TObject);
begin
  FloatAnimation1.Enabled := false;
end;

procedure Tf_animacao.FloatAnimation1Process(Sender: TObject);
var txt : Double;
begin
  txt := strToFloat(txt_duracao.Text);
  FloatAnimation1.Duration := txt;
end;

procedure Tf_animacao.txt_duracaoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if txt_duracao.Text <> '' then
  begin
    btn_play.Enabled := true;
  end
  else
  begin
    btn_play.Enabled := false;
  end;
end;

end.
