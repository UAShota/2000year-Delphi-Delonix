unit uTagCost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, DB, daADCompDataSet, daADCompClient, Grids,
  DBGridEh, Menus, sSkinProvider;

type
  TfmTagCost = class(TForm)
    DBGridEh: TDBGridEh;
    ADTable: TADTable;
    ADTableID_DELONIX: TIntegerField;
    ADTableFIELD_INSERT: TIntegerField;
    ADTableFIELD_VALVE: TIntegerField;
    ADTableFIELD_VALVEEX: TIntegerField;
    ADTableFIELD_SECMIX: TIntegerField;
    ADTableFIELD_HEATWATER: TIntegerField;
    ADTableFIELD_HEATELECTRO: TIntegerField;
    ADTableFIELD_COOLWATER: TIntegerField;
    ADTableFIELD_COOLFREON: TIntegerField;
    ADTableFIELD_HUMI: TIntegerField;
    ADTableFIELD_NOIZEMIN: TIntegerField;
    ADTableFIELD_NOIZEMAX: TIntegerField;
    ADTableFIELD_RECROTOR: TIntegerField;
    ADTableFIELD_RECPLAST: TIntegerField;
    ADTableFIELD_RECGLICK: TIntegerField;
    ADTableFIELD_DSTD1: TIntegerField;
    ADTableFIELD_DSTD2: TIntegerField;
    ADTableFIELD_DSTD3: TIntegerField;
    ADTableFIELD_DSTD4: TIntegerField;
    ADTableFIELD_DSCN1: TIntegerField;
    ADTableFIELD_DSCN2: TIntegerField;
    ADTableFIELD_DSCN3: TIntegerField;
    ADTableFIELD_DSCN4: TIntegerField;
    DataSource: TDataSource;
    ADTableDetail: TADTable;
    ADTableDELONIX: TStringField;
    sSkinProvider1: TsSkinProvider;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTagCost: TfmTagCost;

implementation

{$R *.dfm}

uses
  uData, uWizard;

procedure TfmTagCost.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmTagCost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADTable.Close;
  Release;
end;

end.
