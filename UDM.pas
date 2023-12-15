unit UDM;

interface

uses
  SysUtils, Classes, Uservicos, DBXpress, DB, SqlExpr;

type
  TDM = class(TDataModule)
    conn: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FTransacao: TTransactionDesc;
    
  public
    { Public declarations }
    procedure IniciarTransacao;
    procedure CommitTransacao;
    procedure RollbackTransacao;

  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  conn.Connected           := False;

  conn.DriverName          := 'Firebird';
  conn.ConnectionName      := 'Servidor';
  conn.GetDriverFunc       := 'getSQLDriverINTERBASE';
  conn.LibraryName         := 'dbexpint.dll';
  conn.VendorLib           := 'fbclient.dll';

  conn.LoadParamsOnConnect := False;

  conn.Params.Values['Database']  := Trim(Servicos.Conexao.LerArquivoIniIndiceBancos('CAMINHO'));
  conn.Params.Values['User_Name'] := Trim(Servicos.Conexao.LerArquivoIniIndiceBancos('USUARIO'));
  conn.Params.Values['Password']  := Trim(Servicos.Conexao.LerArquivoIniIndiceBancos('SENHA'));

  conn.Connected           := True;
end;

procedure TDM.IniciarTransacao;
begin
  FTransacao.TransactionID := 1;
  FTransacao.IsolationLevel := xilREADCOMMITTED;
  conn.StartTransaction(FTransacao);
end;


procedure TDM.CommitTransacao;
begin
  conn.Commit(FTransacao);
end;

procedure TDM.RollbackTransacao;
begin
  conn.Rollback(FTransacao);
end;

end.
