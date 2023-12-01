unit Usupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, Buttons,
  frxClass, frxDBSet;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
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
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DBGrid1: TDBGrid;
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
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
   id: string;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=ZQuery1.FieldList[1].AsString;
Edit2.Text:=ZQuery1.FieldList[2].AsString;
Edit3.Text:=ZQuery1.FieldList[3].AsString;
Edit4.Text:=ZQuery1.FieldList[4].AsString;
Edit5.Text:=ZQuery1.FieldList[5].AsString;

Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;

BitBtn1.Enabled:=False;
BitBtn2.Enabled:=False;
BitBtn3.Enabled:=True;
BitBtn4.Enabled:=True;
BitBtn5.Enabled:=True;
end;

procedure TForm3.posisiawal;
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
Edit5.Enabled:= False;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
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
Edit5.Enabled:= True;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
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
if (ZQuery1.Locate('no_hp',Edit4.Text,[])) or
(ZQuery1.Locate('perusahaan_asal',Edit5.Text,[])) then
begin
ShowMessage('DATA SUDAH DIGUNAKAN!');
posisiawal;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into t_supplier values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from t_supplier');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
bersih;
end;
end;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
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
(Edit5.Text = ZQuery1.Fields[5].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin

id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update t_supplier set nama_supplier="'+Edit1.Text+'",alamat="'+Edit2.Text+'",kota_asal="'+Edit3.Text+'",no_hp="'+Edit4.Text+'",perusahaan_asal="'+Edit5.Text+'" where id="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from t_supplier');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from t_supplier where id="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from t_supplier');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS!');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
bersih;
end;
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm3.BitBtn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
