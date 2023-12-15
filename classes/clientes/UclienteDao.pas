unit UclienteDao;

interface

  uses
    CBanco, Uclientes, Windows, Forms, SysUtils, CEDM, Dialogs;

  type
    TClientesDao = class(TDAO)
      function Pesquisar(PClientes :TCliente) :Boolean;
      function Cadastrar(PClientes :TCliente) :Boolean;
      function Alterar(PClientes :TCliente) :Boolean;
      function Deletar(PClientes :TCliente) :Boolean;
    end;


implementation


{ TClientesDao }

function TClientesDao.Alterar(PClientes: TCliente): Boolean;
var
  vBD : TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DMCE.conn);

  try
    Result := False;
    vBd.SQL_Query.SQL.Clear;
    vBd.SQL_Query.SQL.Add('update');
    vBd.SQL_Query.SQL.Add('  CLIENTE');
    vBd.SQL_Query.SQL.Add('set');
    vBd.SQL_Query.SQL.Add('  NOME = :NOME, ENDERECO = :ENDERECO, BAIRRO = :BAIRRO,');
    vBd.SQL_Query.SQL.Add('  CIDADE = :CIDADE, UF = :UF, CEP = :CEP, TIPOFISCAL = :TIPOFISCAL,');
    vBd.SQL_Query.SQL.Add('  CPFCNPJ = :CPFCNPJ');
    vBd.SQL_Query.SQL.Add('where');
    vBd.SQL_Query.SQL.Add('  (CHAVECLI = :CHAVECLI)');

    vBd.SQL_Query.ParamByName('CHAVECLI').Value     := PClientes.CHAVECLI;
    vBd.SQL_Query.ParamByName('NOME').Value         := PClientes.NOME;
    vBd.SQL_Query.ParamByName('ENDERECO').Value     := PClientes.ENDERECO;
    vBd.SQL_Query.ParamByName('BAIRRO').Value       := PClientes.BAIRRO;
    vBd.SQL_Query.ParamByName('CIDADE').Value       := PClientes.CIDADE;
    vBd.SQL_Query.ParamByName('UF').Value           := PClientes.UF;
    vBd.SQL_Query.ParamByName('CEP').Value          := PClientes.CEP;

    if PClientes.TIPOFISCAL = 0 then//Pessoa fisica
      vBd.SQL_Query.ParamByName('TIPOFISCAL').Value   := 'F'
    else
    if PClientes.TIPOFISCAL = 0 then//Pessoa fisica
      vBd.SQL_Query.ParamByName('TIPOFISCAL').Value   := 'J';

    vBd.SQL_Query.ParamByName('CPFCNPJ').Value      := PClientes.CPFCNPJ;

    vBd.SQL_Query.ExecSQL();

    Result := True;
    vBd.Destroy;
  except
    Result := False;
    vBd.Destroy;
  end;
end;

function TClientesDao.Cadastrar(PClientes: TCliente): Boolean;
var
  vBD : TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DMCE.conn);

  try
    Result := False;
    vBd.SQL_Query.SQL.Clear;
    vBd.SQL_Query.SQL.Add('insert into');
    vBd.SQL_Query.SQL.Add('  CLIENTE');
    vBd.SQL_Query.SQL.Add('    (CHAVECLI, NOME, ENDERECO, BAIRRO, CIDADE,');
    vBd.SQL_Query.SQL.Add('    UF, CEP, TIPOFISCAL, CPFCNPJ)');
    vBd.SQL_Query.SQL.Add('values (');
    vBd.SQL_Query.SQL.Add('    GEN_ID(IDCLIENTE, 1), :NOME, :ENDERECO, :BAIRRO,');
    vBd.SQL_Query.SQL.Add('    :CIDADE, :UF, :CEP, :TIPOFISCAL, :CPFCNPJ)');

    vBd.SQL_Query.ParamByName('NOME').Value         := PClientes.NOME;
    vBd.SQL_Query.ParamByName('ENDERECO').Value     := PClientes.ENDERECO;
    vBd.SQL_Query.ParamByName('BAIRRO').Value       := PClientes.BAIRRO;
    vBd.SQL_Query.ParamByName('CIDADE').Value       := PClientes.CIDADE;
    vBd.SQL_Query.ParamByName('UF').Value           := PClientes.UF;
    vBd.SQL_Query.ParamByName('CEP').Value          := PClientes.CEP;

    if PClientes.TIPOFISCAL = 0 then//Pessoa fisica
      vBd.SQL_Query.ParamByName('TIPOFISCAL').Value   := 'F'
    else
    if PClientes.TIPOFISCAL = 0 then//Pessoa fisica
      vBd.SQL_Query.ParamByName('TIPOFISCAL').Value   := 'J';

    vBd.SQL_Query.ParamByName('CPFCNPJ').Value      := PClientes.CPFCNPJ;

    vBd.SQL_Query.ExecSQL();

    Result := True;
    vBd.Destroy;
  except
    Result := False;
    vBd.Destroy;
  end;
end;

function TClientesDao.Deletar(PClientes: TCliente): Boolean;
var
  vBD : TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DMCE.conn);

  try
    Result := False;
    vBd.SQL_Query.SQL.Clear;
    vBd.SQL_Query.SQL.Add('delete from CLIENTE');
    vBd.SQL_Query.SQL.Add('where (CHAVECLI = :CHAVECLI)');

    vBd.SQL_Query.ParamByName('CHAVECLI').Value     := PClientes.CHAVECLI;

    vBd.SQL_Query.ExecSQL();

    Result := True;
    vBd.Destroy;
  except
    Result := False;
    vBd.Destroy;
  end;
end;

function TClientesDao.Pesquisar(PClientes: TCliente): Boolean;
var
  vBD : TBancoAcesso;
begin
  vBd := TBancoAcesso.Create(DMCE.conn);

  try
    Result := False;
    vBd.SQL_Query.SQL.Clear;
    vBd.SQL_Query.SQL.Add('Select');
    vBd.SQL_Query.SQL.Add('  cliente.chavecli,');
    vBd.SQL_Query.SQL.Add('  cliente.nome,');
    vBd.SQL_Query.SQL.Add('  cliente.endereco,');
    vBd.SQL_Query.SQL.Add('  cliente.bairro,');
    vBd.SQL_Query.SQL.Add('  cliente.cidade,');
    vBd.SQL_Query.SQL.Add('  cliente.uf,');
    vBd.SQL_Query.SQL.Add('  cliente.cep,');
    vBd.SQL_Query.SQL.Add('  cliente.tipofiscal,');
    vBd.SQL_Query.SQL.Add('  cliente.cpfcnpj');
    vBd.SQL_Query.SQL.Add('from');
    vBd.SQL_Query.SQL.Add('  cliente');
    vBd.SQL_Query.SQL.Add('where');
    vBd.SQL_Query.SQL.Add('  cliente.chavecli = :chavecli');

    vBd.SQL_Query.ParamByName('chavecli').AsInteger := PClientes.CHAVECLI;

    if vBd.OpenConsulta then
    begin
      Result := True;
      PClientes.NOME         := vBd.cds.FieldByName('NOME').Value;
      PClientes.ENDERECO     := vBd.cds.FieldByName('ENDERECO').Value;
      PClientes.BAIRRO       := vBd.cds.FieldByName('BAIRRO').Value;
      PClientes.CIDADE       := vBd.cds.FieldByName('CIDADE').Value;
      PClientes.UF           := vBd.cds.FieldByName('UF').Value;
      PClientes.CEP          := vBd.cds.FieldByName('CEP').Value;
      PClientes.CPFCNPJ      := vBd.cds.FieldByName('CPFCNPJ').Value;
      PClientes.TIPOStr      := vBd.cds.FieldByName('TIPOFISCAL').AsString;
    end;

    vBd.Destroy;
  except
    Result := False;
    vBd.Destroy;
  end;
end;

end.
