unit UCadastroLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmCadastroLista = class(TForm)
    pnlPrincipal: TPanel;
    bevelPrincipal: TBevel;
    bevelBotoes: TBevel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    lblId: TLabel;
    lblDescricao: TLabel;
    lblStatus: TLabel;
    cbbStatus: TComboBox;
    edtId: TEdit;
    edtDescricao: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    FTipoMovimentacao: string;

    procedure CadastrarAlterar(tipo: string);
    function ValidaCampos: Boolean;

  end;

var
  frmCadastroLista: TfrmCadastroLista;

implementation

uses uLista, uListaDao, UDM, uServicos;

{$R *.dfm}

procedure TfrmCadastroLista.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroLista.CadastrarAlterar(tipo: string);
var
  Lista: TLista;
  ListaDao: TListaDao;
begin
  Lista := TLista.Create;

  Lista.DESCRICAO := Trim(edtDescricao.Text);
  Lista.STATUS    := Trim(cbbStatus.Text);

  ListaDao := TListaDao.Create(DM.conn);

  //validação do campo descrição
  if ListaDao.PesquisarNome(Lista) then
  begin
    Servicos.Mensagem.INFO('Descrição já cadastrada.');
    Lista.Destroy;
    ListaDao.Destroy;
    Exit;
  end;

  if Trim(tipo) = 'I' then
  begin
    ListaDao.Cadastrar(Lista);
    Servicos.Mensagem.INFO('Novo lista cadastrada!');
  end else
  if Trim(tipo) = 'A' then
  begin
    Lista.ID := StrToInt(edtId.Text);
    ListaDao.Alterar(Lista);
    Servicos.Mensagem.INFO('Lista alterada!');
  end;

  Lista.Destroy;
  ListaDao.Destroy;
end;

procedure TfrmCadastroLista.btnSalvarClick(Sender: TObject);
begin
  if not Self.ValidaCampos then
  begin
    Servicos.Mensagem.WARNING('Favor preencher todos os campos antes de cadastrar a lista.');
    Exit;
  end;

  try
    DM.IniciarTransacao();

    if Trim(FTipoMovimentacao) = 'cadastrar' then
      Self.CadastrarAlterar('I')
    else
      Self.CadastrarAlterar('A');

    DM.CommitTransacao();
  except
    DM.RollbackTransacao();
    Servicos.Mensagem.WARNING('Falha ao tentar executar a transação.');
  end;
end;

function TfrmCadastroLista.ValidaCampos: Boolean;
begin
  if Trim(edtDescricao.Text) = '' then
    Result := False
  else
    Result := True;  
end;

end.
