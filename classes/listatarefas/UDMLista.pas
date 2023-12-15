unit UDMLista;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, UDM;

type
  TDMLista = class(TDataModule)
    sqlListaTarefas: TSQLQuery;
    sqlTarefas: TSQLQuery;
    provListaTarefas: TDataSetProvider;
    provTarefas: TDataSetProvider;
    cdsListaTarefas: TClientDataSet;
    cdsTarefas: TClientDataSet;
    dsListaTarefas: TDataSource;
    dsTarefas: TDataSource;
    cdsListaTarefasID: TIntegerField;
    cdsListaTarefasDESCRICAO: TStringField;
    cdsListaTarefasSTATUS: TStringField;
    cdsTarefasID: TIntegerField;
    cdsTarefasID_LISTA: TIntegerField;
    cdsTarefasTITULO: TStringField;
    cdsTarefasDESCRICAO: TStringField;
    cdsTarefasDATA_CADASTRO: TDateField;
    cdsTarefasDATA_CONCLUSAO: TDateField;
    cdsTarefasDATA_VENCIMENTO: TDateField;
    cdsTarefasSTATUS: TStringField;
    procedure dsListaTarefasDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLista: TDMLista;

implementation

{$R *.dfm}

procedure TDMLista.dsListaTarefasDataChange(Sender: TObject;
  Field: TField);
begin
  cdsTarefas.Close;
  sqlTarefas.ParamByName('idlista').AsInteger := cdsListaTarefasID.AsInteger;
  cdsTarefas.Open;
end;                                          

end.
