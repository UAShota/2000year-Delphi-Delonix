unit uRefItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, sSkinProvider, DB, daADCompDataSet,
  daADCompClient, Grids, DBGridEh;

type
  TfmRefItem = class(TForm)
    DBGridEh1: TDBGridEh;
    ADTable: TADTable;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADTableID_ITEM: TADAutoIncField;
    ADTableFIELDVALUE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefItem: TfmRefItem;

implementation

{$R *.dfm}

procedure TfmRefItem.FormCreate(Sender: TObject);
begin
  ADTable.Open;
end;

procedure TfmRefItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADTable.Close;
end;

end.
