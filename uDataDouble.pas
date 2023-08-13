unit uDataDouble;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComObj, StdCtrls, sButton, OleServer, ClipBrd, sSkinProvider,
  sEdit, sGroupBox, NxColumns, NxColumnClasses, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls, sPanel, sComboBox;

type
  TfmDataDouble = class(TForm)
    sSkinProvider1: TsSkinProvider;
    Grid: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    sPanel1: TsPanel;
    brnFindM3: TsButton;
    brnFindM3PA: TsButton;
    cbType: TsComboBox;
    paExt: TsPanel;
    inM3: TsEdit;
    inPA: TsEdit;
    paInf: TsPanel;
    outM3: TsEdit;
    outPA: TsEdit;
    NxTextColumn10: TNxTextColumn;
    btnClose: TsButton;
    procedure brnFindM3Click(Sender: TObject);
    procedure cbTypeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDataDouble: TfmDataDouble;

implementation

{$R *.dfm}

uses
  uWizard;

const
  TAG_M3 = $01;
  TAG_PA = $02;

procedure TfmDataDouble.cbTypeChange(Sender: TObject);
begin
  paInf.Visible := (cbType.ItemIndex = 1) or (cbType.ItemIndex = 2);
  paExt.Visible := (cbType.ItemIndex = 0) or (cbType.ItemIndex = 2);
end;

procedure CommaText(Text: string; Items: TStrings);
var
  Value: string;
  iPos: integer;
begin
  Items.Clear;
  Text := StringReplace(Text, #9#9, #9'-'#9, [rfReplaceAll]) + #9;

  iPos := Pos(#9, Text);
  while (iPos > 0) do begin
    Value := Copy(Text, 1, iPos - 1);
    Delete(Text, 1, iPos);
    if (Value <> '') then Items.Add(Value);
    iPos := Pos(#9, Text);
  end;
end;

procedure TfmDataDouble.brnFindM3Click(Sender: TObject);
var
  EX, WS, RA: Variant;
  Index, iItem: integer;
  Clip: TClipBoard;
  DataList, ItemList: TStringList;
  Value, M3, Pa: string;
begin
  EX := CreateOLEObject('Excel.Application');
  Clip := TClipboard.Create;
  DataList := TStringList.Create;
  ItemList := TStringList.Create;
  try
    EX.WorkBooks.Open(ITEM_BLANK);
    WS := EX.ActiveWorkBook.WorkSheets[3];
    Value := Clip.AsText;
    Screen.Cursor := crHourGlass;

    case cbType.ItemIndex of
      0: begin
        M3 := inM3.Text;
        PA := inPA.Text;
      end;
      1: begin
        M3 := outM3.Text;
        PA := outPA.Text;
      end;
      2: begin
        M3 := inM3.Text + '/' + outM3.Text;
        PA := inPA.Text + '/' + outPA.Text;
      end;
    end;

    EX.Selection.AutoFilter(5, M3);
    if (TsButton(Sender).Tag = TAG_PA) then EX.Selection.AutoFilter(6, PA);

    RA := WS.AutoFilter.Range;
    RA.Copy;

    DataList.Text := Clip.AsText;
    ItemList.Delimiter := #9;

    Grid.BeginUpdate;
    try
      Grid.ClearRows;
      Grid.AddRow(DataList.Count);
      for Index := 1 to DataList.Count - 1 do begin
        CommaText(DataList[Index], ItemList);

        for iItem := 0 to ItemList.Count - 1 do
          if (iItem < 10) then
            Grid.Cells[iItem, Index] := ItemList[iItem]
      end;
    finally
      Grid.EndUpdate;
    end;    
  finally
    Screen.Cursor := crDefault;
    Clip.AsText := Value;  
    Clip.Free;
    ItemList.Free;
    DataList.Free;
    EX.DisplayAlerts := False;
    EX.Quit;
  end;
end;

procedure TfmDataDouble.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfmDataDouble.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
