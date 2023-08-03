object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 406
  Width = 615
  object sqlconexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=localhost:\Users\user\OneDrive\Documentos\GitHub\PDV\EX' +
        'E\DADOS\PDV.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=True')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 48
    Top = 16
  end
  object dtsLogin: TDataSource
    DataSet = cdsLogin
    Left = 104
    Top = 72
  end
  object cdsLogin: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogin'
    Left = 72
    Top = 72
    object cdsLoginID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLoginNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsLoginLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object cdsLoginSENHA: TStringField
      FieldName = 'SENHA'
    end
    object cdsLoginNIVEL: TStringField
      FieldName = 'NIVEL'
      Size = 30
    end
  end
  object dspLogin: TDataSetProvider
    DataSet = sqlLogin
    Left = 40
    Top = 72
  end
  object sqlLogin: TSQLDataSet
    CommandText = 'SELECT ID, NOME, LOGIN, SENHA, NIVEL FROM USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlconexao
    Left = 8
    Top = 72
    object sqlLoginID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlLoginNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sqlLoginLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object sqlLoginSENHA: TStringField
      FieldName = 'SENHA'
    end
    object sqlLoginNIVEL: TStringField
      FieldName = 'NIVEL'
      Size = 30
    end
  end
  object sqlPDV: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM ITENS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlconexao
    Left = 16
    Top = 136
    object sqlPDVID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlPDVITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object sqlPDVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object sqlPDVVALORUNITARIO: TFMTBCDField
      FieldName = 'VALORUNITARIO'
      Precision = 15
      Size = 2
    end
    object sqlPDVQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 2
    end
    object sqlPDVSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
  end
  object dspPDV: TDataSetProvider
    DataSet = sqlPDV
    Left = 48
    Top = 136
  end
  object cdsPDV: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPDV'
    Left = 80
    Top = 136
    object cdsPDVID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPDVITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsPDVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object cdsPDVVALORUNITARIO: TFMTBCDField
      FieldName = 'VALORUNITARIO'
      Precision = 15
      Size = 2
    end
    object cdsPDVQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 2
    end
    object cdsPDVSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
  end
end
