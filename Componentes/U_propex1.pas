unit U_propex1;

interface

uses
  System.SysUtils, System.Classes;

type
  TMyEnum = (Um, Dois, Tres);
  TMySet = set of TMyEnum;

  TPropriedade1 = class(TComponent)

  private
    FMyEnum: TMyEnum;
    FMySet: TMySet;
    procedure SetMyEnum(const Value: TMyEnum);
    procedure SetMySet(const Value: TMySet);
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    property MyEnum : TMyEnum read FMyEnum write SetMyEnum;
    property MySet : TMySet Read FMySet write SetMySet;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [TPropriedade1]);
end;

procedure TPropriedade1.SetMyEnum(const Value: TMyEnum);
begin
  FMyEnum := Value;
end;

procedure TPropriedade1.SetMySet(const Value: TMySet);
begin
  FMySet := Value;
end;

end.
