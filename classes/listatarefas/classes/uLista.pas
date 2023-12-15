unit uLista;

interface

type
  TLista = class

  private
    FID           : Integer;
    FDESCRICAO    : string;
    FSTATUS       : string;

public
  constructor Create;

published
  property ID: Integer         read FID          write FID;
  property DESCRICAO: string   read FDESCRICAO   write FDESCRICAO;
  property STATUS: string      read FSTATUS      write FSTATUS;

end;

implementation

{ TLista }

constructor TLista.Create;
begin
  inherited Create;
end;

end.
