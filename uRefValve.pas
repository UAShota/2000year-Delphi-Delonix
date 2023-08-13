unit uRefValve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, DB, daADCompDataSet, sSkinProvider,
  daADCompClient, Grids, DBGridEh;

type
  TfmRefValve = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    ADTableCAPTION: TStringField;
    ADTableORDERBY: TIntegerField;
    ADTableSTATE: TBooleanField;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADTableID_VALVE: TADAutoIncField;
    ADTableCOST: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefValve: TfmRefValve;

implementation

{$R *.dfm}

procedure TfmRefValve.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefValve.FormDestroy(Sender: TObject);
begin
  ADTable.Close;
end;

end.
