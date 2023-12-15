object frmPrincipal: TfrmPrincipal
  Left = 270
  Top = 160
  Width = 928
  Height = 480
  Caption = 'Lista de Tarefas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object coolBarPrincipal: TCoolBar
    Left = 0
    Top = 0
    Width = 912
    Height = 35
    Bands = <
      item
        Control = toolBarPrincipal
        ImageIndex = -1
        MinHeight = 27
        Width = 908
      end>
    object toolBarPrincipal: TToolBar
      Left = 9
      Top = 0
      Width = 895
      Height = 27
      ButtonHeight = 21
      ButtonWidth = 131
      Caption = 'toolBarPrincipal'
      ShowCaptions = True
      TabOrder = 0
      object toolButtonLista: TToolButton
        Left = 0
        Top = 2
        Action = actLista
        Caption = 'Cadastrar Lista de Tarefas'
        ImageIndex = 0
      end
      object ToolButton1: TToolButton
        Left = 131
        Top = 2
        Width = 22
        Caption = 'ToolButton1'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButtonSair: TToolButton
        Left = 153
        Top = 2
        Action = actSair
        Caption = 'Sair'
        ImageIndex = 1
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 40
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object ListadeTarefas1: TMenuItem
        Action = actLista
      end
      object Sair1: TMenuItem
        Action = actSair
      end
    end
  end
  object aclPrincipal: TActionList
    Left = 40
    Top = 40
    object actLista: TAction
      Caption = '&Lista de Tarefas'
      Hint = 'Cadastrar lista de tarefas'
      ImageIndex = 5
      OnExecute = actListaExecute
    end
    object actSair: TAction
      Caption = 'Sa&ir'
      Hint = 'Sair do sistema'
      ImageIndex = 6
      OnExecute = actSairExecute
    end
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 8
    Top = 80
  end
end
