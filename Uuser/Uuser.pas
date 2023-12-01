unit Uuser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls, StdCtrls,
  Buttons, frxClass, frxDBSet;

type
  TForm5 = class(TForm)
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    BitBtn6: TBitBtn;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id: string;

implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=ZQuery1.FieldList[1].AsString;
Edit2.Text:=ZQuery1.FieldList[2].AsString;
Edit3.Text:=ZQuery1.FieldList[3].AsString;
Edit4.Text:=ZQuery1.FieldList[4].AsString;
DateTimePicker1.Date:=ZQuery1.FieldList[5].AsDateTime;
Edit5.Text:=ZQuery1.FieldList[6].AsString;

Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
DateTimePicker1.Enabled:=True;
Edit5.Enabled:=True;

BitBtn1.Enabled:=False;
BitBtn2.Enabled:=False;
BitBtn3.Enabled:=True;
BitBtn4.Enabled:=True;
BitBtn5.Enabled:=True;
end;

procedure TForm5.posisiawal;
begin
BitBtn1.Enabled:= True;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= False;

Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
Edit4.Enabled:= False;
DateTimePicker1.Enabled:= False;
Edit5.Enabled:= False;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
bersih;

BitBtn1.Enabled:= false;
BitBtn2.Enabled:= True;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= True;

Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
DateTimePicker1.Enabled:=True;
Edit5.Enabled:= True;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
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
posisiawal;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into user values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit5.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from user');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
bersih;
end;
end;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
begin
if (Edit1.Text= '')or
(Edit2.Text='')or
(Edit3.Text= '')or
(Edit4.Text='')or
(Edit5.Text='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = ZQuery1.Fields[1].AsString) and
(Edit2.Text = ZQuery1.Fields[2].AsString) and
(Edit3.Text = ZQuery1.Fields[3].AsString) and
(Edit4.Text = ZQuery1.Fields[4].AsString) and
(Edit5.Text = ZQuery1.Fields[6].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin

id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update user set username="'+Edit1.Text+'",password="'+Edit2.Text+'",nama="'+Edit3.Text+'",alamat="'+Edit4.Text+'",tgl_bergabung="'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'",no_hp="'+Edit5.Text+'" where id="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from user');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;
end;

procedure TForm5.BitBtn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

end.
