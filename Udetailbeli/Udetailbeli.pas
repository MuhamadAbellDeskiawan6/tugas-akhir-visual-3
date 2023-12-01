unit Udetailbeli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Buttons, Grids, DBGrids,
  frxClass, frxDBSet;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    Label7: TLabel;
    ZQuery3: TZQuery;
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
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
  id: string;

implementation

{$R *.dfm}

procedure TForm13.FormCreate(Sender: TObject);
begin
ZQuery2.First;
while not ZQuery2.Eof do
begin
  ComboBox1.items.add(ZQuery2.fieldbyname('id').asstring);
  ZQuery2.Next;
end;
ZQuery3.First;
while not ZQuery3.Eof do
begin
  ComboBox2.items.add(ZQuery3.fieldbyname('id').asstring);
  ZQuery3.Next;
end;
end;

procedure TForm13.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
ComboBox1.Text:=ZQuery1.FieldList[1].AsString;
ComboBox2.Text:=ZQuery1.FieldList[2].AsString;
Edit1.Text:=ZQuery1.FieldList[3].AsString;
Edit2.Text:=ZQuery1.FieldList[4].AsString;
Edit3.Text:=ZQuery1.FieldList[5].AsString;

ComboBox1.Enabled:=True;
ComboBox2.Enabled:=True;
Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;

BitBtn1.Enabled:=False;
BitBtn2.Enabled:=False;
BitBtn3.Enabled:=True;
BitBtn4.Enabled:=True;
BitBtn5.Enabled:=True;
end;

procedure TForm13.posisiawal;
begin
BitBtn1.Enabled:= True;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= False;

ComboBox1.Enabled:=False;
ComboBox2.Enabled:=False;
Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
end;

procedure TForm13.bersih;
begin
ComboBox1.Text:='--PILIH--';
ComboBox2.Text:='--PILIH--';
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
end;

procedure TForm13.BitBtn1Click(Sender: TObject);
begin
bersih;

BitBtn1.Enabled:= false;
BitBtn2.Enabled:= True;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= True;

ComboBox1.Enabled:=True;
ComboBox2.Enabled:=True;
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
end;

procedure TForm13.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm13.BitBtn2Click(Sender: TObject);
begin
if (ComboBox1.Text= '') or (ComboBox2.Text= '') or (Edit1.Text= '') or (Edit2.Text ='') or (Edit3.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
begin
//simpan
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into detail_beli values (null,"'+ComboBox1.Text+'","'+ComboBox2.Text+'","'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from detail_beli');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm13.BitBtn3Click(Sender: TObject);
begin
if (ComboBox1.Text= '') or (ComboBox2.Text= '') or (Edit1.Text= '') or (Edit2.Text ='') or (Edit3.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if  (ComboBox1.Text = ZQuery1.Fields[1].AsString) and  (ComboBox2.Text = ZQuery1.Fields[2].AsString) and  (Edit1.Text = ZQuery1.Fields[3].AsString) and (Edit2.Text = ZQuery1.Fields[4].AsString) and (Edit3.Text = ZQuery1.Fields[5].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('update detail_beli set pembelian_id="'+ComboBox1.Text+'",barang_id="'+ComboBox2.Text+'",qty="'+Edit1.Text+'",harga="'+Edit2.Text+'",total="'+Edit3.Text+'" where id="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from detail_beli');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
end;
end;

procedure TForm13.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from detail_beli where id="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from detail_beli');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm13.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm13.BitBtn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
