unit uRefSection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, DB, daADCompDataSet, sSkinProvider,
  daADCompClient, Grids, DBGridEh;

type
  TfmRefSection = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    ADTableCAPTION: TStringField;
    ADTableORDERBY: TIntegerField;
    ADTableSTATE: TBooleanField;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADTableID_SECTION: TADAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefSection: TfmRefSection;

implementation

{$R *.dfm}

procedure TfmRefSection.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefSection.FormDestroy(Sender: TObject);
begin
  ADTable.Close;
end;

end.
