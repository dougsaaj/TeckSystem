program listatarefas;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UListaTarefas in 'UListaTarefas.pas' {frmListaTarefas},
  UDM in 'UDM.pas' {DM: TDataModule},
  CBanco in 'classes\CBanco.pas',
  uServicosConexao in 'classes\servicos\UServicosConexao.pas',
  uServicos in 'classes\servicos\UServicos.pas',
  uServicosMensagens in 'classes\servicos\uServicosMensagens.pas',
  UDMLista in 'classes\listatarefas\UDMLista.pas' {DMLista: TDataModule},
  UCadastroLista in 'classes\listatarefas\UCadastroLista.pas' {frmCadastroLista},
  uTarefasDao in 'classes\listatarefas\classes\uTarefasDao.pas',
  uTarefas in 'classes\listatarefas\classes\uTarefas.pas',
  uListaDao in 'classes\listatarefas\classes\uListaDao.pas',
  uLista in 'classes\listatarefas\classes\uLista.pas',
  UCadastroTarefas in 'classes\listatarefas\UCadastroTarefas.pas' {fmrCadastroTarefas},
  URelatorio in 'URelatorio.pas' {fmrRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
