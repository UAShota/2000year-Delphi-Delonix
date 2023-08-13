unit uTagValve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, sSkinProvider, DB, daADCompDataSet,
  daADCompClient, Grids, DBGridEh;

type
  TfmTagValve = class(TForm)
    DBGridEh1: TDBGridEh;
    ADQuery: TADQuery;
    ADQueryValve: TADQuery;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADQueryID_DELONIX: TIntegerField;
    ADQueryID_VALVE: TIntegerField;
    ADQueryDelonix: TADQuery;
    ADQueryDELONIX2: TStringField;
    ADQueryVALVE2: TStringField;
    ADQueryITEMCOUNT: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTagValve: TfmTagValve;

implementation

{$R *.dfm}

procedure TfmTagValve.FormCreate(Sender: TObject);
begin
  ADQuery.Open;
end;

procedure TfmTagValve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADQuery.Close
end;

end.
