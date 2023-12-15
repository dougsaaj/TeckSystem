unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ActnList, ToolWin, Menus, RLFilters, RLHTMLFilter;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    ListadeTarefas1: TMenuItem;
    coolBarPrincipal: TCoolBar;
    toolBarPrincipal: TToolBar;
    aclPrincipal: TActionList;
    actLista: TAction;
    actSair: TAction;
    toolButtonLista: TToolButton;
    ToolButton1: TToolButton;
    ToolButtonSair: TToolButton;
    Sair1: TMenuItem;
    RLHTMLFilter1: TRLHTMLFilter;
    procedure actSairExecute(Sender: TObject);
    procedure actListaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses Math, UListaTarefas;

{$R *.dfm}

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.actListaExecute(Sender: TObject);
begin
  if frmListaTarefas = nil then
    Application.CreateForm(TfrmListaTarefas, frmListaTarefas);
  frmListaTarefas.Show;   
end;                                       

end.
