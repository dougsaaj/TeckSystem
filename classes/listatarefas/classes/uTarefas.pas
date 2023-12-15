unit uTarefas;

interface
type
  TTarefas = class

  private
    FID                : Integer;
    FID_LISTA          : Integer;
    FTITULO            : string;
    FDESCRICAO         : string;
    FDATA_CADASTRO     : TDateTime;
    FDATA_CONCLUSAO    : TDateTime;
    FDATA_VENCIMENTO   : TDateTime;
    FSTATUS            : string;

public
  constructor Create;

published
  property ID: Integer                 read FID               write FID;
  property ID_LISTA: Integer           read FID_LISTA         write FID_LISTA;
  property TITULO: string              read FTITULO           write FTITULO;
  property DESCRICAO: string           read FDESCRICAO        write FDESCRICAO;
  property DATA_CADASTRO: TDateTime    read FDATA_CADASTRO    write FDATA_CADASTRO;
  property DATA_CONCLUSAO: TDateTime   read FDATA_CONCLUSAO   write FDATA_CONCLUSAO;
  property DATA_VENCIMENTO: TDateTime  read FDATA_VENCIMENTO  write FDATA_VENCIMENTO;
  property STATUS: string              read FSTATUS        write FSTATUS;

end;

implementation

{ TTarefas }

constructor TTarefas.Create;
begin
  inherited Create;
end;

end.
