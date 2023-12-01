object Form1: TForm1
  Left = 192
  Top = 153
  Width = 1044
  Height = 539
  Caption = 'FORM TAMBAH KUSTOMER'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label2: TLabel
    Left = 96
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label3: TLabel
    Left = 96
    Top = 104
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label4: TLabel
    Left = 96
    Top = 136
    Width = 44
    Height = 13
    Caption = 'Kode Pos'
  end
  object Label5: TLabel
    Left = 96
    Top = 168
    Width = 22
    Height = 13
    Caption = 'Kota'
  end
  object Label6: TLabel
    Left = 96
    Top = 200
    Width = 29
    Height = 13
    Caption = 'No HP'
  end
  object Edit1: TEdit
    Left = 208
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 208
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 208
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 208
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 208
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 48
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 408
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 408
    Top = 128
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 408
    Top = 168
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 408
    Top = 208
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = BitBtn5Click
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 320
    Width = 721
    Height = 120
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jk'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_pos'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kota'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_hp'
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 208
    Top = 96
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Text = '--PILIH JENIS KELAMIN--'
    Items.Strings = (
      'laki-laki'
      'perempuan')
  end
  object BitBtn6: TBitBtn
    Left = 408
    Top = 248
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 12
    OnClick = BitBtn6Click
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 568
    Top = 160
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
      'D:\uniska\SEMESTER 5\PEMROGRAMAN VISUAL 3\TugasAkhir\Ukustomer\l' +
      'ibmysql.dll'
    Left = 568
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from t_kustomer')
    Params = <>
    Left = 568
    Top = 104
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 664
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.010490532400000000
    ReportOptions.LastChange = 45260.060780798600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 664
    Top = 112
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Left = 207.874150000000000000
          Top = 7.559060000000000000
          Width = 313.700990000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA KUSTOMER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 38.173160000000000000
        Top = 204.094620000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          ShowHint = False
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
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 45.377860000000000000
          Top = 0.377860000000000000
          Width = 143.622140000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'nama'
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
            '[frxDBDataset1."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 188.976500000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'alamat'
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
            '[frxDBDataset1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 302.362400000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'jk'
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
            '[frxDBDataset1."jk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 415.748300000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'kode_pos'
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
            '[frxDBDataset1."kode_pos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 491.338900000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'kota'
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
            '[frxDBDataset1."kota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 604.724800000000000000
          Width = 128.504020000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'no_hp'
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
            '[frxDBDataset1."no_hp"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.952690000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
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
          Left = 45.377860000000000000
          Top = 4.157390000000000000
          Width = 143.622140000000000000
          Height = 37.795300000000000000
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
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
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
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
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
            'JENIS KELAMIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
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
            'KODE POS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
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
            'KOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 604.724800000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 37.795300000000000000
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
            'NOMOR HP')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 740.409927000000000000
      end
    end
  end
end
