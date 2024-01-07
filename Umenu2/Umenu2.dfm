object Form15: TForm15
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'FORM MENU UTAMA PEMBELI'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 40
    Width = 734
    Height = 24
    Caption = 
      'SELAMAT DATANG DI APLIKASI PENJUALAN KAMERA BORNEO DIGITAL BANJA' +
      'RMASIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 32
    object FILE1: TMenuItem
      Caption = 'FILE'
      object FORMPENJUALAN1: TMenuItem
        Caption = 'FORM PENJUALAN'
        OnClick = FORMPENJUALAN1Click
      end
      object FORMDETAILJUAL1: TMenuItem
        Caption = 'FORM DETAIL JUAL'
        OnClick = FORMDETAILJUAL1Click
      end
    end
    object KELUAR1: TMenuItem
      Caption = 'KELUAR'
      OnClick = KELUAR1Click
    end
  end
end
