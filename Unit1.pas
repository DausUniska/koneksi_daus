unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    dbgrd: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt1: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    edt3: TEdit;
    edt2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure dbgrdCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
begin
bersih;
Button1.Enabled:= false;
Button2.Enabled:= True;
Button3.Enabled:= False;
Button4.Enabled:= False;
Button5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('NAMA KUSTOMER TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('No TELEPON TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('Alamat TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('Kota TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('KodePos TIDAK BOLEH KOSONG!');
end else
begin
 ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
ZQuery1.ExecSQL ;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kustomer');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end; 
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edt1.Text = ZQuery1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update kustomer set namakustomer= "'+edt1.Text+'",telp="'+edt2.Text+'" where idkustomer="'+id+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kustomer');
ZQuery1.Open;

posisiawal;
end; 
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from kustomer where idkustomer="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kustomer');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end


end;

procedure TForm1.Button5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.dbgrdCellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;
edt5.Text:= ZQuery1.Fields[5].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;

Button1.Enabled:= false;
Button2.Enabled:= False;
Button3.Enabled:= True;
Button4.Enabled:= True;
Button5.Enabled:= True;
end;

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;
procedure TForm1.posisiawal;
begin
 bersih;
Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= False;
Button5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
end;
end.
