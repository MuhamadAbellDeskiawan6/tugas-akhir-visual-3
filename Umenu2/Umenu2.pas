unit Umenu2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm15 = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    FORMPENJUALAN1: TMenuItem;
    FORMDETAILJUAL1: TMenuItem;
    KELUAR1: TMenuItem;
    procedure FORMPENJUALAN1Click(Sender: TObject);
    procedure FORMDETAILJUAL1Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation
uses Upenjualan, Udetailjual;

{$R *.dfm}

procedure TForm15.FORMPENJUALAN1Click(Sender: TObject);
begin
Form9.ShowModal;
end;

procedure TForm15.FORMDETAILJUAL1Click(Sender: TObject);
begin
Form12.ShowModal;
end;

procedure TForm15.KELUAR1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
