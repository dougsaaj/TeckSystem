unit UCadastroTarefas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfmrCadastroTarefas = class(TForm)
    pnlPrincipal: TPanel;
    bevelPrincipal: TBevel;
    bevelBotoes: TBevel;
    lblId: TLabel;
    lblTitulo: TLabel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    edtIdTarefa: TEdit;
    edtTitulo: TEdit;
    edtIdLista: TEdit;
    lblIdLista: TLabel;
    Label1: TLabel;
    mmDescricao: TMemo;
    Label2: TLabel;
    dtpVencimento: TDateTimePicker;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mmDescricaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

    FTipoMovimentacao: string;

    procedure CadastrarAlterar(tipo: string);
    function ValidaCampos: Boolean;

  end;

var
  fmrCadastroTarefas: TfmrCadastroTarefas;

implementation

uses uServicos, uTarefas, uTarefasDao, UDM;

{$R *.dfm}

{ TfmrCadastroTarefas }

procedure TfmrCadastroTarefas.CadastrarAlterar(tipo: string);
var
  Tarefas: TTarefas;
  TarefasDao: TTarefasDao;
begin
  Tarefas := TTarefas.Create;

  Tarefas.ID_LISTA        := StrToInt(edtIdLista.Text);
  Tarefas.TITULO          := Trim(edtTitulo.Text);
  Tarefas.DESCRICAO       := Trim(mmDescricao.Text);
  Tarefas.DATA_VENCIMENTO := dtpVencimento.Date;
  Tarefas.DATA_CADASTRO   := Now;
  Tarefas.DATA_CADASTRO   := dtpVencimento.Date;

  TarefasDao := TTarefasDao.Create(DM.conn);

  if Trim(tipo) = 'I' then
  begin
    TarefasDao.Cadastrar(Tarefas);
    Servicos.Mensagem.INFO('Novo tarefa cadastrada!');
  end else
  if Trim(tipo) = 'A' then
  begin
    Tarefas.ID := StrToInt(edtIdTarefa.Text);
    TarefasDao.Alterar(Tarefas);
    Servicos.Mensagem.INFO('Tarefa alterada!');
  end;
end;

function TfmrCadastroTarefas.ValidaCampos: Boolean;
begin
 if Trim(edtTitulo.Text) = '' then
 begin
   Servicos.Mensagem.WARNING('Favor preencher o título.');
   Result := False;
   edtTitulo.SetFocus;
   Exit;
 end;
end;

procedure TfmrCadastroTarefas.btnSalvarClick(Sender: TObject);
begin
  if not Self.ValidaCampos then
  begin
    Servicos.Mensagem.WARNING('Favor preencher todos os campos antes de cadastrar a tarefa.');
    Exit;
  end;

  if Trim(FTipoMovimentacao) = 'cadastrar' then
    Self.CadastrarAlterar('I')
  else
    Self.CadastrarAlterar('A');
end;

procedure TfmrCadastroTarefas.FormCreate(Sender: TObject);
begin
  mmDescricao.Clear;
  dtpVencimento.Date := Now + 10;
end;

procedure TfmrCadastroTarefas.mmDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    SelectNext((Sender as TCustomEdit),true,true);
  end;
end;

end.
