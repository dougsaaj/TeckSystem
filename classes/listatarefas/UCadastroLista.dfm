object frmCadastroLista: TfrmCadastroLista
  Left = 286
  Top = 158
  Anchors = [akLeft]
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Lista de Tarefas'
  ClientHeight = 278
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 278
    Align = alClient
    Anchors = []
    TabOrder = 0
    DesignSize = (
      541
      278)
    object bevelPrincipal: TBevel
      Left = 1
      Top = 1
      Width = 539
      Height = 225
      Align = alClient
      Anchors = []
    end
    object bevelBotoes: TBevel
      Left = 1
      Top = 226
      Width = 539
      Height = 51
      Align = alBottom
      Anchors = []
    end
    object lblId: TLabel
      Left = 27
      Top = 23
      Width = 9
      Height = 13
      Anchors = []
      Caption = 'Id'
    end
    object lblDescricao: TLabel
      Left = 24
      Top = 66
      Width = 48
      Height = 13
      Anchors = []
      Caption = 'Descri'#231#227'o'
    end
    object lblStatus: TLabel
      Left = 25
      Top = 107
      Width = 30
      Height = 13
      Anchors = []
      Caption = 'Status'
    end
    object btnSalvar: TBitBtn
      Left = 360
      Top = 239
      Width = 86
      Height = 26
      Anchors = []
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btnSalvarClick
      Kind = bkOK
    end
    object btnCancelar: TBitBtn
      Left = 449
      Top = 239
      Width = 89
      Height = 26
      Anchors = []
      TabOrder = 4
      OnClick = btnCancelarClick
      Kind = bkCancel
    end
    object cbbStatus: TComboBox
      Left = 88
      Top = 103
      Width = 145
      Height = 21
      Style = csDropDownList
      Anchors = []
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Ativo'
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object edtId: TEdit
      Left = 88
      Top = 19
      Width = 105
      Height = 21
      Anchors = []
      Enabled = False
      TabOrder = 0
    end
    object edtDescricao: TEdit
      Left = 88
      Top = 62
      Width = 329
      Height = 21
      Anchors = []
      MaxLength = 50
      TabOrder = 1
    end
  end
end
