unit Udaftar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls,
  StdCtrls, Buttons;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure bersih;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
begin
if (Edit1.Text= '')or
(Edit2.Text='')or
(Edit3.Text= '')or
(Edit4.Text='')or
(Edit5.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('username',Edit1.Text,[])) then
begin
ShowMessage('DATA SUDAH DIGUNAKAN!');

end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into user values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit5.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from user');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
bersih;
end;
end;
end;

procedure TForm7.BitBtn5Click(Sender: TObject);
begin
bersih;
end;

end.
