object Form14: TForm14
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'FORM MENU UTAMA ADMIN'
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
      object FORMUSER1: TMenuItem
        Caption = 'FORM USER'
        OnClick = FORMUSER1Click
      end
      object FORMBARANG1: TMenuItem
        Caption = 'FORM BARANG'
        OnClick = FORMBARANG1Click
      end
      object FORMKOSTUMER1: TMenuItem
        Caption = 'FORM KOSTUMER'
        OnClick = FORMKOSTUMER1Click
      end
      object FORMSUPPLIER1: TMenuItem
        Caption = 'FORM SUPPLIER'
        OnClick = FORMSUPPLIER1Click
      end
      object FORMSTOK1: TMenuItem
        Caption = 'FORM STOK'
        OnClick = FORMSTOK1Click
      end
      object FORMPEMBELIAN1: TMenuItem
        Caption = 'FORM PEMBELIAN'
        OnClick = FORMPEMBELIAN1Click
      end
      object FORMPENJUALAN1: TMenuItem
        Caption = 'FORM PENJUALAN'
        OnClick = FORMPENJUALAN1Click
      end
      object FORMRETURN1: TMenuItem
        Caption = 'FORM RETURN'
        OnClick = FORMRETURN1Click
      end
      object FORMDETAILBELI1: TMenuItem
        Caption = 'FORM DETAIL BELI'
        OnClick = FORMDETAILBELI1Click
      end
      object FORMDETAILJUAL1: TMenuItem
        Caption = 'FORM DETAIL JUAL'
        OnClick = FORMDETAILJUAL1Click
      end
      object FORMDETAILRETURN1: TMenuItem
        Caption = 'FORM DETAIL RETURN'
        OnClick = FORMDETAILRETURN1Click
      end
    end
    object KELUAR1: TMenuItem
      Caption = 'KELUAR'
      OnClick = KELUAR1Click
    end
  end
end
