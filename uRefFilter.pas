unit uRefFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, DB, daADCompDataSet, sSkinProvider,
  daADCompClient, Grids, DBGridEh;

type
  TfmRefFilter = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    ADTableCAPTION: TStringField;
    ADTableORDERBY: TIntegerField;
    ADTableSTATE: TBooleanField;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADTableID_FILTER: TADAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefFilter: TfmRefFilter;

implementation

{$R *.dfm}

procedure TfmRefFilter.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefFilter.FormDestroy(Sender: TObject);
begin
  ADTable.Close;
end;

end.
