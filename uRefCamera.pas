unit uRefCamera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, sSkinProvider, DB, daADCompDataSet,
  daADCompClient, Grids, DBGridEh;

type
  TfmRefCamera = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    ADTableCAPTION: TStringField;
    ADTableORDERBY: TIntegerField;
    ADTableSTATE: TBooleanField;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADTableID_CAMERA: TADAutoIncField;
    ADTableCOST: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefCamera: TfmRefCamera;

implementation

{$R *.dfm}

procedure TfmRefCamera.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefCamera.FormDestroy(Sender: TObject);
begin
  ADTable.Close;
end;

end.
