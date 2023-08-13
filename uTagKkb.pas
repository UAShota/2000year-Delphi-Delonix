unit uTagKkb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, daADStanIntf, daADDatSManager, daADStanOption, daADStanParam,
  daADPhysIntf, daADDAptIntf, sSkinProvider, DB, daADCompDataSet,
  daADCompClient, StdCtrls, sComboBox, Grids, DBGridEh;

type
  TfmTagKkb = class(TForm)
    DBGridEh1: TDBGridEh;
    cbKKB: TsComboBox;
    ADQuery: TADQuery;
    DataSource: TDataSource;
    sSkinProvider1: TsSkinProvider;
    ADQueryCAPTION: TStringField;
    ADQueryCOUNT: TIntegerField;
    ADQueryID_KKB: TIntegerField;
    ADQueryCOST: TIntegerField;
    procedure ADQueryBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cbKKBChange(Sender: TObject);
  private
    { Private declarations }
    FKKBID: integer;
  public
    { Public declarations }
  end;

var
  fmTagKkb: TfmTagKkb;

implementation

{$R *.dfm}

uses
  uData;

procedure TfmTagKkb.ADQueryBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_KKB').AsInteger := FKKBID;
end;

procedure TfmTagKkb.FormCreate(Sender: TObject);
var
  KKB: TObjKkb;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select id_kkb, caption from ref_kkb where state=true order by orderby';
    Open;
    while not(Eof) do begin
      KKB := TObjKKB.Create;
      with KKB do begin
      	FID := FieldByName('ID_KKB').AsInteger;
      	FCaption := FieldByName('CAPTION').AsString;
        cbKKB.Items.AddObject(FCaption, KKB);
      end;
      Next;
    end;
  finally
    Close;
  end;

  if (cbKKB.Items.Count >= 0) then begin
    cbKKB.ItemIndex := 0;
    cbKKBChange(Sender);
  end;
end;

procedure TfmTagKkb.cbKKBChange(Sender: TObject);
begin
  FKKBID := TObjKKB(cbKKB.Items.Objects[cbKKB.ItemIndex]).FID;
  ADQuery.Close;
  ADQuery.ParamByName('id').AsInteger := FKKBID;
  ADQuery.Open;
end;

end.
