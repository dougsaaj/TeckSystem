unit uTarefasDao;

interface
  uses
    CBanco, uTarefas, Windows, Forms, SysUtils, UDM, Dialogs;

  type
    TTarefasDao = class(TDAO)
      function Pesquisar(PTarefas :TTarefas) :Boolean;
      function Cadastrar(PTarefas :TTarefas) :Boolean;
      function Alterar(PTarefas :TTarefas) :Boolean;
      function upStatus(PTarefas :TTarefas) :Boolean;
      function Deletar(PTarefas :TTarefas) :Boolean;
    end;


implementation

uses DB;


{ TTarefasDao }

function TTarefasDao.Alterar(PTarefas: TTarefas): Boolean;
var
  vBd: TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('update TAREFAS');
  vBd.SQL_Query.SQL.Add('set ID_LISTA = :ID_LISTA,');
  vBd.SQL_Query.SQL.Add('  TITULO = :TITULO,');
  vBd.SQL_Query.SQL.Add('  DESCRICAO = :DESCRICAO,');
  vBd.SQL_Query.SQL.Add('  DATA_CADASTRO = :DATA_CADASTRO,');
  vBd.SQL_Query.SQL.Add('  DATA_CONCLUSAO = :DATA_CONCLUSAO,');
  vBd.SQL_Query.SQL.Add('  DATA_VENCIMENTO = :DATA_VENCIMENTO');
  vBd.SQL_Query.SQL.Add('where (ID = :ID)');

  vBd.SQL_Query.ParamByName('ID').AsInteger                  := PTarefas.ID;
  vBd.SQL_Query.ParamByName('ID_LISTA').AsInteger            := PTarefas.ID_LISTA;
  vBd.SQL_Query.ParamByName('TITULO').AsString               := PTarefas.TITULO;
  vBd.SQL_Query.ParamByName('DESCRICAO').AsString            := PTarefas.DESCRICAO;
  vBd.SQL_Query.ParamByName('DATA_CADASTRO').AsDate          := PTarefas.DATA_CADASTRO;
  vBd.SQL_Query.ParamByName('DATA_CONCLUSAO').AsDate         := PTarefas.DATA_CONCLUSAO;
  vBd.SQL_Query.ParamByName('DATA_VENCIMENTO').AsDate        := PTarefas.DATA_VENCIMENTO;

  vBd.SQL_Query.ExecSQL();
  vBd.Destroy;
end;

function TTarefasDao.Cadastrar(PTarefas: TTarefas): Boolean;
var
  vBd: TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('insert into TAREFAS (');
  vBd.SQL_Query.SQL.Add('  ID, ID_LISTA, TITULO, DESCRICAO, DATA_CADASTRO,');
  vBd.SQL_Query.SQL.Add('  DATA_CONCLUSAO, DATA_VENCIMENTO, STATUS)');
  vBd.SQL_Query.SQL.Add('values (');
  vBd.SQL_Query.SQL.Add('  GEN_ID(GENIDTAREFAS, 1), :ID_LISTA, :TITULO, :DESCRICAO,');
  vBd.SQL_Query.SQL.Add('  :DATA_CADASTRO, :DATA_CONCLUSAO, :DATA_VENCIMENTO, :STATUS)');

  vBd.SQL_Query.ParamByName('ID_LISTA').AsInteger            := PTarefas.ID_LISTA;
  vBd.SQL_Query.ParamByName('TITULO').AsString               := PTarefas.TITULO;
  vBd.SQL_Query.ParamByName('DESCRICAO').AsString            := PTarefas.DESCRICAO;
  vBd.SQL_Query.ParamByName('DATA_CADASTRO').AsDate          := PTarefas.DATA_CADASTRO;
  vBd.SQL_Query.ParamByName('DATA_CONCLUSAO').AsDate         := PTarefas.DATA_CONCLUSAO;
  vBd.SQL_Query.ParamByName('DATA_VENCIMENTO').AsDate        := PTarefas.DATA_VENCIMENTO;
  vBd.SQL_Query.ParamByName('STATUS').AsString               := PTarefas.STATUS;



  vBd.SQL_Query.ExecSQL();
  vBd.Destroy;
end;

function TTarefasDao.Deletar(PTarefas: TTarefas): Boolean;
var
  vBd: TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('delete from TAREFAS');
  vBd.SQL_Query.SQL.Add('where (ID = :ID)');

  vBd.SQL_Query.ParamByName('ID').AsInteger := PTarefas.ID;

  vBd.SQL_Query.ExecSQL();
  vBd.Destroy;
end;

function TTarefasDao.Pesquisar(PTarefas: TTarefas): Boolean;
var
  vBd: TBancoAcesso;
begin
  Result := False;
  
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('select');
  vBd.SQL_Query.SQL.Add('  tarefas.id,');
  vBd.SQL_Query.SQL.Add('  tarefas.id_lista,');
  vBd.SQL_Query.SQL.Add('  tarefas.titulo,');
  vBd.SQL_Query.SQL.Add('  tarefas.descricao,');
  vBd.SQL_Query.SQL.Add('  tarefas.data_cadastro,');
  vBd.SQL_Query.SQL.Add('  tarefas.data_conclusao,');
  vBd.SQL_Query.SQL.Add('  tarefas.data_vencimento,');
  vBd.SQL_Query.SQL.Add('  tarefas.status');
  vBd.SQL_Query.SQL.Add('from');
  vBd.SQL_Query.SQL.Add('  tarefas');
  vBd.SQL_Query.SQL.Add('where');
  vBd.SQL_Query.SQL.Add('  tarefas.id = :id');

  vBd.SQL_Query.ParamByName('id').AsInteger := PTarefas.ID;

  if vBd.OpenConsulta then
  begin
    Result := True;

    PTarefas.ID               := vBd.cds.FieldByName('id').AsInteger;
    PTarefas.ID_LISTA         := vBd.cds.FieldByName('id_lista').AsInteger;
    PTarefas.TITULO           := vBd.cds.FieldByName('titulo').AsString;
    PTarefas.DESCRICAO        := vBd.cds.FieldByName('descricao').AsString;
    PTarefas.DATA_CADASTRO    := vBd.cds.FieldByName('data_cadastro').AsDateTime;
    PTarefas.DATA_CONCLUSAO   := vBd.cds.FieldByName('data_conclusao').AsDateTime;
    PTarefas.DATA_VENCIMENTO  := vBd.cds.FieldByName('data_vencimento').AsDateTime;
    PTarefas.STATUS           := vBd.cds.FieldByName('status').AsString;
  end;

  vBd.Destroy;
end;

function TTarefasDao.upStatus(PTarefas: TTarefas): Boolean;
var
  vBd: TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('update TAREFAS');
  vBd.SQL_Query.SQL.Add('set STATUS = :STATUS, DATA_CONCLUSAO = :DATA_CONCLUSAO');
  vBd.SQL_Query.SQL.Add('where (ID = :ID)');

  vBd.SQL_Query.ParamByName('ID').AsInteger           := PTarefas.ID;
  vBd.SQL_Query.ParamByName('STATUS').AsString        := PTarefas.STATUS;
  vBd.SQL_Query.ParamByName('DATA_CONCLUSAO').AsDate  := Now;

  vBd.SQL_Query.ExecSQL();
  vBd.Destroy;
end;

end.
