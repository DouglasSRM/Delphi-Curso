unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  Tfrm_principal = class(TForm)
    pnl_title: TPanel;
    Image1: TImage;
    pnl_cadastros: TPanel;
    pnl_vendas: TPanel;
    pnl_relatorios: TPanel;
    pnl_itens_cadastros: TPanel;
    pnl_usuarios: TPanel;
    pnl_extra: TPanel;
    pnl_clientes: TPanel;
    pnl_produtos: TPanel;
    pnl_funcionarios: TPanel;
    pnl_fornecedores: TPanel;
    pnl_administradores: TPanel;
    pnl_itens_vendas: TPanel;
    pnl_estoque: TPanel;
    pnl_entradas: TPanel;
    pnl_caixa: TPanel;
    pnl_saidas: TPanel;
    pnl_pdv: TPanel;
    pnl_vendas_lista: TPanel;
    pnl_balanco: TPanel;
    pnl_itens_relatorios: TPanel;
    pnl_rel_caixa: TPanel;
    pnl_rel_entradas: TPanel;
    pnl_rel_produtos: TPanel;
    pnl_rel_saidas: TPanel;
    pnl_rel_clientes: TPanel;
    pnl_rel_vendas: TPanel;
    pnl_rel_balanco: TPanel;
    Image2: TImage;
    pnl_rodape: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure pnl_cadastrosClick(Sender: TObject);
    procedure pnl_vendasClick(Sender: TObject);
    procedure pnl_relatoriosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnl_clientesClick(Sender: TObject);

  private
    function selecionarMenu(pMenu: Integer):Boolean;
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_cadastro;


procedure Tfrm_principal.Image1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfrm_principal.FormCreate(Sender: TObject);
begin
  selecionarMenu(0);
end;

procedure Tfrm_principal.pnl_cadastrosClick(Sender: TObject);
begin
  selecionarMenu(1);
end;

procedure Tfrm_principal.pnl_clientesClick(Sender: TObject);
begin
  frm_cad_clientes.ShowModal;
end;

procedure Tfrm_principal.pnl_vendasClick(Sender: TObject);
begin
  selecionarMenu(2);
end;

procedure Tfrm_principal.pnl_relatoriosClick(Sender: TObject);
begin
  selecionarMenu(3);
end;

function Tfrm_principal.selecionarMenu(pMenu: Integer): Boolean;
begin
  case pMenu of
    0:
    begin
      pnl_itens_cadastros.Visible := false;
      pnl_itens_vendas.Visible := false;
      pnl_itens_relatorios.Visible := false;
    end;
    1:
    begin
      pnl_itens_cadastros.Visible := true;
      pnl_itens_vendas.Visible := false;
      pnl_itens_relatorios.Visible := false;
    end;
    2:
    begin
      pnl_itens_cadastros.Visible := false;
      pnl_itens_vendas.Visible := true;
      pnl_itens_relatorios.Visible := false;
    end;
    3:
    begin
      pnl_itens_cadastros.Visible := false;
      pnl_itens_vendas.Visible := false;
      pnl_itens_relatorios.Visible := true;
    end;
  end;
end;

end.
