unit uRefDelType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, DB, daADCompDataSet, sSkinProvider,
  daADCompClient, Grids, DBGridEh;

type
  TfmRefDelType = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADTableID_DELTYPE: TADAutoIncField;
    ADTableCAPTION: TStringField;
    ADTableINFILUX: TBooleanField;
    ADTableEXTRACTION: TBooleanField;
    ADTableORDERBY: TIntegerField;
    ADTableSTATE: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefDelType: TfmRefDelType;

implementation

{$R *.dfm}

procedure TfmRefDelType.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefDelType.FormDestroy(Sender: TObject);
begin
  ADTable.Close;
end;

end.
