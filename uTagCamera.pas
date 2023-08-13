unit uTagCamera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, sSkinProvider, DB, daADCompDataSet,
  daADCompClient, Grids, DBGridEh;

type
  TfmTagCamera = class(TForm)
    DBGridEh1: TDBGridEh;
    ADQuery: TADQuery;
    ADQueryDELONIX2: TStringField;
    ADQueryID_DELONIX: TIntegerField;
    ADQueryValve: TADQuery;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADQueryDelonix: TADQuery;
    ADQueryID_CAMERA: TIntegerField;
    ADQueryCAMERA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTagCamera: TfmTagCamera;

implementation

{$R *.dfm}

procedure TfmTagCamera.FormCreate(Sender: TObject);
begin
  ADQuery.Open;
end;

procedure TfmTagCamera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ADQuery.Close;
end;

end.
