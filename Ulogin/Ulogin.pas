unit Ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm6 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure b1Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Uuser, Udaftar, Umenu, Umenu2;

{$R *.dfm}

procedure TForm6.b1Click(Sender: TObject);
begin
with ZQuery1 do begin
SQL.Clear;
SQL.Add('select * from user where username='+QuotedStr(edit1.Text));
open;
end;

if ZQuery1.RecordCount=0
then
Application.MessageBox('Maaf user name tidak ditemukan','INFORMASI',MB_OK or MB_ICONINFORMATION)
else
begin
if ZQuery1.FieldByName('password').AsString<>Edit2.Text
then
Application.MessageBox('Pastikan password yang anda masukkan benar','ERROR',MB_OK or MB_ICONERROR)
else
begin
Application.MessageBox('LOGIN BERHASIL','INFORMASI',MB_OK or MB_ICONINFORMATION);
if ZQuery1.FieldByName('status').AsString='admin' then
begin
Form14.Show;
end
else
begin
form15.show;
end
end;
end;
hide;
end;

procedure TForm6.b3Click(Sender: TObject);
begin
Hide;
form7.showmodal;
end;

procedure TForm6.b2Click(Sender: TObject);
begin
close;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
end;

end.
