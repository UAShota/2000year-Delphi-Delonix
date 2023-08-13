unit uTagDelSpeed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, Grids, DBGridEh, StdCtrls, sComboBox, DB,
  daADCompDataSet, daADCompClient, sButton, sSkinProvider;

type
  TfmTagDelSpeed = class(TForm)
    ADQuery: TADQuery;
    ADQueryDetail: TADQuery;
    DBGridEh1: TDBGridEh;
    DataSource: TDataSource;
    ADQueryID_DELTYPE: TIntegerField;
    ADQueryCOOLSPEED: TIntegerField;
    ADQueryID_DELONIX: TIntegerField;
    ADQueryDELONIX: TStringField;
    cbDelType: TsComboBox;
    sSkinProvider1: TsSkinProvider;
    procedure cbDelTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADQueryBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FDelTypeID: integer;
  public
    { Public declarations }
  end;

var
  fmTagDelSpeed: TfmTagDelSpeed;

implementation

{$R *.dfm}

uses
  uData;

procedure TfmTagDelSpeed.cbDelTypeChange(Sender: TObject);
begin
  FDelTypeID := TObjTyped(cbDelType.Items.Objects[cbDelType.ItemIndex]).FID;
  ADQuery.Close;
  ADQuery.ParamByName('id').AsInteger := FDelTypeID;
  ADQuery.Open;
end;

procedure TfmTagDelSpeed.FormCreate(Sender: TObject);
var
  Typed: TObjTyped;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select id_deltype, caption from ref_deltype where state=true order by orderby';
    Open;
    while not(Eof) do begin
      Typed := TObjTyped.Create;
      with Typed do begin
      	FID := FieldByName('ID_DELTYPE').AsInteger;
      	FCaption := FieldByName('CAPTION').AsString;
        cbDelType.Items.AddObject(FCaption, Typed);
      end;
      Next;
    end;
  finally
    Close;
  end;

  if (cbDelType.Items.Count >= 0) then begin
    cbDelType.ItemIndex := 0;
    cbDelTypeChange(Sender);
  end;  
end;

procedure TfmTagDelSpeed.ADQueryBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_DELTYPE').AsInteger := FDelTypeID;
end;

end.
