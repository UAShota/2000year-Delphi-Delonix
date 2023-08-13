unit uData;

interface

uses
  SysUtils, Classes, ImgList, Controls, daADStanIntf, daADStanOption,
  daADStanDef, daADPhysIntf, daADDatSManager, daADStanParam, daADDAptIntf,
  DB, daADCompDataSet, daADCompClient, daADGUIxFormsWait, daADPhysManager,
  daADPhysMSAcc, sSkinManager, acAlphaImageList, sComboBox, Dialogs;

type
  TDM = class(TDataModule)
    ImageButton: TsAlphaImageList;
    SkinManager: TsSkinManager;
    ADPhysMSAccessDriverLink: TADPhysMSAccessDriverLink;
    ADGUIxWaitCursor: TADGUIxWaitCursor;
    ADConnection: TADConnection;
    ADQuery: TADQuery;
    ImageTree: TsAlphaImageList;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Alert(Value: string);
    procedure LoadCaptions(TableName: string; Items: TStrings; ExtendField: string = '');
    procedure SetItem(Box: TsComboBox; Value: string);
    function GetCost(DelonixID: integer; FieldID: string): integer;
  end;

type
  TObjTyped = class(TObject)
    FID: integer;
    FCaption: string;
    FInflux: boolean;
    FExtraction: boolean;
end;

type
  TObjDelonix = class(TObject)
    FID: integer;
    FCaption: string;
end;

type
  TObjKkb = class(TObject)
    FID: integer;
    FPower: real;
    FCaption: string;
end;

type
  TDelTyped = record
    ID: integer;
    Caption: string;
    Influx: boolean;
    Extraction: boolean;
end;

type
  TDelKKB = record
    FID: integer;
    Power: real;
    Caption: string;
end;

type
  TDelonix = record
    InID: integer;
    OutID: integer;
    CaptionIn: string;
    CaptionOut: string;
    Typed: TDelTyped;
    SpeedIn: integer;
    SpeedOut: integer;
    Kkb: TDelKkb;
end;

const
  RECOP_ROTOR = $09;
  RECOP_PLAST = $0A;
  RECOP_GLYCL = $0B;

resourcestring
  QUERY_DELONIX = 'select rd.id_delonix, rd.caption, td.coolspeed from ref_delonix rd, '
  	+ 'tag_delspeed td where td.id_deltype=:deltype and td.coolspeed >= :coolspeed and '
		+ 'td.id_delonix=rd.id_delonix order by rd.id_delonix asc';
  QUERY_DELBYIN = 'select coolspeed from tag_delspeed where id_deltype=:deltype and '
    + 'id_delonix=:id_delonix';
  QUERY_VALVE = 'SELECT rv.caption, tv.itemcount, rv.cost FROM REF_VALVE AS rv, TAG_VALVE AS tv '
    + 'WHERE rv.id_valve=tv.id_valve AND tv.id_delonix=:id';
  QUERY_CAMERA = 'SELECT rv.caption, rv.cost FROM REF_CAMERA AS rv, TAG_CAMERA AS tv '
    + 'WHERE rv.id_camera=tv.id_camera AND tv.id_delonix=:id';

var
  DM: TDM;
  Delonix: TDelonix;

implementation

{$R *.dfm}


procedure TDM.Alert(Value: string);
begin
  MessageDlg(Value, mtError, [mbAbort], 0);
end;

procedure TDM.LoadCaptions(TableName: string; Items: TStrings; ExtendField: string = '');
begin
  Items.BeginUpdate;
  Items.Clear;
  with ADQuery do
  try
    if (ExtendField = '') then ExtendField := 'caption';
    SQL.Text := 'select ' + ExtendField + ' from ' + TableName;
    SQL.Add(' where state=true order by orderby');
    Open;
    while not(Eof) do begin
      Items.Add(FieldByName(ExtendField).AsString);
      Next;
    end;
  finally
    Close;
    Items.EndUpdate;    
  end;
end;

procedure TDM.SetItem(Box: TsComboBox; Value: string);
var
  Index: integer;
begin
  for Index := 0 to Box.Items.Count - 1 do
    if (Box.Items[Index] = Value) then begin
      Box.ItemIndex := Index;
      Break;
  end;
end;

function TDM.GetCost(DelonixID: integer; FieldID: string): integer;
begin
  with ADQuery do
  try
    SQL.Text := 'select ' + FieldID + ' from tag_cost where id_delonix=:id';
    ParamByName('id').AsInteger := DelonixID;
    Open;
    Result := FieldByName(FieldID).AsInteger;
  finally
    Close;
  end;
end;

end.
