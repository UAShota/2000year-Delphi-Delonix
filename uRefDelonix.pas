unit uRefDelonix;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, DB, daADCompDataSet, daADCompClient, Grids,
  DBGridEh, sSkinProvider;

type
  TfmRefDelonix = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    DataSource: TDataSource;
    ADTableID_DELONIX: TADAutoIncField;
    ADTableCAPTION: TStringField;
    ADTableORDERBY: TIntegerField;
    ADTableSTATE: TBooleanField;
    sSkinProvider1: TsSkinProvider;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefDelonix: TfmRefDelonix;

implementation

{$R *.dfm}

uses
  uData;

procedure TfmRefDelonix.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefDelonix.FormDestroy(Sender: TObject);
begin
  ADTable.Close;
end;

end.
