unit uDataInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sSkinProvider, StdCtrls, sMemo, sEdit, sSpinEdit,
  sPanel, sButton, sLabel, sCheckBox, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, sGroupBox,
  sRadioButton, sComboBox, ComCtrls, sListView, Menus;

type
  TfmDataInfo = class(TForm)
    paInput: TsPanel;
    sPanel2: TsPanel;
    sGroupBox1: TsGroupBox;
    sLabel2: TsLabel;
    GridHeater: TNextGrid;
    NxHeatNameIn: TNxListColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxHeatTypeIn: TNxListColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxTextColumn1: TNxNumberColumn;
    btnAddHeater: TsButton;
    btnDelHeater: TsButton;
    gbPowerBox: TsPanel;
    sLabel1: TsLabel;
    sePower48: TsSpinEdit;
    sePower32: TsSpinEdit;
    sePower16: TsSpinEdit;
    sGroupBox6: TsGroupBox;
    GridFilterIn: TNextGrid;
    NxListFilterIn: TNxListColumn;
    NxNumberColumn17: TNxNumberColumn;
    btnFilterInAdd: TsButton;
    btnFilterInDel: TsButton;
    sGroupBox5: TsGroupBox;
    seMoiseIn: TsSpinEdit;
    seMoiseOut: TsSpinEdit;
    seMoisePc: TsSpinEdit;
    cbMoise: TsCheckBox;
    sGroupBox4: TsGroupBox;
    GridCoolerPrimary: TNextGrid;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxTextColumn3: TNxTextColumn;
    NxListColumn3: TNxListColumn;
    NxNumberColumn11: TNxNumberColumn;
    NxNumberColumn12: TNxNumberColumn;
    NxCoolPrimIn: TNxListColumn;
    paPowerInIn: TsPanel;
    boxStarIn: TsRadioButton;
    boxFreqIn: TsRadioButton;
    sGroupBox3: TsGroupBox;
    GridCoolerIn: TNextGrid;
    NxCoolNameIn: TNxListColumn;
    NxNumberColumn13: TNxNumberColumn;
    NxNumberColumn16: TNxNumberColumn;
    NxCoolTypeIn: TNxListColumn;
    NxNumberColumn23: TNxNumberColumn;
    NxNumberColumn26: TNxNumberColumn;
    NxNumberColumn27: TNxNumberColumn;
    NxNumberColumn28: TNxNumberColumn;
    btnCoolerInAdd: TsButton;
    btnCoolerInDel: TsButton;
    rgValveIn: TsRadioGroup;
    cbCamIn: TsCheckBox;
    paOutput: TsPanel;
    sSkinProvider1: TsSkinProvider;
    sGroupBox2: TsGroupBox;
    GridCoolerOut: TNextGrid;
    NxCoolNameOut: TNxListColumn;
    NxNumberColumn6: TNxNumberColumn;
    NxNumberColumn7: TNxNumberColumn;
    NxCoolTypeOut: TNxListColumn;
    NxNumberColumn8: TNxNumberColumn;
    NxNumberColumn9: TNxNumberColumn;
    NxNumberColumn10: TNxNumberColumn;
    NxTextColumn2: TNxNumberColumn;
    btnCoolerOutAdd: TsButton;
    btnCoolerOutDel: TsButton;
    sGroupBox7: TsGroupBox;
    GridFilterOut: TNextGrid;
    NxListFilterOut: TNxListColumn;
    NxNumberColumn20: TNxNumberColumn;
    btnFilterOutAdd: TsButton;
    btnFilterOutDel: TsButton;
    sGroupBox16: TsGroupBox;
    GridCoolerPrimaryOut: TNextGrid;
    NxCheckBoxColumn4: TNxCheckBoxColumn;
    NxTextColumn6: TNxTextColumn;
    NxListColumn2: TNxListColumn;
    NxNumberColumn24: TNxNumberColumn;
    NxNumberColumn25: TNxNumberColumn;
    NxCoolPrimOut: TNxListColumn;
    paPowerOutOut: TsPanel;
    boxStarOut: TsRadioButton;
    boxFreqOut: TsRadioButton;
    boxPixelBtn: TsCheckBox;
    rgValveOut: TsRadioGroup;
    cbCamOut: TsCheckBox;
    sPanel1: TsPanel;
    sGroupBox10: TsGroupBox;
    GridSectionInsOut: TNextGrid;
    NxListInsOut: TNxListColumn;
    NxNumberColumn29: TNxNumberColumn;
    btnSectionInsAddOut: TsButton;
    btnSectionInsDelOut: TsButton;
    sGroupBox13: TsGroupBox;
    GridSectionInsIn: TNextGrid;
    NxListIns: TNxListColumn;
    NxNumberColumn18: TNxNumberColumn;
    btnSectionInsAdd: TsButton;
    btnSectionInsDel: TsButton;
    sGroupBox8: TsGroupBox;
    cbKkb: TsComboBox;
    cbKkbUse: TsCheckBox;
    rbPowerIn: TsRadioButton;
    rbPowerOut: TsRadioButton;
    sGroupBox11: TsGroupBox;
    cbNoizeInInput: TsCheckBox;
    cbNoizeInOutput: TsCheckBox;
    edNoizeInInput: TsSpinEdit;
    edNoizeInOutput: TsSpinEdit;
    sGroupBox12: TsGroupBox;
    cbNoizeOutInput: TsCheckBox;
    cbNoizeOutOutput: TsCheckBox;
    edNoizeOutInput: TsSpinEdit;
    edNoizeOutOutput: TsSpinEdit;
    MainMenu1: TMainMenu;
    btnBack: TMenuItem;
    btnCalc: TMenuItem;
    procedure btnAddHeaterClick(Sender: TObject);
    procedure btnDelHeaterClick(Sender: TObject);
    procedure btnChillerAddClick(Sender: TObject);
    procedure btnChillerDelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFilterInAddClick(Sender: TObject);
    procedure btnFilterInDelClick(Sender: TObject);
    procedure btnSectionInsAddClick(Sender: TObject);
    procedure btnSectionInsDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCoolerOutAddClick(Sender: TObject);
    procedure btnCoolerOutDelClick(Sender: TObject);
    procedure GridHeaterChange(Sender: TObject; ACol, ARow: Integer);
    procedure btnFilterOutAddClick(Sender: TObject);
    procedure btnFilterOutDelClick(Sender: TObject);
    procedure GridCoolerPrimaryChange(Sender: TObject; ACol,
      ARow: Integer);
    procedure GridCoolerPrimaryOutChange(Sender: TObject; ACol, ARow: Integer);
    procedure btnCoolerInAddClick(Sender: TObject);
    procedure btnCoolerInDelClick(Sender: TObject);
    procedure btnSectionInsAddOutClick(Sender: TObject);
    procedure btnSectionInsDelOutClick(Sender: TObject);
    procedure cbKkbChange(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure ParseInbound;
    procedure ParseSensor;
    procedure ParseOutbound;
    procedure ReportItem(Name: string); overload;
    procedure ReportItem(Name: string; Count: integer; Price: integer); overload;
    function ReportCost(DelonixID, DriveID: integer;
      Primary: boolean): integer;
    function ReportCostSection(DelonixID, SectionID: integer): integer;
    function ReportCostFilter(DelonixID, FilterID: integer): integer;
    function ReportStar(Power: real): integer;
    function ReportFreq(Power: real): integer;
    function ReportBlock(ID: integer): integer;
    function ReportCooler(Power: Real): integer;
    function ReportKKB(ID: integer): integer;
    function GetCoolerFormat(Base: boolean; TypeIndex: integer): string;
    function GetItem(ItemID: integer): string;
  public
    { Public declarations }
  end;

var
  fmDataInfo: TfmDataInfo;

const
  COL_TYPE  = $00;
  COL_SECND = $01;
  COL_TINB  = $01;
  COL_TOUTB = $02;
  COL_SYBTP = $03;
  COL_TINE  = $05;
  COL_TOUTE = $06;
  COL_CALM3 = $03;
  COL_CALPA = $04;
  COL_CALWT = $05;
  COL_APPWT = $07;
  COL_APPPC = $04;
  COL_DRIVE = $02;

implementation

{$R *.dfm}

uses
  uData, uWizard, uDataReport;

const
  ROW_PRIM = $00;
  ROW_SECN = $01;

const
  BLOCK_PIXEL   = 1;
  BLOCK_PIXEL55 = 2;
  BLOCK_KANAL   = 3;
  BLOCK_OUTBACK = 4;
  BLOCK_WATER   = 5;
  BLOCK_THERM   = 6;
  BLOCK_FILTER  = 7;
  BLOCK_COOLER  = 8;
  BLOCK_MOISE   = 9;
  BLOCK_SPTD3F  = $0A;
  BLOCK_ROTOR   = $0B;

const
  SENSOR_KANAL 		  = 1;
  SENSOR_BACKWATER  = 2;
  SENSOR_OUTBACK    = 3;
  SENSOR_THERMAL    = 4;
  SENSOR_RELEFILTER = 5;
  SENSOR_RELECOOLER = 6;
	SENSOR_MOISEDATA  = 7;
  SENSOR_POWER      = 8;
  SENSOR_VALVE      = 9;
  SENSOR_VALVEEX    = 10;
  SENSOR_INSERT     = 11;
  SENSOR_HEATERTEMP = 12;
  SENSOR_HEATERTYPE = 13;
  SENSOR_DRIVE      = 14;
  SENSOR_PIXEL      = 15;
  SENSOR_FREQ       = 16;
  SENSOR_PIXELFIVE  = 17;
  SENSOR_PIXELSTD3F = 18;
	SENSOR_ROTOREX    = 19;
  SENSOR_STAR       = 20;
  SENSOR_MOISE      = 21;
  SENSOR_SECMIX     = 22;
  SENSOR_SECINS     = 23;
  SENSOR_NOIZE      = 24;
  SENSOR_INPUT 		  = '-Приток ';
  SENSOR_OUTPUT 		= '-Вытяжка ';
  SENSOR_AUTOMAT    = '-Автоматика ';

const  
  FIELD_INSERT			= 'FIELD_INSERT';
  FIELD_VALVE	 			= 'FIELD_VALVE';
  FIELD_VALVEEX			= 'FIELD_VALVEEX';
  FIELD_SECMIX	 		= 'FIELD_SECMIX';
  FIELD_HEATWATER		= 'FIELD_HEATWATER';
  FIELD_HEATELECTRO	= 'FIELD_HEATELECTRO';
  FIELD_COOLWATER		= 'FIELD_COOLWATER';
  FIELD_COOLFREON		= 'FIELD_COOLFREON';
  FIELD_HUMI				= 'FIELD_HUMI';
  FIELD_NOIZEMIN		= 'FIELD_NOIZEMIN';
  FIELD_NOIZEMAX		= 'FIELD_NOIZEMAX';
  FIELD_RECROTOR		= 'FIELD_RECROTOR';
  FIELD_RECPLAST		= 'FIELD_RECPLAST';
  FIELD_RECGLICK		= 'FIELD_RECGLICK';
  FIELD_DSTD1				= 'FIELD_DSTD1';
  FIELD_DSTD2				= 'FIELD_DSTD2';
  FIELD_DSTD3				= 'FIELD_DSTD3';
  FIELD_DSTD4				= 'FIELD_DSTD4';
  FIELD_DSCN1				= 'FIELD_DSCN1';
  FIELD_DSCN2				= 'FIELD_DSCN2';
  FIELD_DSCN3				= 'FIELD_DSCN3';
  FIELD_DSCN4				= 'FIELD_DSCN4';

const
  // Нагрев
  FORMAT_HEATING_POWER = '%s (tнач=%d С, tкон=%d С, N=%d кВт)';
  FORMAT_HEATING = '%s (tнач=%d С, tкон=%d С)';
  // Охлаждение
  FORMAT_COOLER_POWER = '%s (tнач=%d С, tкон=%d С, N=%d кВт)';
  FORMAT_COOLER = '%s (tнач=%d С, tкон=%d С)';
  // Теплоноситель
  FORMAT_CARRIE = '%s: %s';
  FORMAT_CARRIEPERCENT = '%s: %s %d%%';
  // Вентилятор тип
  FORMAT_DRIVE_A = 'Вентилятор';
	FORMAT_DRIVE_B = 'Резервный вентилятор';
  // Вентилятор двигатель
  FORMAT_DRIVE_BOOM = ' с взрывозащищенным электродвигателем';
	FORMAT_DRIVE_RESERVE = ' с резервным электродвигателем';
	FORMAT_DRIVE_RESERVEBOOM = ' с резервным взрывозащищенным электродвигателем';

var
  FilterCount: integer;
  HeatWater, HeatElectro, CoolWater: integer;
  FormatDef: string;
  
{
  [censored censored censored, censored censored (censored) censored!]
}

procedure TfmDataInfo.ReportItem(Name: string);
begin
  with fmDataReport.lvReport.Items.Add do begin
    Caption := Name;
  end;
end;

procedure TfmDataInfo.ReportItem(Name: string; Count: integer; Price: integer);
begin
  with fmDataReport.lvReport.Items.Add do begin
    Caption := Name;
    SubItems.Add(IntToStr(Price));
    SubItems.Add(IntToStr(Count));
    SubItems.Add(IntToStr(Price * Count));
  end;
end;

function TfmDataInfo.ReportCost(DelonixID, DriveID: integer; Primary: boolean): integer;
begin
  Result := 0;
  if Primary then
  case DriveID of
    0: Result := DM.GetCost(DelonixID, FIELD_DSTD1);
    1: Result := DM.GetCost(DelonixID, FIELD_DSTD2);
    2: Result := DM.GetCost(DelonixID, FIELD_DSTD3);
    3: Result := DM.GetCost(DelonixID, FIELD_DSTD4);
  end
  else
  case DriveID of
    0: Result := DM.GetCost(DelonixID, FIELD_DSCN1);
    1: Result := DM.GetCost(DelonixID, FIELD_DSCN2);
    2: Result := DM.GetCost(DelonixID, FIELD_DSCN3);
    3: Result := DM.GetCost(DelonixID, FIELD_DSCN4);
  end
end;

function TfmDataInfo.ReportCostSection(DelonixID, SectionID: integer): integer;
var
  sName: string;
begin
  sName := 'S' + IntToStr(DelonixID);

  with DM.ADQuery do
  try
    SQL.Text := 'select ' + sName + ' from tag_cost_section where id_section=:id';
    ParamByName('id').AsInteger := SectionID + 1;
    Open;    
    Result := FieldByName(sName).AsInteger;
  finally
    Close;
  end;
end;

function TfmDataInfo.ReportCostFilter(DelonixID, FilterID: integer): integer;
var
  sName: string;
begin
  sName := 'F' + IntToStr(DelonixID);

  with DM.ADQuery do
  try
    SQL.Text := 'select ' + sName + ' from tag_cost_filter where id_filter=:id';
    ParamByName('id').AsInteger := FilterID + 1;
    Open;
    Result := FieldByName(sName).AsInteger;
  finally
    Close;
  end;
end;

function TfmDataInfo.ReportStar(Power: real): integer;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select cost from tag_cost_star where power=:pw';
    ParamByName('pw').AsFloat := Power;
    Open;
    Result := FieldByName('cost').AsInteger;
  finally
    Close;
  end;
end;

function TfmDataInfo.ReportFreq(Power: real): integer;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select cost from tag_cost_freq where power=:pw';
    ParamByName('pw').AsFloat := Power;
    Open;
    Result := FieldByName('cost').AsInteger;
  finally
    Close;
  end;
end;

function TfmDataInfo.ReportBlock(ID: integer): integer;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select cost from tag_cost_block where id_block=:id';
    ParamByName('id').AsFloat := ID;
    Open;
    Result := FieldByName('cost').AsInteger;
  finally
    Close;
  end;
end;

function TfmDataInfo.ReportCooler(Power: Real): integer;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select cost from tag_cost_power where power=:pw';
    ParamByName('pw').AsFloat := Power;
    Open;
    Result := FieldByName('cost').AsInteger;
  finally
    Close;
  end;
end;

function TfmDataInfo.ReportKKB(ID: integer): integer;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select cost from ref_kkb where id_kkb=:id';
    ParamByName('id').AsInteger := ID;
    Open;
    Result := FieldByName('cost').AsInteger;
  finally
    Close;
  end;
end;

function TfmDataInfo.GetCoolerFormat(Base: boolean; TypeIndex: integer): string;
begin
  if Base then Result := FORMAT_DRIVE_A else Result := FORMAT_DRIVE_B;
  case TypeIndex of
    1: Result := Result + FORMAT_DRIVE_BOOM;
    2: Result := Result + FORMAT_DRIVE_RESERVE;
    3: Result := Result + FORMAT_DRIVE_RESERVEBOOM;
  end;
end;

function TfmDataInfo.GetItem(ItemID: integer): string;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select fieldvalue from ref_item where id_item=:id';
    ParamByName('id').AsInteger := ItemID;
    Open;
    Result := FieldByName('fieldvalue').AsString;
  finally
    Close;
  end;
end;

procedure TfmDataInfo.ParseInbound();
var
  Index, Cost: integer;
begin
  Cost := 0;
  case Delonix.Typed.ID of
	  RECOP_ROTOR: ReportItem(SENSOR_INPUT + Delonix.CaptionIn, 1, DM.GetCost(Delonix.InID, FIELD_RECROTOR));
	  RECOP_PLAST: ReportItem(SENSOR_INPUT + Delonix.CaptionIn, 1, DM.GetCost(Delonix.InID, FIELD_RECPLAST));
	  RECOP_GLYCL: ReportItem(SENSOR_INPUT + Delonix.CaptionIn, 1, DM.GetCost(Delonix.InID, FIELD_RECGLICK));
  else
	  ReportItem(SENSOR_INPUT + Delonix.CaptionIn);
  end;

  //------------ВСТАВКА ВЕРХНЯЯ--------------//
  begin
    ReportItem(GetItem(SENSOR_INSERT), 1, DM.GetCost(Delonix.InID, FIELD_INSERT));
  end;

  //------------КЛАПАНЫ--------------//
  if (rgValveIn.ItemIndex > 0) then begin
    case rgValveIn.ItemIndex of
      1: ReportItem(GetItem(SENSOR_VALVE), 1, DM.GetCost(Delonix.InID, FIELD_VALVE));
      2: ReportItem(GetItem(SENSOR_VALVEEX), 1, DM.GetCost(Delonix.InID, FIELD_VALVEEX));
    end;
  end;

  //--------КАМЕРЫ СМЕШЕНИЯ----------//
  if (cbCamIn.Checked) then begin
    ReportItem(GetItem(SENSOR_SECMIX), 1, DM.GetCost(Delonix.InID, FIELD_SECMIX));
  end;  

  //------------ФИЛЬТРЫ---------------//
  for Index := 0 to GridFilterIn.RowCount - 1 do begin
    ReportItem('Фильтр ' + NxListFilterIn.Items[GridFilterIn.Cell[COL_TYPE, Index].AsInteger],
			GridFilterIn.Cell[COL_SECND, Index].AsInteger,
      ReportCostFilter(Delonix.InID, GridFilterIn.Cell[COL_TYPE, Index].AsInteger));
    // увеличиваем количество фильтров для итогового количества датчиков
    Inc(FilterCount, GridFilterIn.Cell[COL_SECND, Index].AsInteger);
  end;

  //------------НАГРЕВАТЕЛИ--------------//
  for Index := 0 to GridHeater.RowCount - 1 do begin
    // Температура входящая / выходящая
    case GridHeater.Cell[COL_TYPE, Index].AsInteger of
      0: begin
        Cost := DM.GetCost(Delonix.InID, FIELD_HEATWATER);
        Inc(HeatWater);
      end;
      1: begin
        Cost := DM.GetCost(Delonix.InID, FIELD_HEATELECTRO);
        Inc(HeatElectro);
      end;
    end;
    // Вывод киловат только если указаны
    if (GridHeater.Cell[COL_APPWT, Index].AsInteger > 0) then
      FormatDef := FORMAT_HEATING_POWER
    else
      FormatDef := FORMAT_HEATING;
    // Вывод температурных характеристик теплоносителя 
    ReportItem(Format(FormatDef, [
		  NxHeatNameIn.Items[GridHeater.Cell[COL_TYPE, Index].AsInteger],
      GridHeater.Cell[COL_TINB, Index].AsInteger,
      GridHeater.Cell[COL_TOUTB, Index].AsInteger,
      GridHeater.Cell[COL_APPWT, Index].AsInteger
    ]), 1, Cost);
    // Если теплоноситель водяной - дополняем
    if (GridHeater.Cell[COL_TYPE, Index].AsInteger = 0) then begin
      // Температура теплоносителя входящая / выходящая
      ReportItem(Format('%s (tнач=%d С, tкон=%d С)', [
  		  GetItem(SENSOR_HEATERTEMP),
        GridHeater.Cell[COL_TINE, Index].AsInteger,
        GridHeater.Cell[COL_TOUTE, Index].AsInteger
      ]));
      // Тип теплоносителя
      if (GridHeater.Cell[COL_APPPC, Index].AsInteger > 0) then
        FormatDef := FORMAT_CARRIEPERCENT
      else
        FormatDef := FORMAT_CARRIE;
      ReportItem(Format(FormatDef, [
	  	  GetItem(SENSOR_HEATERTYPE),
  		  NxHeatTypeIn.Items[GridHeater.Cell[COL_SYBTP, Index].AsInteger],
       	GridHeater.Cell[COL_APPPC, Index].AsInteger
      ]));
    end;  
  end;

  //------------УВЛАЖНИТЕЛЬ---------------//
  if (cbMoise.Checked) then begin
    ReportItem(Format('%s (tнач=%d С, tкон=%d С, ф=%d%%)', [
      GetItem(SENSOR_MOISE),
      seMoiseIn.Value,
      seMoiseOut.Value,
      seMoisePc.Value
    ]), 1, DM.GetCost(Delonix.InID, FIELD_HUMI));
  end;  

  //-----------ОХЛАДИТЕЛИ-------------//
  for Index := 0 to GridCoolerIn.RowCount - 1 do begin
    // Увеличение количества охладителей
    Inc(CoolWater);
    // Температура входящая / выходящая
    case GridCoolerIn.Cell[COL_TYPE, Index].AsInteger of
      0: Cost := DM.GetCost(Delonix.InID, FIELD_COOLWATER);
      1: Cost := DM.GetCost(Delonix.InID, FIELD_COOLFREON);
    end;
    // Формат охлаждения по мощности
    if (GridCoolerIn.Cell[COL_APPWT, Index].AsInteger > 0) then
      FormatDef := FORMAT_COOLER_POWER
		else
      FormatDef := FORMAT_COOLER;
    // Вывод
    ReportItem(Format(FormatDef, [
		  NxCoolNameIn.Items[GridCoolerIn.Cell[COL_TYPE, Index].AsInteger],
      GridCoolerIn.Cell[COL_TINB, Index].AsInteger,
      GridCoolerIn.Cell[COL_TOUTB, Index].AsInteger,
      GridCoolerIn.Cell[COL_APPWT, Index].AsInteger
    ]), 1, Cost);
    // Если теплоноситель водяной - дополняем
    // Температура теплоносителя входящая / выходящая
    if (GridCoolerIn.Cell[COL_TYPE, Index].AsInteger = 0) then begin
      ReportItem(Format('%s (tнач=%d С, tкон=%d С)', [
    		GetItem(SENSOR_HEATERTEMP),
        GridCoolerIn.Cell[COL_TINE, Index].AsInteger,
        GridCoolerIn.Cell[COL_TOUTE, Index].AsInteger
      ]));
    end;  
    // Тип теплоносителя
    if (GridCoolerIn.Cell[COL_APPPC, Index].AsInteger > 0) then
      FormatDef := FORMAT_CARRIEPERCENT
    else
      FormatDef := FORMAT_CARRIE;
    ReportItem(Format(FormatDef, [
    	GetItem(SENSOR_HEATERTYPE),
		  NxCoolTypeIn.Items[GridCoolerIn.Cell[COL_SYBTP, Index].AsInteger],
     	GridCoolerIn.Cell[COL_APPPC, Index].AsInteger
    ]));
  end;

  //-------------ВЕНТИЛЯТОРЫ----------//
  // Основной
  if (GridCoolerPrimary.Cell[COL_TYPE, ROW_PRIM].AsBoolean) then begin
    Cost := ReportCost(Delonix.InID, GridCoolerPrimary.Cell[COL_DRIVE, ROW_PRIM].AsInteger, True);
    FormatDef := GetCoolerFormat(True, GridCoolerPrimary.Cell[COL_DRIVE, ROW_PRIM].AsInteger);
		ReportItem(FormatDef + Format(#10'(L=%d м3/ч, P=%d Па, N=%s кВт)', [
		  GridCoolerPrimary.Cell[COL_CALM3, ROW_PRIM].AsInteger,
		  GridCoolerPrimary.Cell[COL_CALPA, ROW_PRIM].AsInteger,
		  NxCoolPrimIn.Items[GridCoolerPrimary.Cell[COL_CALWT, ROW_PRIM].AsInteger]
    ]), 1, Cost);
  end;
  // Резервный
  if (GridCoolerPrimary.Cell[COL_TYPE, ROW_SECN].AsBoolean) then begin
    Cost := ReportCost(Delonix.InID, GridCoolerPrimary.Cell[COL_DRIVE, ROW_SECN].AsInteger, False);
    FormatDef := GetCoolerFormat(False, GridCoolerPrimary.Cell[COL_DRIVE, ROW_SECN].AsInteger);
		ReportItem(FormatDef + Format(#10'(L=%d м3/ч, P=%d Па, N=%s кВт)', [
		  GridCoolerPrimary.Cell[COL_CALM3, ROW_SECN].AsInteger,
		  GridCoolerPrimary.Cell[COL_CALPA, ROW_SECN].AsInteger,
		  NxCoolPrimIn.Items[GridCoolerPrimary.Cell[COL_CALWT, ROW_SECN].AsInteger]
    ]), 1, Cost);
  end;

  //-----------ПРОМЕЖУТОЧНЫЕ СЕКЦИИ----------------//
  for Index := 0 to GridSectionInsIn.RowCount - 1 do begin
	  ReportItem(Format('%s %s', [
      GetItem(SENSOR_SECINS),
			NxListIns.Items[GridSectionInsIn.Cell[COL_TYPE, Index].AsInteger]]),
    GridSectionInsIn.Cell[COL_SECND, Index].AsInteger,
    ReportCostSection(Delonix.InID, GridSectionInsIn.Cell[COL_TYPE, Index].AsInteger));
  end;  

  //------------ШУМОГЛУШИТЕЛИ--------------//
  // Вход
  if (cbNoizeInInput.Checked) then begin
  	ReportItem(GetItem(SENSOR_NOIZE), edNoizeInInput.Value,
    DM.GetCost(Delonix.InID, FIELD_NOIZEMIN));
  end;
  // Выход
  if (cbNoizeInOutput.Checked) then begin
  	ReportItem(GetItem(SENSOR_NOIZE), edNoizeInOutput.Value,
    DM.GetCost(Delonix.InID, FIELD_NOIZEMAX));
  end;

  //------------ВСТАВКА НИЖНЯЯ--------------//
  begin
    ReportItem(GetItem(SENSOR_INSERT), 1, DM.GetCost(Delonix.InID, FIELD_INSERT));
  end;
end;

procedure TfmDataInfo.ParseOutbound();
var
  Index: integer;
  Cost: integer;
begin
  Cost := 0;
  case Delonix.Typed.ID of
	  RECOP_ROTOR: ReportItem(SENSOR_OUTPUT + Delonix.CaptionOut, 1, DM.GetCost(Delonix.OutID, FIELD_RECROTOR));
	  RECOP_PLAST: ReportItem(SENSOR_OUTPUT + Delonix.CaptionOut, 1, DM.GetCost(Delonix.OutID, FIELD_RECPLAST));
	  RECOP_GLYCL: ReportItem(SENSOR_OUTPUT + Delonix.CaptionOut, 1, DM.GetCost(Delonix.OutID, FIELD_RECGLICK));
  else
	  ReportItem(SENSOR_OUTPUT + Delonix.CaptionOut);
  end;

  //------------ВСТАВКА ВЕРХНЯЯ--------------//
  ReportItem(GetItem(SENSOR_INSERT), 1, DM.GetCost(Delonix.OutID, FIELD_INSERT));

  //------------КЛАПАНЫ---------------//
  if (rgValveOut.ItemIndex > 0) then begin
    case rgValveOut.ItemIndex of
      1: ReportItem(GetItem(SENSOR_VALVE), 1, DM.GetCost(Delonix.OutID, FIELD_VALVE));
      2: ReportItem(GetItem(SENSOR_VALVEEX), 1, DM.GetCost(Delonix.OutID, FIELD_VALVEEX));
    end;
  end;

  //----------КАМЕРА СМЕШЕНИЯ---------//
  if (cbCamOut.Checked) then begin
    ReportItem(GetItem(SENSOR_SECMIX), 1, DM.GetCost(Delonix.OutID, FIELD_SECMIX));
  end;

  //------------ФИЛЬТРЫ---------------//
  for Index := 0 to GridFilterOut.RowCount - 1 do begin
    ReportItem('Фильтр ' + NxListFilterOut.Items[GridFilterOut.Cell[COL_TYPE, Index].AsInteger],
      GridFilterOut.Cell[COL_SECND, Index].AsInteger,
      ReportCostFilter(Delonix.OutID, GridFilterOut.Cell[COL_TYPE, Index].AsInteger));
    Inc(FilterCount, GridFilterOut.Cell[COL_SECND, Index].AsInteger);
  end;

  //-----------ОХЛАДИТЕЛИ-------------//
  for Index := 0 to GridCoolerOut.RowCount - 1 do begin
    // Увеличение количества охладителей
    Inc(CoolWater);  
    // Температура входящая / выходящая
    case GridCoolerOut.Cell[COL_TYPE, Index].AsInteger of
      0: Cost := DM.GetCost(Delonix.OutID, FIELD_COOLWATER);
      1: Cost := DM.GetCost(Delonix.OutID, FIELD_COOLFREON);
    end;
    // Формат охлаждения по мощности
    if (GridCoolerOut.Cell[COL_APPWT, Index].AsInteger > 0) then
      FormatDef := FORMAT_COOLER_POWER
		else
      FormatDef := FORMAT_COOLER;
    // Вывод
    ReportItem(Format(FormatDef, [
		  NxCoolNameOut.Items[GridCoolerOut.Cell[COL_TYPE, Index].AsInteger],
      GridCoolerOut.Cell[COL_TINB, Index].AsInteger,
      GridCoolerOut.Cell[COL_TOUTB, Index].AsInteger,
      GridCoolerOut.Cell[COL_APPWT, Index].AsInteger
    ]), 1, Cost);
    // Если теплоноситель водяной - дополняем
    // Температура теплоносителя входящая / выходящая
    if (GridCoolerOut.Cell[COL_TYPE, Index].AsInteger = 0) then begin
      ReportItem(Format('%s (tнач=%d С, tкон=%d С)', [
    		GetItem(SENSOR_HEATERTEMP),
        GridCoolerOut.Cell[COL_TINE, Index].AsInteger,
        GridCoolerOut.Cell[COL_TOUTE, Index].AsInteger
      ]));
    end;  
    // Тип теплоносителя
    if (GridCoolerOut.Cell[COL_APPPC, Index].AsInteger > 0) then
      FormatDef := FORMAT_CARRIEPERCENT
    else
      FormatDef := FORMAT_CARRIE;
    ReportItem(Format(FormatDef, [
    	GetItem(SENSOR_HEATERTYPE),
		  NxCoolTypeOut.Items[GridCoolerOut.Cell[COL_SYBTP, Index].AsInteger],
     	GridCoolerOut.Cell[COL_APPPC, Index].AsInteger
    ]));
  end;

  //-------------ВЕНТИЛЯТОРЫ----------//
  // Основной
  if (GridCoolerPrimaryOut.Cell[COL_TYPE, ROW_PRIM].AsBoolean) then begin
    Cost := ReportCost(Delonix.OutID, GridCoolerPrimaryOut.Cell[COL_DRIVE, ROW_PRIM].AsInteger, True);
    FormatDef := GetCoolerFormat(True, GridCoolerPrimaryOut.Cell[COL_DRIVE, ROW_PRIM].AsInteger);
		ReportItem(FormatDef + Format(#10'(L=%d м3/ч, P=%d Па, N=%s кВт)', [
		  GridCoolerPrimaryOut.Cell[COL_CALM3, ROW_PRIM].AsInteger,
		  GridCoolerPrimaryOut.Cell[COL_CALPA, ROW_PRIM].AsInteger,
		  NxCoolPrimOut.Items[GridCoolerPrimaryOut.Cell[COL_CALWT, ROW_PRIM].AsInteger]
    ]), 1, Cost);
  end;
  // Резервный
  if (GridCoolerPrimaryOut.Cell[COL_TYPE, ROW_SECN].AsBoolean) then begin
    Cost := ReportCost(Delonix.OutID, GridCoolerPrimaryOut.Cell[COL_DRIVE, ROW_SECN].AsInteger, False);
    FormatDef := GetCoolerFormat(False, GridCoolerPrimaryOut.Cell[COL_DRIVE, ROW_SECN].AsInteger);
		ReportItem(FormatDef + Format(#10'(L=%d м3/ч, P=%d Па, N=%s кВт)', [
		  GridCoolerPrimaryOut.Cell[COL_CALM3, ROW_SECN].AsInteger,
		  GridCoolerPrimaryOut.Cell[COL_CALPA, ROW_SECN].AsInteger,
		  NxCoolPrimOut.Items[GridCoolerPrimaryOut.Cell[COL_CALWT, ROW_SECN].AsInteger]
    ]), 1, Cost);
  end;

  //-----------ПРОМЕЖУТОЧНЫЕ СЕКЦИИ----------------//
  for Index := 0 to GridSectionInsOut.RowCount - 1 do begin
	  ReportItem(Format('%s %s', [
      GetItem(SENSOR_SECINS),
			NxListInsOut.Items[GridSectionInsOut.Cell[COL_TYPE, Index].AsInteger]]),
    GridSectionInsOut.Cell[COL_SECND, Index].AsInteger,
    ReportCostSection(Delonix.OutID, GridSectionInsOut.Cell[COL_TYPE, Index].AsInteger));
  end;

  //------------ШУМОГЛУШИТЕЛИ--------------//
  // Вход
  if (cbNoizeOutInput.Checked) then begin
  	ReportItem(GetItem(SENSOR_NOIZE), edNoizeOutInput.Value,
    DM.GetCost(Delonix.OutID, FIELD_NOIZEMIN));
  end;
  // Выход
  if (cbNoizeOutOutput.Checked) then begin
  	ReportItem(GetItem(SENSOR_NOIZE), edNoizeOutOutput.Value,
    DM.GetCost(Delonix.OutID, FIELD_NOIZEMAX));
  end;

  //------------ВСТАВКА НИЖНЯЯ--------------//
  begin
    ReportItem(GetItem(SENSOR_INSERT), 1, DM.GetCost(Delonix.OutID, FIELD_INSERT));
  end;
end;

procedure TfmDataInfo.ParseSensor();
var
  Index: integer;
  CountReleIn, CountReleOut: integer;
  DriveCount, PowerValue: integer;
  RealPower: real;
  DriveName: string;
  cntBackWater, cntThermal, cntOutBack, cntKanal: integer;
begin
  // Обнуление датчиков
  cntBackWater := 0;
  cntThermal := 0;
  cntOutBack := 0;
  cntKanal := 0;

  //------------ДАТЧИКИ---------------//
  ReportItem(SENSOR_AUTOMAT);

  // Датчик на увлажнитель
  if (Delonix.Typed.Influx) and (cbMoise.Checked) then begin
    ReportItem(GetItem(SENSOR_MOISEDATA), 1, ReportBlock(BLOCK_MOISE));
  end;  

  //-----------НАГРЕВ И ОХЛАЖДЕНИЕ------------//
  // электрический нагреватель или охладитель или охладитель и нагреватель
  if (HeatElectro > 0) then begin
    // мощность силового модуля
    if (sePower16.Value > 0) then begin
      PowerValue := sePower16.Value;
	   	ReportItem(Format('%s (16 кВт)', [GetItem(SENSOR_POWER)]),
        PowerValue, ReportCooler(16));
    end;
    if (sePower32.Value > 0) then begin
      PowerValue := sePower32.Value;
	   	ReportItem(Format('%s (32 кВт)', [GetItem(SENSOR_POWER)]),
        PowerValue, ReportCooler(32));
    end;
    if (sePower48.Value > 0) then begin
      PowerValue := sePower48.Value;
	   	ReportItem(Format('%s (48 кВт)', [GetItem(SENSOR_POWER)]),
        PowerValue, ReportCooler(48));
    end;
  end;

  //----------- ДАТЧИКИ НАГРЕВА / ОХЛАЖДЕИЯ ------------//
  // Датчики нагр_в + нагр_в + охл / нагр_в + нагр_в + нагр_э
  if ((HeatWater = 2) and (CoolWater = 1))
    or ((HeatWater = 2) and (HeatElectro = 1))
  then begin
    cntKanal := 1;
    cntOutBack := 1;
    cntBackWater := 2;
    cntThermal := 2;
  end else
  // Датчики нагр_е + охл / нагр_е + нагр_е + охл / наг_е + охл + охл / охл
  if ((HeatElectro = 1) and (CoolWater = 1))
    or ((HeatElectro = 2) and (CoolWater = 1))
    or ((HeatElectro = 1) and (CoolWater = 2))
  then begin
    cntKanal := 1;
    cntOutBack := 1;
    cntThermal := 1;
  end else
  // Датчики нагр_в + нагр_э + нагр_э / нагр_в + нагр_э / нагр_в + охл / нагр_в + охл + охл / нагр_в
  if ((HeatWater = 1) and (HeatElectro >= 1))
    or ((HeatWater = 1) and (CoolWater >= 1))
    or (HeatWater = 1)
  then begin
    cntKanal := 1;
    cntOutBack := 1;
    cntBackWater := 1;
    cntThermal := 1;
  end else
  // Датчики нагр_е
  if (HeatElectro = 1) then begin
    cntKanal := 1;
    cntOutBack := 1;
  end else
  // Датчики охл
  if (CoolWater > 0) then begin
    cntKanal := 1;
    cntOutBack := 1;
    cntThermal := 1;
  end;  

  // Пластинчатый рекуператор без нагрева или охлаждения он должен быть 1шт.
  // Если уже с нагревом или охлаждением тогда 2шт.
  if (Delonix.Typed.ID = RECOP_PLAST) then begin
    if (cntKanal = 0) then Inc(cntKanal);
    if ((HeatWater > 0) or (HeatElectro > 0) or (CoolWater > 0)) then Inc(cntKanal);
  end;  

  // канальный датчик
  if (cntKanal > 0) then ReportItem(GetItem(SENSOR_KANAL), cntKanal, ReportBlock(BLOCK_KANAL));
  //наружный датчик 1 шт
  if (cntOutBack > 0) then ReportItem(GetItem(SENSOR_OUTBACK), cntOutBack, ReportBlock(BLOCK_OUTBACK));
  //датчик обратной воды 1 шт
  if (cntBackWater > 0) then ReportItem(GetItem(SENSOR_BACKWATER), cntBackWater, ReportBlock(BLOCK_WATER));
  //термостат защиты 1 шт
  if (cntThermal > 0) then ReportItem(GetItem(SENSOR_THERMAL), cntThermal, ReportBlock(BLOCK_THERM));

  //------------ФИЛЬТРЫ---------------//
  // Реле на фильтр
  if (FilterCount > 0) then begin
    ReportItem(GetItem(SENSOR_RELEFILTER), FilterCount, ReportBlock(BLOCK_FILTER));
  end;  

  //----------ВЕНТИЛЯТОРЫ------------//
  // Реле на вентиляторы
  CountReleIn := 0;
  CountReleOut := 0;
  // Приток
  for Index := 0 to GridCoolerPrimary.RowCount - 1 do
    if (GridCoolerPrimary.Cell[COL_TYPE, Index].AsBoolean)
      and (Delonix.Typed.Influx) then Inc(CountReleIn);
  // Вытяжка
  for Index := 0 to GridCoolerPrimaryOut.RowCount - 1 do
    if (GridCoolerPrimaryOut.Cell[COL_TYPE, Index].AsBoolean) 
      and (Delonix.Typed.Extraction)
      // Если есть кнопка
      and not boxPixelBtn.Checked then Inc(CountReleOut);
  // Итого реле
  if (CountReleIn + CountReleOut > 0) then
    ReportItem(GetItem(SENSOR_RELECOOLER),
      CountReleIn + CountReleOut,
      ReportBlock(BLOCK_COOLER));

  //------------ПРИВОДЫ--------------//
  with DM.ADQuery do
  try
    //---------КЛАПАН НА ПРИТОК----------//
    if (Delonix.Typed.Influx) and (rgValveIn.ItemIndex > 0) then begin
      SQL.Text := QUERY_VALVE;
      ParamByName('id').AsInteger := Delonix.InID;
      Open;
  		DriveName := FieldByName('caption').AsString;
      DriveCount := FieldByName('itemcount').AsInteger;
      ReportItem(Format('%s %s', [GetItem(SENSOR_DRIVE), DriveName]),
        DriveCount,
        FieldByName('cost').AsInteger);
    end;

    //---------КЛАПАН НА ВЫТЯЖКУ---------//
    if (Delonix.Typed.Extraction) and (rgValveOut.ItemIndex > 0) then begin
      SQL.Text := QUERY_VALVE;
      ParamByName('id').AsInteger := Delonix.OutID;
      Open;
  		DriveName := FieldByName('caption').AsString;
      DriveCount := FieldByName('itemcount').AsInteger;
      ReportItem(Format('%s %s', [GetItem(SENSOR_DRIVE), DriveName]),
        DriveCount,
        FieldByName('cost').AsInteger);
    end;

    //------------КАМЕРЫ-------------//
    // Один привод на камеру и один если это рекуператор пластинчатый
    if (Delonix.Typed.ID = RECOP_PLAST) then DriveCount := 1 else DriveCount := 0;
    // камера смешения на приток / вытяжку, только одна
    if ((Delonix.Typed.Influx) and (cbCamIn.Checked))
      or ((Delonix.Typed.Extraction) and (cbCamOut.Checked)) then
    begin
      SQL.Text := QUERY_CAMERA;
      if (Delonix.Typed.Influx) then
        ParamByName('id').AsInteger := Delonix.InID
      else
        ParamByName('id').AsInteger := Delonix.OutID;
      Open;
	   	DriveName := FieldByName('caption').AsString;
      ReportItem(Format('%s %s', [GetItem(SENSOR_DRIVE), DriveName]),
        DriveCount + 1,
        FieldByName('cost').AsInteger);
    end;
  finally
    Close;
  end;

  //---------БЛОК УПРАВЛЕНИЯ---------//
  //
  // Добавление датчика на роторный рекуператор
  if (Delonix.Typed.ID = RECOP_ROTOR) then
  begin
    ReportItem(GetItem(SENSOR_ROTOREX), 1, ReportBlock(BLOCK_ROTOR));
  end;
  // Кнопка STD/3ф
  if (Delonix.Typed.Extraction and boxPixelBtn.Checked and boxPixelBtn.Enabled) then
  begin
	  ReportItem(GetItem(SENSOR_PIXELSTD3F), 1, ReportBlock(BLOCK_SPTD3F));
  end;  
  // Определение частотников
  RealPower := 0;
  // Частотники приток
  if (Delonix.Typed.Influx) then begin
    RealPower := StrToFloat(NxCoolPrimIn.Items[GridCoolerPrimary.Cell[COL_CALWT, ROW_PRIM].AsInteger])
  end;
  // Выбор частотника для притока
  if (Delonix.Typed.Influx) and (CountReleIn > 0) then begin
    with DM.ADQuery do
    try
      SQL.Text := 'select realpower from ref_freq where coolspeed=:speed';
      ParamByName('speed').AsFloat := RealPower;
      Open;
      RealPower := FieldByName('realpower').AsFloat;
    finally
      Close;
    end;
    if (boxStarIn.Checked) then begin
      ReportItem(Format('%s %s кВт', [GetItem(SENSOR_STAR), FloatToStr(RealPower)]),
        CountReleIn, ReportStar(RealPower));
    end;
    if (boxFreqIn.Checked) then begin
      ReportItem(Format('%s %s кВт', [GetItem(SENSOR_FREQ), FloatToStr(RealPower)]),
        CountReleIn, ReportFreq(RealPower));
    end;
  end;
  // Частотники вытяжка
  if (Delonix.Typed.Extraction) then begin
    RealPower := StrToFloat(NxCoolPrimOut.Items[GridCoolerPrimaryOut.Cell[COL_CALWT, ROW_PRIM].AsInteger])
  end;
  // Выбор частотника для звезды
  if  (Delonix.Typed.Extraction) and (CountReleOut > 0)then begin
    with DM.ADQuery do
    try
      SQL.Text := 'select realpower from ref_freq where coolspeed=:speed';
      ParamByName('speed').AsFloat := RealPower;
      Open;
      RealPower := FieldByName('realpower').AsFloat;
    finally
      Close;
    end;
    if (boxStarOut.Checked) then begin
      ReportItem(Format('%s %s кВт', [GetItem(SENSOR_STAR), FloatToStr(RealPower)]),
        CountReleOut, ReportStar(RealPower));
    end;
    if (boxFreqOut.Checked) then begin
      ReportItem(Format('%s %s кВт', [GetItem(SENSOR_FREQ), FloatToStr(RealPower)]),
        CountReleOut, ReportFreq(RealPower));
    end;
  end;
  // ККБ
  if (cbKkbUse.Checked) then begin
    // Наименование и цена
    ReportItem(Format('ККБ %s %s кВт', [Delonix.Kkb.Caption, FloatToStr(Delonix.Kkb.Power)]),
      1, ReportKKB(Delonix.KKb.FID));
    // содержимое
    with DM.ADQuery do
    try
      SQL.Text := 'select * from tag_kkb where id_kkb=:id';
      ParamByName('id').AsInteger := Delonix.KKb.FID;
      Open;
      while not(Eof) do begin
        ReportItem(FieldByName('caption').AsString,
          FieldByName('itemcount').AsInteger,
          FieldByName('cost').AsInteger);
        Next;
      end;
    finally
      Close;
    end;
  end;
  // HU-Pixel
  if not boxPixelBtn.Checked then
  begin
    if ((Delonix.Typed.Influx and not rbPowerIn.Checked)
      or (Delonix.Typed.Extraction and not rbPowerOut.Checked))
    then begin
      ReportItem(GetItem(SENSOR_PIXEL), 1, ReportBlock(BLOCK_PIXEL))
    end else begin
      ReportItem(GetItem(SENSOR_PIXELFIVE), 1, ReportBlock(BLOCK_PIXEL55));
    end;
  end;    
end;

procedure TfmDataInfo.FormCreate(Sender: TObject);
var
  ObjKkb: TObjKkb;
begin
  with DM.ADQuery do
  try
    SQL.Text := 'select id_kkb, caption, power from ref_kkb where state=true order by power';
    Open;
    while not(Eof) do begin
      ObjKkb := TObjKkb.Create;
      ObjKkb.FID := FieldByName('id_kkb').AsInteger;
      ObjKkb.FPower := FieldByName('power').AsFloat;
      ObjKkb.FCaption := Format('%f кВт %s', [
        ObjKkb.FPower,
        FieldByName('caption').AsString
      ]);
      cbKkb.Items.AddObject(ObjKkb.FCaption, ObjKkb);
      Next;
    end;
  finally
    Close;
  end;
  
  DM.LoadCaptions('REF_FILTER', NxListFilterIn.Items);
  NxListFilterOut.Items.Assign(NxListFilterIn.Items);

  DM.LoadCaptions('REF_SECTION', NxListIns.Items);
  NxListInsOut.Items.Assign(NxListIns.Items);

  DM.LoadCaptions('REF_FREQ', NxCoolPrimIn.Items, 'COOLSPEED');
  NxCoolPrimOut.Items.Assign(NxCoolPrimIn.Items);

  with GridCoolerPrimary do begin
    AddCells(['True', 'Основной', '0', IntToStr(Delonix.SpeedIn), '500', '0']);
    AddCells(['', 'Дополнительный', '0', '0', '0', '0']);
  end;
  with GridCoolerPrimaryOut do begin
    AddCells(['True', 'Основной', '0', IntToStr(Delonix.SpeedOut), '500', '0']);
    AddCells(['', 'Дополнительный', '0', '0', '0', '0']);
  end;
end;

procedure TfmDataInfo.btnAddHeaterClick(Sender: TObject);
begin
  GridHeater.AddCells(['0', '-28', '18', '0', '0', '95', '70', '0']);
end;

procedure TfmDataInfo.btnDelHeaterClick(Sender: TObject);
begin
  if (GridHeater.SelectedRow >= 0) then
    GridHeater.DeleteRow(GridHeater.SelectedRow);
end;

procedure TfmDataInfo.btnChillerAddClick(Sender: TObject);
begin
  GridHeater.AddRow();
end;

procedure TfmDataInfo.btnChillerDelClick(Sender: TObject);
begin
  if (GridHeater.SelectedRow >= 0) then
    GridHeater.DeleteRow(GridHeater.SelectedRow);
end;

procedure TfmDataInfo.btnCoolerOutAddClick(Sender: TObject);
begin
  GridCoolerOut.AddCells(['0', '28', '18', '0', '0', '7', '12', '0']);
end;

procedure TfmDataInfo.btnCoolerOutDelClick(Sender: TObject);
begin
  if (GridCoolerOut.SelectedRow >= 0) then
    GridCoolerOut.DeleteRow(GridCoolerOut.SelectedRow);
end;

procedure TfmDataInfo.btnCoolerInAddClick(Sender: TObject);
begin
  GridCoolerIn.AddCells(['0', '28', '18', '0', '0', '7', '12', '0']);
end;

procedure TfmDataInfo.btnCoolerInDelClick(Sender: TObject);
begin
  if (GridCoolerIn.SelectedRow >= 0) then
    GridCoolerIn.DeleteRow(GridCoolerIn.SelectedRow);
end;

procedure TfmDataInfo.btnFilterInAddClick(Sender: TObject);
begin
  GridFilterIn.AddCells(['0', '1']);
end;

procedure TfmDataInfo.btnFilterInDelClick(Sender: TObject);
begin
  if (GridFilterIn.SelectedRow >= 0) then
    GridFilterIn.DeleteRow(GridFilterIn.SelectedRow);
end;

procedure TfmDataInfo.btnFilterOutAddClick(Sender: TObject);
begin
  GridFilterOut.AddCells(['0', '1']);
end;

procedure TfmDataInfo.btnFilterOutDelClick(Sender: TObject);
begin
  if (GridFilterOut.SelectedRow >= 0) then
    GridFilterOut.DeleteRow(GridFilterOut.SelectedRow);
end;

procedure TfmDataInfo.btnSectionInsAddClick(Sender: TObject);
begin
  GridSectionInsIn.AddCells(['0', '1']);
end;

procedure TfmDataInfo.btnSectionInsDelClick(Sender: TObject);
begin
  if (GridSectionInsIn.SelectedRow >= 0) then
    GridSectionInsIn.DeleteRow(GridSectionInsIn.SelectedRow);
end;

procedure TfmDataInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmWizard.Show();
  Release;
end;

procedure TfmDataInfo.GridHeaterChange(Sender: TObject; ACol,
  ARow: Integer);
var
  Index: integer;
  FlagElectroHeat: boolean;
begin
  FlagElectroHeat := False;
  for Index := 0 to GridHeater.RowCount - 1 do begin
    if (GridHeater.Cell[COL_TYPE, Index].AsInteger = 1) then
      FlagElectroHeat := True;
  end;
  gbPowerBox.Visible := FlagElectroHeat;
end;

procedure TfmDataInfo.GridCoolerPrimaryChange(Sender: TObject; ACol,
  ARow: Integer);
//var
//  FlagPower: boolean;
begin
//  FlagPower := StrToFloat(NxCoolPrimIn.Items[GridCoolerPrimary.Cell[COL_CALWT, ROW_PRIM].AsInteger]) <= 5.5;
//  if not(FlagPower) then BoxFreqIn.Checked:= True else rbPowerIn.Checked := True;
end;

procedure TfmDataInfo.GridCoolerPrimaryOutChange(Sender: TObject; ACol,
  ARow: Integer);
var
  FlagPower: boolean;
begin
  FlagPower := StrToFloat(NxCoolPrimOut.Items[GridCoolerPrimaryOut.Cell[COL_CALWT, ROW_PRIM].AsInteger]) <= 5.5;
//  if not(FlagPower) then BoxFreqIn.Checked := True else rbPowerIn.Checked := True;
  boxPixelBtn.Enabled := FlagPower;
end;

procedure TfmDataInfo.btnSectionInsAddOutClick(Sender: TObject);
begin
  GridSectionInsOut.AddCells(['0', '1']);  
end;

procedure TfmDataInfo.btnSectionInsDelOutClick(Sender: TObject);
begin
  if (GridSectionInsOut.SelectedRow >= 0) then
    GridSectionInsOut.DeleteRow(GridSectionInsOut.SelectedRow);
end;

procedure TfmDataInfo.cbKkbChange(Sender: TObject);
begin
  with TObjKKb(cbKkb.Items.Objects[cbKkb.ItemIndex]) do begin
    Delonix.Kkb.FID := FID;
    Delonix.Kkb.Power := FPower;
    Delonix.Kkb.Caption := FCaption;
  end;
  cbKkbUse.Checked := True;
end;

procedure TfmDataInfo.btnBackClick(Sender: TObject);
begin
  Close;
end;

procedure TfmDataInfo.btnCalcClick(Sender: TObject);
begin
  FilterCount := 0;
  HeatWater := 0;
  HeatElectro := 0;
  CoolWater := 0;

  fmDataReport := TfmDataReport.Create(Self);
  with fmDataReport do
  try
    ReportItem(Delonix.Typed.Caption + '. В комплекте:');
    if (Delonix.Typed.Influx) then ParseInbound();
    if (Delonix.Typed.Extraction) then ParseOutbound();
    ParseSensor();
  finally
    ShowModal;
  end;
end;

procedure TfmDataInfo.FormResize(Sender: TObject);
begin
  Left := Screen.Width div 2 - Width div 2;
end;

end.
