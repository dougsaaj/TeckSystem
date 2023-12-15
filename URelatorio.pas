unit URelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLHTMLFilter;

type
  TfmrRelatorio = class(TForm)
    RLReport: TRLReport;
    RLBandTitulo: TRLBand;
    RlblTitulo: TRLLabel;
    RLSystemInforlsystmnf1: TRLSystemInfo;
    RLSystemInforlsystmnf2: TRLSystemInfo;
    Rbl1: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLBandRodape: TRLBand;
    RLLabel3: TRLLabel;
    RLGroupPrincipal: TRLGroup;
    RLBandCabecalho: TRLBand;
    RLBandDetail: TRLBand;
    RLDBMemoDescricao: TRLDBMemo;
    RLDBTextTitulo: TRLDBText;
    RLDBTextVencimento: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabelStatus: TRLLabel;
    RLDBTextStatus: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmrRelatorio: TfmrRelatorio;

implementation

uses
  UDMLista;

{$R *.dfm}

procedure TfmrRelatorio.FormCreate(Sender: TObject);
begin
  RlblTitulo.Caption := DMLista.cdsListaTarefasID.AsString + ' - ' +DMLista.cdsListaTarefasDESCRICAO.AsString;
end;

procedure TfmrRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RLReport.Preview();
  fmrRelatorio := nil;
  Action := caFree;
end;

end.
