unit uDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sSkinProvider, ComCtrls, sListView, ComObj,
  OleServer, sEdit, sSpinEdit;

type
  TfmDataReport = class(TForm)
    lvReport: TsListView;
    sSkinProvider1: TsSkinProvider;
    sButton1: TsButton;
    btnExport: TsButton;
    btnDouble: TsButton;
    edBlankNum: TsSpinEdit;
    procedure sButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportClick(Sender: TObject);
    procedure btnExportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDoubleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDataReport: TfmDataReport;

var
  EX: OleVariant;
  FlagFirst: boolean = True;
  DATA_OFFSET: integer = 12;
  DATA_NUMBER: integer = 0;

implementation

{$R *.dfm}

uses
  uData, uDataDouble, uDataInfo;

const
  DATA_TEXT = ' (СРОК ДЕЙСТВИЯ ПРЕДЛОЖЕНИЯ 1 МЕСЯЦ!)';
  DATA_SUMDRIVE = 'Итого за установку: ';
  DATA_SUMAUTO = 'Итого за автоматику: ';
  DATA_SUMMALL = 'ИТОГО: ';

const
  xlGeneral = 1;
  xlCenter = -4108;
  xlEdgeBottom = 9;
  xlEdgeRight = 10;
  xlEdgeLeft = 7;
  xlEdgeTop = 8;
  xlContinuous = 1;
  xlMedium = -4138;

function TemplatePath(): string;
begin
  Result := ExtractFilePath(ParamStr(0)) + 'data\template.xls';
end;

function RTC(ARow, ACol: Integer): string;
begin
  if (ACol > 26) then
    Result := 'A' + Chr(ACol - 26 + 64) + IntToStr(ARow)
  else
    Result := Chr(64 + ACol) + IntToStr(ARow);
end;

function GetUserName: string;
var
  Buffer: array[0..255] of Char;
  szBuffer: Cardinal;
begin
  szBuffer := SizeOf(Buffer);
  
  if Windows.GetUserName(Buffer, szBuffer) then
    SetString(Result, Buffer, szBuffer)
  else
    Result := 'Незвестно';

  Result := Trim(Result);
end;

function GetUserData(): string;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select data from ref_users where login like :login';
    ParamByName('login').AsString := GetUserName;
    Open;
    Result := FieldByName('data').AsString;
  finally
    Close;
  end;
end;

procedure TfmDataReport.sButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfmDataReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfmDataReport.btnExportClick(Sender: TObject);
var
  WS, RA: Variant;
  Index, Lines: integer;
  Value: string;
  FlagError: boolean;
  FlagTitle, Merge, FlagNeed: integer;
  iCost, sumCost: integer;
begin
  // Позиции вывода приток / вытяжка
  DATA_NUMBER := edBlankNum.Value;
  FlagNeed := 1;
  FlagError := False;
  if (Delonix.Typed.Influx) then Inc(FlagNeed);
  if (Delonix.Typed.Extraction) then Inc(FlagNeed);

  try
    EX.Visible := True;
    if (EX.Workbooks.Count = 0) then begin
      DATA_OFFSET := 12;
      FlagFirst := True;
      EX.Quit;
      FreeAndNil(EX);
      
	    EX := CreateOLEObject('Excel.Application');
    end;
  except
    EX := CreateOLEObject('Excel.Application');
  end;

  try
    try
      if (FlagFirst) then
        EX.WorkBooks.Open(TemplatePath);
    except
      MessageDlg('Не найден шаблон ' + TemplatePath, mtError, [mbAbort], 0);
      FlagError := True;
      Exit;
    end;
    WS := EX.ActiveWorkBook.WorkSheets[1];

    if (FlagFirst) then begin
      // Данные юзверя
      WS.Range['B8'] := GetUserData;
      WS.Range['B9'] := DateToStr(Now) + DATA_TEXT;
    end;

    Lines := lvReport.Items.Count - 1;
    FlagTitle := 0;
	  sumCost := 0;
    Merge := 0;

		// Название установки жирным
    RA := WS.Range[RTC(DATA_OFFSET, 1), RTC(DATA_OFFSET, 5)];
    RA.Font.Bold := True;
    RA.Borders[xlEdgeTop].LineStyle := xlContinuous;

    // Номер заказа
    WS.Cells[DATA_OFFSET, 1] := 'Бланк заказа '#10 + IntToStr(DATA_NUMBER);

    for Index := 0 to Lines do begin
      Value := lvReport.Items[Index].Caption;
      WS.Cells[Index + DATA_OFFSET, 2] := Value;

      // Если заголовок
      if (Value[1] = '-') then begin
        RA := WS.Range[RTC(Index + DATA_OFFSET, 2), RTC(Index + DATA_OFFSET, 5)];
        RA.Font.Bold := True;
        Inc(FlagTitle);
      end;

      if (FlagTitle < FlagNeed) then Inc(Merge);

      if (FlagTitle = FlagNeed) and (lvReport.Items[Index].SubItems.Count > 0) then begin
        WS.Cells[Index + DATA_OFFSET, 3] := lvReport.Items[Index].SubItems[0];
        WS.Cells[Index + DATA_OFFSET, 4] := lvReport.Items[Index].SubItems[1];
        WS.Cells[Index + DATA_OFFSET, 5] := '=RC[-2]*RC[-1]';

        RA := WS.Range[RTC(Index + DATA_OFFSET, 2), RTC(Index + DATA_OFFSET, 5)];
        RA.Borders[xlEdgeTop].LineStyle := xlContinuous;
        RA.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      end else begin
        if (lvReport.Items[Index].SubItems.Count > 0) and
           TryStrToInt(lvReport.Items[Index].SubItems[0], iCost) then Inc(SumCost, iCost);
      end;
    end;

    // Объединение -1
    Dec(Merge);

    // Первая колонка
    RA := WS.Range[RTC(DATA_OFFSET, 1), RTC(DATA_OFFSET + Lines, 1)];
    RA.MergeCells := True;
    RA.VerticalAlignment := xlCenter;
    RA.HorizontalAlignment := xlCenter;

    // Третья колонка
    RA := WS.Range[RTC(DATA_OFFSET, 3), RTC(DATA_OFFSET + Merge, 3)];
    RA.MergeCells := True;
    RA.VerticalAlignment := xlCenter;
    RA.HorizontalAlignment := xlCenter;
    RA.Value := SumCost;

    // Четвертая колонка
    RA := WS.Range[RTC(DATA_OFFSET, 4), RTC(DATA_OFFSET + Merge, 4)];
    RA.MergeCells := True;
    RA.VerticalAlignment := xlCenter;
    RA.HorizontalAlignment := xlCenter;
    RA.Value := 1;

    // Пятая колонка
    RA := WS.Range[RTC(DATA_OFFSET, 5), RTC(DATA_OFFSET + Merge, 5)];
    RA.MergeCells := True;
    RA.VerticalAlignment := xlCenter;
    RA.HorizontalAlignment := xlCenter;
    RA.Value := '=RC[-2]*RC[-1]';

    // Остальные колонки рамки
    for Index := 1 to 5 do begin
      RA := WS.Range[RTC(DATA_OFFSET, Index), RTC(DATA_OFFSET + Lines, Index)];
      RA.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      RA.Borders[xlEdgeRight].LineStyle := xlContinuous;
    end;

    // Итого установка
    RA := WS.Range[RTC(DATA_OFFSET + Lines + 1, 3), RTC(DATA_OFFSET + Lines + 1, 4)];
    RA.MergeCells := True;
    RA.Value := DATA_SUMDRIVE;
    RA.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    RA.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    RA.Borders[xlEdgeRight].LineStyle := xlContinuous;
    RA.Font.Bold := True;
    // Установка сумма
    RA := WS.Cells[DATA_OFFSET + Lines + 1, 5];
    RA.Formula := '=SUM(' + RTC(DATA_OFFSET, 5) + ':'  +
      RTC(DATA_OFFSET + Merge, 5) + ')';
    RA := WS.Range[RTC(DATA_OFFSET + Lines + 1, 5)];
    RA.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    RA.Borders[xlEdgeRight].LineStyle := xlContinuous;
    RA.Font.Bold := True;

    // Итого автоматика
    RA := WS.Range[RTC(DATA_OFFSET + Lines + 2, 3), RTC(DATA_OFFSET + Lines + 2, 4)];
    RA.MergeCells := True;
    RA.Value := DATA_SUMAUTO;
    RA.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    RA.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    RA.Borders[xlEdgeRight].LineStyle := xlContinuous;
    RA.Font.Bold := True;
    // Установка сумма
    RA := WS.Cells[DATA_OFFSET + Lines + 2, 5];
    RA.Formula := '=SUM(' + RTC(DATA_OFFSET + Merge + 2, 5) + ':'  +
      RTC(DATA_OFFSET + Lines, 5) + ')';
    RA := WS.Range[RTC(DATA_OFFSET + Lines + 2, 5)];
    RA.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    RA.Borders[xlEdgeRight].LineStyle := xlContinuous;
    RA.Font.Bold := True;

    // ИТОГО
    RA := WS.Range[RTC(DATA_OFFSET + Lines + 3, 3), RTC(DATA_OFFSET + Lines + 3, 4)];
    RA.MergeCells := True;
    RA.Value := DATA_SUMMALL;
    RA.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    RA.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    RA.Borders[xlEdgeRight].LineStyle := xlContinuous;
    RA.Font.Bold := True;
    // Установка сумма
    RA := WS.Cells[DATA_OFFSET + Lines + 3, 5];
    RA.Formula := '=SUM(' + RTC(DATA_OFFSET, 5) + ':'  + RTC(DATA_OFFSET + Lines, 5) + ')';
    RA := WS.Range[RTC(DATA_OFFSET + Lines + 3, 5)];
    RA.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    RA.Borders[xlEdgeRight].LineStyle := xlContinuous;
    RA.Font.Bold := True;

    Inc(DATA_OFFSET, Lines + 4);
    edBlankNum.Value := DATA_NUMBER + 1; 
  finally
    if not FlagError then EX.Visible := True;
	  FlagFirst := False;
  end;
end;

procedure TfmDataReport.btnExportKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then Close;
end;

procedure TfmDataReport.btnDoubleClick(Sender: TObject);
begin
  with TfmDataDouble.Create(Self) do begin
    inM3.Text := fmDataInfo.GridCoolerPrimary.Cell[COL_CALM3, 0].AsString;
    inPA.Text := fmDataInfo.GridCoolerPrimary.Cell[COL_CALPA, 0].AsString;

    outM3.Text := fmDataInfo.GridCoolerPrimaryOut.Cell[COL_CALM3, 0].AsString;
    outPA.Text := fmDataInfo.GridCoolerPrimaryOut.Cell[COL_CALPA, 0].AsString;
    ShowModal;
  end;
end;

procedure TfmDataReport.FormCreate(Sender: TObject);
begin
  edBlankNum.Value := DATA_NUMBER;
end;

end.
