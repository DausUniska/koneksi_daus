object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 91
    Height = 16
    Caption = 'Nama Kustomer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 48
    Width = 46
    Height = 16
    Caption = 'Telepon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 80
    Width = 40
    Height = 16
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 112
    Width = 25
    Height = 16
    Caption = 'Kota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 144
    Width = 52
    Height = 16
    Caption = 'Kode Pos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd: TDBGrid
    Left = 8
    Top = 296
    Width = 441
    Height = 121
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrdCellClick
  end
  object edt1: TEdit
    Left = 136
    Top = 16
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 136
    Top = 48
    Width = 321
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 136
    Top = 80
    Width = 321
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 136
    Top = 112
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 136
    Top = 144
    Width = 321
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 32
    Top = 184
    Width = 75
    Height = 41
    Caption = 'Baru'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 184
    Width = 75
    Height = 41
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 184
    Width = 75
    Height = 41
    Caption = 'Edit'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 296
    Top = 184
    Width = 75
    Height = 41
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 384
    Top = 184
    Width = 75
    Height = 41
    Caption = 'Batal'
    TabOrder = 10
    OnClick = Button5Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\koneksi\libmysql.dll'
    Left = 40
    Top = 296
  end
  object ZQuery1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 40
    Top = 336
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 376
  end
end
