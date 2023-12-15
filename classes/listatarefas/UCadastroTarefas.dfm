object fmrCadastroTarefas: TfmrCadastroTarefas
  Left = 383
  Top = 186
  BorderStyle = bsDialog
  Caption = 'Cadastro de Tarefas'
  ClientHeight = 331
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 331
    Align = alClient
    Anchors = []
    TabOrder = 0
    DesignSize = (
      622
      331)
    object bevelPrincipal: TBevel
      Left = 1
      Top = 1
      Width = 620
      Height = 278
      Align = alClient
      Anchors = []
    end
    object bevelBotoes: TBevel
      Left = 1
      Top = 279
      Width = 620
      Height = 51
      Align = alBottom
      Anchors = []
    end
    object lblId: TLabel
      Left = 20
      Top = 29
      Width = 9
      Height = 13
      Anchors = []
      Caption = 'Id'
    end
    object lblTitulo: TLabel
      Left = 20
      Top = 64
      Width = 28
      Height = 13
      Anchors = []
      Caption = 'T'#237'tulo'
    end
    object lblIdLista: TLabel
      Left = 271
      Top = 29
      Width = 34
      Height = 13
      Anchors = []
      Caption = 'Id Lista'
    end
    object Label1: TLabel
      Left = 20
      Top = 112
      Width = 48
      Height = 13
      Anchors = []
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 20
      Top = 228
      Width = 56
      Height = 13
      Anchors = []
      Caption = 'Vencimento'
    end
    object btnSalvar: TBitBtn
      Left = 420
      Top = 288
      Width = 86
      Height = 26
      Anchors = []
      Caption = 'Salvar'
      TabOrder = 5
      OnClick = btnSalvarClick
      Kind = bkOK
    end
    object btnCancelar: TBitBtn
      Left = 523
      Top = 287
      Width = 89
      Height = 26
      Anchors = []
      Caption = 'Cancelar'
      TabOrder = 6
      Kind = bkCancel
    end
    object edtIdTarefa: TEdit
      Left = 89
      Top = 25
      Width = 105
      Height = 21
      Anchors = []
      Enabled = False
      TabOrder = 0
    end
    object edtTitulo: TEdit
      Left = 89
      Top = 60
      Width = 329
      Height = 21
      Anchors = []
      MaxLength = 50
      TabOrder = 2
    end
    object edtIdLista: TEdit
      Left = 311
      Top = 25
      Width = 105
      Height = 21
      Anchors = []
      Enabled = False
      TabOrder = 1
    end
    object mmDescricao: TMemo
      Left = 88
      Top = 96
      Width = 409
      Height = 89
      Lines.Strings = (
        'mmDescricao')
      MaxLength = 200
      TabOrder = 3
      OnKeyPress = mmDescricaoKeyPress
    end
    object dtpVencimento: TDateTimePicker
      Left = 88
      Top = 224
      Width = 186
      Height = 21
      Date = 45274.591029942130000000
      Time = 45274.591029942130000000
      TabOrder = 4
    end
  end
end
