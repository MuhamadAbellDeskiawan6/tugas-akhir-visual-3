unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm14 = class(TForm)
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    FORMUSER1: TMenuItem;
    FORMBARANG1: TMenuItem;
    FORMKOSTUMER1: TMenuItem;
    FORMSUPPLIER1: TMenuItem;
    FORMSTOK1: TMenuItem;
    FORMPEMBELIAN1: TMenuItem;
    FORMPENJUALAN1: TMenuItem;
    FORMRETURN1: TMenuItem;
    FORMDETAILBELI1: TMenuItem;
    FORMDETAILJUAL1: TMenuItem;
    FORMDETAILRETURN1: TMenuItem;
    KELUAR1: TMenuItem;
    Label1: TLabel;
    procedure FORMUSER1Click(Sender: TObject);
    procedure FORMBARANG1Click(Sender: TObject);
    procedure FORMKOSTUMER1Click(Sender: TObject);
    procedure FORMSUPPLIER1Click(Sender: TObject);
    procedure FORMSTOK1Click(Sender: TObject);
    procedure FORMPEMBELIAN1Click(Sender: TObject);
    procedure FORMPENJUALAN1Click(Sender: TObject);
    procedure FORMRETURN1Click(Sender: TObject);
    procedure FORMDETAILBELI1Click(Sender: TObject);
    procedure FORMDETAILJUAL1Click(Sender: TObject);
    procedure FORMDETAILRETURN1Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation
uses Ubarang, Udaftar, Udetailbeli, Udetailjual, Udetailreturn, Ukustomer, Ulogin, Upembelian, Upenjualan, Ureturn, Ustok, Usupplier, Uuser;

{$R *.dfm}

procedure TForm14.FORMUSER1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm14.FORMBARANG1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm14.FORMKOSTUMER1Click(Sender: TObject);
begin
Form1.ShowModal;
end;

procedure TForm14.FORMSUPPLIER1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm14.FORMSTOK1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm14.FORMPEMBELIAN1Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm14.FORMPENJUALAN1Click(Sender: TObject);
begin
Form9.ShowModal;
end;

procedure TForm14.FORMRETURN1Click(Sender: TObject);
begin
Form10.ShowModal;
end;

procedure TForm14.FORMDETAILBELI1Click(Sender: TObject);
begin
Form13.ShowModal;
end;

procedure TForm14.FORMDETAILJUAL1Click(Sender: TObject);
begin
Form12.ShowModal;
end;

procedure TForm14.FORMDETAILRETURN1Click(Sender: TObject);
begin
Form11.ShowModal;
end;

procedure TForm14.KELUAR1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
