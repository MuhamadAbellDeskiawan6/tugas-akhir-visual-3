unit Upembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls, StdCtrls,
  Buttons, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery2: TZQuery;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    BitBtn6: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure bersih;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id: string;

implementation

{$R *.dfm}

procedure TForm8.FormCreate(Sender: TObject);
begin
ZQuery2.First;
while not ZQuery2.Eof do
begin
  ComboBox1.items.add(ZQuery2.fieldbyname('id').asstring);
  ZQuery2.Next;
end;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
Edit1.Text:=ZQuery1.FieldList[1].AsString;
DateTimePicker1.Date:=ZQuery1.FieldList[2].AsDateTime;
Edit2.Text:=ZQuery1.FieldList[3].AsString;
Edit3.Text:=ZQuery1.FieldList[4].AsString;
ComboBox1.Text:=ZQuery1.FieldList[5].AsString;
ComboBox2.Text:=ZQuery1.FieldList[6].AsString;

Edit1.Enabled:=True;
DateTimePicker1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
ComboBox1.Enabled:=True;
ComboBox2.Enabled:=True;

BitBtn1.Enabled:=False;
BitBtn2.Enabled:=False;
BitBtn3.Enabled:=True;
BitBtn4.Enabled:=True;
BitBtn5.Enabled:=True;
end;

procedure TForm8.posisiawal;
begin
BitBtn1.Enabled:= True;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= False;

Edit1.Enabled:= False;
DateTimePicker1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
ComboBox1.Enabled:=False;
ComboBox2.Enabled:=False;
end;

procedure TForm8.bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
ComboBox1.Text:='--PILIH--';
ComboBox2.Text:='--PILIH--';
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
bersih;

BitBtn1.Enabled:= false;
BitBtn2.Enabled:= True;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= True;

Edit1.Enabled:= True;
DateTimePicker1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
ComboBox1.Enabled:=True;
ComboBox2.Enabled:=True;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
if (Edit1.Text= '') or (Edit2.Text ='') or (Edit3.Text ='') or (ComboBox1.Text= '') or (ComboBox2.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
begin
//simpan
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into t_pembelian values (null,"'+Edit1.Text+'","'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit2.Text+'","'+Edit3.Text+'","'+ComboBox1.Text+'","'+ComboBox2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from t_pembelian');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm8.BitBtn3Click(Sender: TObject);
begin
if (Edit1.Text= '') or (Edit2.Text ='') or (Edit3.Text ='') or (ComboBox1.Text= '') or (ComboBox2.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = ZQuery1.Fields[1].AsString) and (Edit2.Text = ZQuery1.Fields[3].AsString) and (Edit3.Text = ZQuery1.Fields[4].AsString) and  (ComboBox1.Text = ZQuery1.Fields[5].AsString) and (ComboBox2.Text = ZQuery1.Fields[6].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('update t_pembelian set no_transaksi="'+Edit1.Text+'",tgl="'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'",harga="'+Edit2.Text+'",jumlah_bayar="'+Edit3.Text+'",user_id="'+ComboBox1.Text+'",pembayaran="'+ComboBox2.Text+'" where id="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from t_pembelian');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
end;
end;

procedure TForm8.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from t_pembelian where id="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from t_pembelian');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm8.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
Form8.Destroy;
end;

procedure TForm8.BitBtn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
