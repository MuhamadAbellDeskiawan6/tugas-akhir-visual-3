object Form7: TForm7
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'FORM DAFTAR'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 40
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 96
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 96
    Top = 104
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label4: TLabel
    Left = 96
    Top = 136
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label5: TLabel
    Left = 96
    Top = 168
    Width = 93
    Height = 13
    Caption = 'Tanggal Bergabung'
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
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 208
    Top = 128
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
  object BitBtn2: TBitBtn
    Left = 408
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn5: TBitBtn
    Left = 408
    Top = 128
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 208
    Top = 160
    Width = 186
    Height = 21
    Date = 45257.939021250000000000
    Time = 45257.939021250000000000
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 296
    Width = 825
    Height = 120
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
      'D:\uniska\SEMESTER 5\PEMROGRAMAN VISUAL 3\TugasAkhir\Udaftar\lib' +
      'mysql.dll'
    Left = 568
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 568
    Top = 104
  end
end
