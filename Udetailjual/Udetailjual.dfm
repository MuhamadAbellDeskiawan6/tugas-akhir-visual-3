object Form12: TForm12
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'FORM DETAIL JUAL'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 120
    Width = 16
    Height = 13
    Caption = 'qty'
  end
  object Label2: TLabel
    Left = 144
    Top = 152
    Width = 51
    Height = 13
    Caption = 'Harga Jual'
  end
  object Label3: TLabel
    Left = 144
    Top = 184
    Width = 46
    Height = 13
    Caption = 'Total Jual'
  end
  object Label4: TLabel
    Left = 144
    Top = 56
    Width = 60
    Height = 13
    Caption = 'Penjualan Id'
  end
  object Label5: TLabel
    Left = 144
    Top = 216
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label7: TLabel
    Left = 144
    Top = 88
    Width = 47
    Height = 13
    Caption = 'Barang Id'
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 328
    Width = 769
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ComboBox1: TComboBox
    Left = 264
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = '--PILIH--'
  end
  object Edit1: TEdit
    Left = 264
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 264
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 264
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 264
    Top = 80
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = '--PILIH--'
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 288
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 288
    Top = 288
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 376
    Top = 288
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 464
    Top = 288
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 552
    Top = 288
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = BitBtn5Click
  end
  object ComboBox3: TComboBox
    Left = 264
    Top = 208
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Text = '--PILIH--'
    Items.Strings = (
      'berhasil'
      'return')
  end
  object BitBtn6: TBitBtn
    Left = 640
    Top = 288
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 12
    OnClick = BitBtn6Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan_kamera'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\uniska\SEMESTER 5\PEMROGRAMAN VISUAL 3\TugasAkhir\Udetailjual' +
      '\libmysql.dll'
    Left = 504
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from detail_jual')
    Params = <>
    Left = 504
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 504
    Top = 136
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from t_penjualan')
    Params = <>
    Left = 576
    Top = 80
  end
  object ZQuery3: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from t_barang')
    Params = <>
    Left = 640
    Top = 80
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 584
    Top = 144
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.342126354200000000
    ReportOptions.LastChange = 45261.345782800930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 680
    Top = 144
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Left = 204.094620000000000000
          Width = 294.803340000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA DETAIL JUAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 60.472480000000000000
          Width = 117.165430000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PENJUALAN ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 177.637910000000000000
          Width = 113.385900000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BARANG ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 291.023810000000000000
          Width = 71.811070000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'QTY')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 362.834880000000000000
          Width = 136.063080000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA JUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 498.897960000000000000
          Width = 139.842610000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL JUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 638.740570000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 49.133890000000000000
        Top = 207.874150000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 60.472480000000000000
          Width = 117.165430000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'penjualan_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."penjualan_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 177.637910000000000000
          Width = 113.385900000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'barang_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."barang_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 291.023810000000000000
          Width = 71.811070000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'qty'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 362.834880000000000000
          Width = 136.063080000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'harga_jual'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."harga_jual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 498.897960000000000000
          Width = 139.842610000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'total_jual'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."total_jual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 638.740570000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
