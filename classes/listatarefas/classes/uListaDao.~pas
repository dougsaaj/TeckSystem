unit uListaDao;

interface

  uses
    CBanco, uLista, Windows, Forms, SysUtils, UDM, Dialogs;

  type
    TListaDao = class(TDAO)
      function PesquisarNome(PLista :TLista) :Boolean;
      function Cadastrar(PLista :TLista) :Boolean;
      function Alterar(PLista :TLista) :Boolean;
      function Deletar(PLista :TLista) :Boolean;
    end;


implementation

uses uServicos;

{ TClientesDao }

function TListaDao.Alterar(PLista: TLista): Boolean;
var
  vBd: TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('update LISTATAREFAS');
  vBd.SQL_Query.SQL.Add('set DESCRICAO = :DESCRICAO,');
  vBd.SQL_Query.SQL.Add('  STATUS = :STATUS');
  vBd.SQL_Query.SQL.Add('where (ID = :ID)');

  vBd.SQL_Query.ParamByName('ID').AsInteger       := PLista.ID;
  vBd.SQL_Query.ParamByName('DESCRICAO').AsString := PLista.DESCRICAO;
  vBd.SQL_Query.ParamByName('STATUS').AsString    := PLista.STATUS;

  vBd.SQL_Query.ExecSQL();
  vBd.Destroy;
end;

function TListaDao.Cadastrar(PLista: TLista): Boolean;
var
  vBd: TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('insert into LISTATAREFAS (ID, DESCRICAO, STATUS)');
  vBd.SQL_Query.SQL.Add('values (GEN_ID(GENIDLISTA, 1), :DESCRICAO, :STATUS)');

  vBd.SQL_Query.ParamByName('DESCRICAO').AsString := PLista.DESCRICAO;
  vBd.SQL_Query.ParamByName('STATUS').AsString    := PLista.STATUS;

  vBd.SQL_Query.ExecSQL();
  vBd.Destroy;
end;

function TListaDao.Deletar(PLista: TLista): Boolean;
var
  vBd: TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('delete from LISTATAREFAS');
  vBd.SQL_Query.SQL.Add('where (ID = :ID)');

  vBd.SQL_Query.ParamByName('ID').AsInteger := PLista.ID;

  vBd.SQL_Query.ExecSQL();
  vBd.Destroy;
end;

function TListaDao.PesquisarNome(PLista: TLista): Boolean;
var
  vBd: TBancoAcesso;
begin
  Result := False;
  
  vBd := TBancoAcesso.Create(DM.conn);

  vBd.SQL_Query.SQL.Add('select');
  vBd.SQL_Query.SQL.Add('  ID,');
  vBd.SQL_Query.SQL.Add('  DESCRICAO,');
  vBd.SQL_Query.SQL.Add('  STATUS');
  vBd.SQL_Query.SQL.Add('from');
  vBd.SQL_Query.SQL.Add('  LISTATAREFAS');
  vBd.SQL_Query.SQL.Add('where');
  vBd.SQL_Query.SQL.Add('  LISTATAREFAS.DESCRICAO like ''% '+PLista.DESCRICAO+'  ''');

  if vBd.OpenConsulta then
  begin
    Result := True;

    PLista.ID := vBd.cds.FieldByName('ID').AsInteger;
  end;

  vBd.Destroy;
end;

end.
