object Form6: TForm6
  Left = 192
  Top = 152
  Width = 484
  Height = 375
  Caption = 'FORM LOGIN'
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
  object l1: TLabel
    Left = 104
    Top = 96
    Width = 64
    Height = 16
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 104
    Top = 136
    Width = 68
    Height = 16
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 184
    Top = 40
    Width = 57
    Height = 24
    Caption = 'LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 232
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 232
    Top = 136
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object b1: TButton
    Left = 112
    Top = 184
    Width = 105
    Height = 41
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 232
    Top = 184
    Width = 105
    Height = 41
    Caption = 'EXIT'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 168
    Top = 240
    Width = 105
    Height = 41
    Caption = 'DAFTAR'
    TabOrder = 4
    OnClick = b3Click
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
      'D:\uniska\SEMESTER 5\PEMROGRAMAN VISUAL 3\TugasAkhir\Ulogin\libm' +
      'ysql.dll'
    Left = 312
    Top = 256
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 400
    Top = 256
  end
end
