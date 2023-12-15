object DMLista: TDMLista
  OldCreateOrder = False
  Left = 342
  Top = 202
  Height = 439
  Width = 685
  object sqlListaTarefas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select'
      '  listatarefas.id,'
      '  listatarefas.descricao,'
      '  listatarefas.status'
      'from'
      '  listatarefas')
    SQLConnection = DM.conn
    Left = 64
    Top = 16
  end
  object sqlTarefas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'idlista'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'Select'
      '  tarefas.id,'
      '  tarefas.id_lista,'
      '  tarefas.titulo,'
      '  tarefas.descricao,'
      '  tarefas.data_cadastro,'
      '  tarefas.data_conclusao,'
      '  tarefas.data_vencimento,'
      '  tarefas.status'
      'from'
      '  tarefas'
      'where'
      '  tarefas.id_lista = :idlista')
    SQLConnection = DM.conn
    Left = 200
    Top = 24
  end
  object provListaTarefas: TDataSetProvider
    DataSet = sqlListaTarefas
    Left = 64
    Top = 72
  end
  object provTarefas: TDataSetProvider
    DataSet = sqlTarefas
    Left = 200
    Top = 80
  end
  object cdsListaTarefas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provListaTarefas'
    Left = 64
    Top = 128
    object cdsListaTarefasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsListaTarefasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsListaTarefasSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object cdsTarefas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provTarefas'
    Left = 200
    Top = 128
    object cdsTarefasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTarefasID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
    end
    object cdsTarefasTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object cdsTarefasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsTarefasDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsTarefasDATA_CONCLUSAO: TDateField
      FieldName = 'DATA_CONCLUSAO'
    end
    object cdsTarefasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object cdsTarefasSTATUS: TStringField
      FieldName = 'STATUS'
    end
  end
  object dsListaTarefas: TDataSource
    DataSet = cdsListaTarefas
    OnDataChange = dsListaTarefasDataChange
    Left = 64
    Top = 184
  end
  object dsTarefas: TDataSource
    DataSet = cdsTarefas
    Left = 200
    Top = 176
  end
end
