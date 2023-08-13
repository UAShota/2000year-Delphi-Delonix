unit uRefKkb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, sSkinProvider, DB, daADCompDataSet,
  daADCompClient, Grids, DBGridEh;

type
  TfmRefKkb = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    ADTableCAPTION: TStringField;
    ADTableORDERBY: TIntegerField;
    ADTableSTATE: TBooleanField;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADTableID_KKB: TADAutoIncField;
    ADTablePOWER: TFloatField;
    ADTableCOST: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefKkb: TfmRefKkb;

implementation

{$R *.dfm}

procedure TfmRefKkb.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefKkb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADTable.Close;
end;

end.
