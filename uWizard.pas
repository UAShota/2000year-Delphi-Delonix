unit uWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, sComboBox, sEdit, sSpinEdit,
  sCheckBox, sGroupBox, sButton, sLabel, sMemo, ComCtrls, sListView,
  sSkinProvider, Mask, sMaskEdit, sCustomComboEdit, sTooledit;

type
  TfmWizard = class(TForm)
    btnDelInfo: TsButton;
    btnClose: TsButton;
    sGroupBox1: TsGroupBox;
    seCoolerIn: TsSpinEdit;
    cbDelType: TsComboBox;
    sSkinProvider1: TsSkinProvider;
    btnRefer: TsButton;
    seCoolerOut: TsSpinEdit;
    cbDelonixIn: TsComboBox;
    cbDelonixOut: TsComboBox;
    Shape1: TShape;
    feBlank: TsFilenameEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure cbDelTypeChange(Sender: TObject);
    procedure btnDelInfoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnReferClick(Sender: TObject);
    procedure cbDelonixOutClick(Sender: TObject);
    procedure cbDelonixInClick(Sender: TObject);
    procedure btnReferKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure feBlankChange(Sender: TObject);
  private
    function GetItem(aName: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWizard: TfmWizard;
  ITEM_BLANK: string;

implementation

{$R *.dfm}

uses
  uData, uDataConfig, uDataInfo, uTagCost;

const
  S_DELONIXNOTFOUND = 'Не используется';
  S_DELONIXNOTSELECT = 'Не выбран тип установки';
  FORM_TAG_IN  = $01;
  FORM_TAG_OUT = $02;

function TfmWizard.GetItem(aName: string): string;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select fieldvalue from ref_options where fieldname=:name';
    ParamByName('name').AsString := aName;
    Open;
    Result := FieldByName('fieldvalue').AsString;
  finally
    Close;
  end;  
end;

procedure TfmWizard.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmWizard.FormCreate(Sender: TObject);
var
  ObjTyped: TObjTyped;
	ObjDel: TObjDelonix;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select * from ref_deltype where state=true order by orderby';
    Open;
    while not(Eof) do begin
      ObjTyped := TObjTyped.Create;
      with ObjTyped do begin
      	FID := FieldByName('ID_DELTYPE').AsInteger;
      	FCaption := FieldByName('CAPTION').AsString;
	      FInflux := FieldByName('INFILUX').AsBoolean;
  	    FExtraction := FieldByName('EXTRACTION').AsBoolean;
        cbDelType.Items.AddObject(FCaption, ObjTyped);
      end;
      Next;
    end;
  finally
    Close;
  end;

  with DM.ADQuery do
  try
    SQL.Text := 'select id_delonix, caption from ref_delonix where state=true order by orderby';
    Open;
    while not(Eof) do begin
      ObjDel := TObjDelonix.Create;
      with ObjDel do begin
      	FID := FieldByName('ID_DELONIX').AsInteger;
      	FCaption := FieldByName('CAPTION').AsString;
        cbDelonixIn.Items.AddObject(FCaption, ObjDel);
        cbDelonixOut.Items.AddObject(FCaption, ObjDel);
      end;  
      Next;
    end;
  finally
    Close;
  end;

  feBlank.Text := GetItem('BLANK');
end;

procedure TfmWizard.cbDelTypeChange(Sender: TObject);
begin
  if (cbDelType.ItemIndex = -1) then begin
    DM.Alert(S_DELONIXNOTSELECT);
    Exit;
  end;

  with Delonix.Typed do begin
    with TObjTyped(cbDelType.Items.Objects[cbDelType.ItemIndex]) do
    begin
      ID := FID;
      Caption := FCaption;
	    Influx := FInflux;
 	    Extraction := FExtraction;
    end;
  end;

  if (Delonix.Typed.Influx) then
  with DM.ADQuery do
  try
    SQL.Text := QUERY_DELONIX;
    ParamByName('deltype').AsInteger := Delonix.Typed.ID;
    ParamByName('coolspeed').AsInteger := seCoolerIn.Value;
    Open;
    Delonix.InID := FieldByName('id_delonix').AsInteger;
    Delonix.SpeedIn := seCoolerIn.Value;
    Delonix.CaptionIn := FieldByName('caption').AsString;
    DM.SetItem(cbDelonixIn, FieldByName('caption').AsString);
  finally
    Close;
  end;

  if (Delonix.Typed.Extraction) then
  with DM.ADQuery do
  try
    SQL.Text := QUERY_DELONIX;
    ParamByName('deltype').AsInteger := Delonix.Typed.ID;
    ParamByName('coolspeed').AsInteger := seCoolerOut.Value;
    Open;
    Delonix.OutID := FieldByName('id_delonix').AsInteger;
    Delonix.SpeedOut := seCoolerOut.Value;
    Delonix.CaptionOut := FieldByName('caption').AsString;
    DM.SetItem(cbDelonixOut, FieldByName('caption').AsString);
  finally
    Close;
  end;

  if ((Delonix.InID = 0) and (Delonix.Typed.Influx)) or
     ((Delonix.OutID = 0) and (Delonix.Typed.Extraction))
  then begin
    btnDelInfo.Enabled := False;
  end else begin
    btnDelInfo.Enabled := True;
  end;

  cbDelonixIn.Enabled := Delonix.Typed.Influx;
  cbDelonixOut.Enabled := Delonix.Typed.Extraction;
  seCoolerIn.Enabled := Delonix.Typed.Influx;
  seCoolerOut.Enabled := Delonix.Typed.Extraction;
end;

procedure TfmWizard.cbDelonixInClick(Sender: TObject);
var
  ObjDel: TObjDelonix;
begin
  ObjDel := TObjDelonix(cbDelonixIn.Items.Objects[cbDelonixIn.ItemIndex]);

  with DM.ADQuery do
  try
    SQL.Text := QUERY_DELBYIN;
    ParamByName('deltype').AsInteger := Delonix.Typed.ID;
    ParamByName('id_delonix').AsInteger := ObjDel.FID;
    Open;
    Delonix.InID := ObjDel.FID;
    Delonix.CaptionIn := cbDelonixIn.Items[cbDelonixIn.ItemIndex];

    if not(Delonix.Typed.ID in [RECOP_PLAST, RECOP_ROTOR]) then begin
      seCoolerIn.Value := Delonix.SpeedIn;
      Delonix.SpeedIn := FieldByName('coolspeed').AsInteger;
    end;
  finally
    Close;
  end;
end;

procedure TfmWizard.cbDelonixOutClick(Sender: TObject);
var
  ObjDel: TObjDelonix;
begin
  ObjDel := TObjDelonix(cbDelonixOut.Items.Objects[cbDelonixOut.ItemIndex]);

  with DM.ADQuery do
  try
    SQL.Text := QUERY_DELBYIN;
    ParamByName('deltype').AsInteger := Delonix.Typed.ID;
    ParamByName('id_delonix').AsInteger := ObjDel.FID;
    Open;
    Delonix.OutID := ObjDel.FID;
    Delonix.CaptionOut := cbDelonixOut.Items[cbDelonixOut.ItemIndex];

    if not(Delonix.Typed.ID in [RECOP_PLAST, RECOP_ROTOR]) then begin
      seCoolerOut.Value := Delonix.SpeedOut;
      Delonix.SpeedOut := FieldByName('coolspeed').AsInteger;
    end;  
  finally
    Close;
  end;
end;

procedure TfmWizard.btnDelInfoClick(Sender: TObject);
begin
  ITEM_BLANK := feBlank.Text;

  fmDataInfo := TfmDataInfo.Create(Self);
  with fmDataInfo do begin
    paInput.Visible := Delonix.Typed.Influx;
    paOutput.Visible := Delonix.Typed.Extraction;
    Caption := 'Delonix Constructor :: ' + cbDelType.Text;
    Show();
  end;
  Hide();
end;

procedure TfmWizard.btnReferClick(Sender: TObject);
begin
  with TfmConfig.Create(Self) do Show();
  Hide();
end;

procedure TfmWizard.btnReferKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then Close;
end;

procedure TfmWizard.feBlankChange(Sender: TObject);
begin
  with DM.ADQuery do
  try
    SQL.Text := 'update ref_options set fieldvalue=:value where fieldname=' + QuotedStr('BLANK');
    ParamByName('value').AsString := feBlank.Text;
    Execute;
  finally
    Close;
  end;
end;

end.
