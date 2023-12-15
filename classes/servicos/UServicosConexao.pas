unit uServicosConexao;

interface

uses
  IniFiles, SysUtils, Forms;

type
  ServicosConexao = class
    public
      class function LerArquivoIniIndiceBancos(acao: String): String;

  end;
implementation

{ ServicosConexao }

class function ServicosConexao.LerArquivoIniIndiceBancos(acao: String): String;
var
  VIniObj: TIniFile;
Begin
  VIniObj := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'confbanco.ini');
  try
    Result := VIniObj.ReadString('BANCO', acao, '');
  finally
    VIniObj.Free;
  end;
end;

end.
