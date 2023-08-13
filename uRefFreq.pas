unit uRefFreq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, sSkinProvider, DB, daADCompDataSet,
  daADCompClient, Grids, DBGridEh;

type
  TfmRefFreq = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADTableID_FREQ: TADAutoIncField;
    ADTableCOOLSPEED: TFloatField;
    ADTableREALPOWER: TFloatField;
    ADTableORDERBY: TIntegerField;
    ADTableSTATE: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefFreq: TfmRefFreq;

implementation

{$R *.dfm}

procedure TfmRefFreq.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefFreq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADTable.Close;
end;

end.
