object fmrRelatorio: TfmrRelatorio
  Left = 303
  Top = 139
  Width = 864
  Height = 528
  Caption = 'Relat'#243'rio de Lista de Tarefas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport: TRLReport
    Left = 24
    Top = 0
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DMLista.dsTarefas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBandTitulo: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 70
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RlblTitulo: TRLLabel
        Left = 112
        Top = 44
        Width = 178
        Height = 22
        Caption = 'Relat'#243'rio de Tarefas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInforlsystmnf1: TRLSystemInfo
        Left = 594
        Top = 1
        Width = 33
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInforlsystmnf2: TRLSystemInfo
        Left = 671
        Top = 2
        Width = 34
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itHour
        ParentFont = False
      end
      object Rbl1: TRLLabel
        Left = 594
        Top = 19
        Width = 77
        Height = 14
        Caption = 'P'#225'gina:         de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 630
        Top = 19
        Width = 25
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 671
        Top = 19
        Width = 31
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
      end
    end
    object RLBandRodape: TRLBand
      Left = 39
      Top = 297
      Width = 716
      Height = 15
      BandType = btFooter
      object RLLabel3: TRLLabel
        Left = 583
        Top = 1
        Width = 124
        Height = 12
        Caption = 'Desafio pr'#225'tico - TecSystem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroupPrincipal: TRLGroup
      Left = 39
      Top = 127
      Width = 716
      Height = 170
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataFields = 'ID'
      object RLBandCabecalho: TRLBand
        Left = 0
        Top = 0
        Width = 716
        Height = 17
        AutoSize = True
        object RLDBTextTitulo: TRLDBText
          Left = 68
          Top = 1
          Width = 373
          Height = 16
          AutoSize = False
          DataField = 'TITULO'
          DataSource = DMLista.dsTarefas
        end
        object RLDBTextVencimento: TRLDBText
          Left = 448
          Top = 1
          Width = 125
          Height = 16
          AutoSize = False
          DataField = 'DATA_VENCIMENTO'
          DataSource = DMLista.dsTarefas
        end
        object RLDBText1: TRLDBText
          Left = 6
          Top = 1
          Width = 63
          Height = 16
          AutoSize = False
          DataField = 'ID'
          DataSource = DMLista.dsTarefas
        end
        object RLDBTextStatus: TRLDBText
          Left = 576
          Top = 1
          Width = 125
          Height = 16
          AutoSize = False
          DataField = 'STATUS'
          DataSource = DMLista.dsTarefas
        end
      end
      object RLBandDetail: TRLBand
        Left = 0
        Top = 17
        Width = 716
        Height = 66
        object RLDraw1: TRLDraw
          Left = 5
          Top = 4
          Width = 705
          Height = 57
          Pen.Style = psDot
        end
        object RLDBMemoDescricao: TRLDBMemo
          Left = 13
          Top = 16
          Width = 685
          Height = 35
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'DESCRICAO'
          DataSource = DMLista.dsTarefas
        end
      end
    end
    object RLBand1: TRLBand
      Left = 39
      Top = 109
      Width = 716
      Height = 18
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel2: TRLLabel
        Left = 448
        Top = 1
        Width = 89
        Height = 16
        Caption = 'VENCIMENTO'
      end
      object RLLabel5: TRLLabel
        Left = 7
        Top = 3
        Width = 16
        Height = 16
        Caption = 'ID'
      end
      object RLLabel6: TRLLabel
        Left = 69
        Top = 1
        Width = 47
        Height = 16
        Caption = 'T'#205'TULO'
      end
      object RLLabelStatus: TRLLabel
        Left = 576
        Top = 1
        Width = 54
        Height = 16
        Caption = 'STATUS'
      end
    end
  end
end
