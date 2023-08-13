unit uTagCostEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, sGroupBox, daADStanIntf,
  daADDatSManager, daADStanOption, daADStanParam, daADPhysIntf,
  daADDAptIntf, DB, daADCompDataSet, daADCompClient, sSkinProvider, Menus;

type
  TfmTagCostEx = class(TForm)
    sGroupBox1: TsGroupBox;
    DBGridEh1: TDBGridEh;
    DataSourceFilter: TDataSource;
    ADTagFilter: TADTable;
    ADTagFilterID_FILTER: TIntegerField;
    ADTagFilterADDSDesigner1: TIntegerField;
    ADTagFilterADDSDesigner2: TIntegerField;
    ADTagFilterADDSDesigner3: TIntegerField;
    ADTagFilterADDSDesigner4: TIntegerField;
    ADTagFilterADDSDesigner5: TIntegerField;
    ADTagFilterADDSDesigner6: TIntegerField;
    ADTagFilterADDSDesigner7: TIntegerField;
    ADTagFilterADDSDesigner8: TIntegerField;
    ADTagFilterADDSDesigner9: TIntegerField;
    ADTagFilterADDSDesigner10: TIntegerField;
    ADTagFilterADDSDesigner11: TIntegerField;
    ADTagFilterADDSDesigner12: TIntegerField;
    ADTagFilterADDSDesigner13: TIntegerField;
    ADTagFilterADDSDesigner14: TIntegerField;
    ADTagFilterADDSDesigner15: TIntegerField;
    ADTagFilterADDSDesigner16: TIntegerField;
    ADTagFilterADDSDesigner17: TIntegerField;
    ADTableFilter: TADTable;
    ADTagFilterFILTER: TStringField;
    sSkinProvider1: TsSkinProvider;
    sGroupBox2: TsGroupBox;
    DBGridEh2: TDBGridEh;
    DataSourceSection: TDataSource;
    ADTagSection: TADTable;
    ADTableSection: TADTable;
    ADTagSectionIntegerField1: TIntegerField;
    ADTagSectionIntegerField2: TIntegerField;
    ADTagSectionIntegerField3: TIntegerField;
    ADTagSectionIntegerField4: TIntegerField;
    ADTagSectionIntegerField5: TIntegerField;
    ADTagSectionIntegerField6: TIntegerField;
    ADTagSectionIntegerField7: TIntegerField;
    ADTagSectionIntegerField8: TIntegerField;
    ADTagSectionIntegerField9: TIntegerField;
    ADTagSectionIntegerField10: TIntegerField;
    ADTagSectionIntegerField11: TIntegerField;
    ADTagSectionIntegerField12: TIntegerField;
    ADTagSectionIntegerField13: TIntegerField;
    ADTagSectionIntegerField14: TIntegerField;
    ADTagSectionIntegerField15: TIntegerField;
    ADTagSectionIntegerField16: TIntegerField;
    ADTagSectionIntegerField17: TIntegerField;
    ADTagSectionID_SECTION: TIntegerField;
    ADTagSectionSECTION: TStringField;
    sGroupBox3: TsGroupBox;
    DBGridEh3: TDBGridEh;
    DataSourceFreq: TDataSource;
    ADTableFreq: TADTable;
    sGroupBox4: TsGroupBox;
    DBGridEh4: TDBGridEh;
    DataSourceStar: TDataSource;
    ADTableStar: TADTable;
    ADTableFreqPOWER: TFloatField;
    ADTableFreqCOST: TIntegerField;
    ADTableStarPOWER: TFloatField;
    ADTableStarCOST: TIntegerField;
    sGroupBox5: TsGroupBox;
    DBGridEh5: TDBGridEh;
    DataSourceCooler: TDataSource;
    ADTableCooler: TADTable;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    sGroupBox6: TsGroupBox;
    DBGridEh6: TDBGridEh;
    DataSourceBlock: TDataSource;
    ADTableBlock: TADTable;
    ADTableBlockID_BLOCK: TADAutoIncField;
    ADTableBlockCAPTION: TStringField;
    ADTableBlockCOST: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTagCostEx: TfmTagCostEx;

implementation

{$R *.dfm}

uses
  uData;

procedure TfmTagCostEx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ADTagFilter.Close;
  ADTagSection.Close;
  ADTableFreq.Close;
  ADTableStar.Close;
  ADTableCooler.Close;
  ADTableBlock.Close;
  Release;
end;

procedure TfmTagCostEx.FormCreate(Sender: TObject);
begin
  ADTagFilter.Open;
  ADTagSection.Open;
  ADTableFreq.Open;
  ADTableStar.Open;
  ADTableCooler.Open;
  ADTableBlock.Open;
end;

end.
