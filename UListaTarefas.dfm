object frmListaTarefas: TfrmListaTarefas
  Left = 204
  Top = 83
  Anchors = [akTop]
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Lista de Tarefas'
  ClientHeight = 598
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 598
    Align = alClient
    TabOrder = 0
    object BevelGrid: TBevel
      Left = 1
      Top = 41
      Width = 1070
      Height = 167
      Align = alTop
    end
    object BevelCabecalho: TBevel
      Left = 1
      Top = 1
      Width = 1070
      Height = 40
      Align = alTop
    end
    object BevelButtonTarefas: TBevel
      Left = 1
      Top = 561
      Width = 1070
      Height = 34
      Align = alTop
    end
    object BevelButton: TBevel
      Left = 1
      Top = 208
      Width = 1070
      Height = 40
      Align = alTop
    end
    object BevelTarefas: TBevel
      Left = 1
      Top = 248
      Width = 1070
      Height = 313
      Align = alTop
    end
    object btnConcluirTarefa: TBitBtn
      Left = 665
      Top = 567
      Width = 131
      Height = 25
      Caption = 'C&oncluir Tarefa'
      TabOrder = 13
      OnClick = btnConcluirTarefaClick
      Kind = bkYes
    end
    object btnImprimir: TBitBtn
      Left = 5
      Top = 567
      Width = 169
      Height = 25
      Caption = 'Imprimir'
      Default = True
      ModalResult = 1
      TabOrder = 12
      OnClick = btnImprimirClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bdGridLista: TDBGrid
      Left = 1
      Top = 44
      Width = 1070
      Height = 164
      DataSource = DMLista.dsListaTarefas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object dbGridTarefas: TDBGrid
      Left = 1
      Top = 242
      Width = 1070
      Height = 318
      DataSource = DMLista.dsTarefas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TITULO'
          Title.Alignment = taCenter
          Title.Caption = 'T'#205'TULO'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 500
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CADASTRO'
          Title.Alignment = taCenter
          Title.Caption = 'CADASTRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'VENCIMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CONCLUSAO'
          Title.Alignment = taCenter
          Title.Caption = 'CONCLUS'#195'O'
          Width = 64
          Visible = True
        end>
    end
    object btnCadastrar: TBitBtn
      Left = 706
      Top = 216
      Width = 89
      Height = 25
      Caption = '&Cadastrar'
      TabOrder = 2
      OnClick = btnCadastrarClick
      Kind = bkYes
    end
    object btnAlterar: TBitBtn
      Left = 796
      Top = 216
      Width = 89
      Height = 25
      Caption = '&Alterar'
      TabOrder = 3
      OnClick = btnAlterarClick
      Kind = bkAll
    end
    object btnDeletar: TBitBtn
      Left = 886
      Top = 216
      Width = 89
      Height = 25
      Caption = 'Deletar'
      TabOrder = 4
      OnClick = btnDeletarClick
      Kind = bkCancel
    end
    object btnSair: TBitBtn
      Left = 977
      Top = 216
      Width = 89
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
      OnClick = btnSairClick
      Kind = bkIgnore
    end
    object btnCadastrarTarefa: TBitBtn
      Left = 798
      Top = 567
      Width = 89
      Height = 25
      Caption = '&Cadastrar'
      TabOrder = 6
      OnClick = btnCadastrarTarefaClick
      Kind = bkYes
    end
    object btnAlterarTarefa: TBitBtn
      Left = 888
      Top = 567
      Width = 89
      Height = 25
      Caption = '&Alterar'
      TabOrder = 7
      OnClick = btnAlterarTarefaClick
      Kind = bkAll
    end
    object btnDeletarTarefa: TBitBtn
      Left = 978
      Top = 567
      Width = 89
      Height = 25
      Caption = 'Deletar'
      TabOrder = 8
      OnClick = btnDeletarTarefaClick
      Kind = bkCancel
    end
    object btnPesquisar: TBitBtn
      Left = 968
      Top = 8
      Width = 97
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 9
      OnClick = btnPesquisarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object pnlVisualizacao2: TPanel
      Left = 2
      Top = 44
      Width = 1068
      Height = 551
      TabOrder = 10
      object bvlLista: TBevel
        Left = 4
        Top = 2
        Width = 237
        Height = 543
      end
      object bvlTarefas: TBevel
        Left = 243
        Top = 2
        Width = 822
        Height = 543
      end
      object lblTarefas: TLabel
        Left = 584
        Top = 10
        Width = 62
        Height = 20
        Alignment = taCenter
        Caption = 'Tarefas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblLista: TLabel
        Left = 97
        Top = 10
        Width = 40
        Height = 20
        Alignment = taCenter
        Caption = 'Lista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tvLista: TTreeView
        Left = 8
        Top = 38
        Width = 230
        Height = 502
        Indent = 19
        TabOrder = 0
        OnClick = tvListaClick
      end
      object ScrollBoxPanel: TScrollBox
        Left = 246
        Top = 38
        Width = 820
        Height = 504
        TabOrder = 1
        object pnlTarefas: TPanel
          Left = 0
          Top = 0
          Width = 815
          Height = 495
          TabOrder = 0
        end
      end
    end
    object rgVisualizacao: TRadioGroup
      Left = 7
      Top = 2
      Width = 236
      Height = 37
      Caption = 'Visualiza'#231#227'o'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'DBGrid'
        'TreeView')
      TabOrder = 11
      OnClick = rgVisualizacaoClick
    end
  end
end
