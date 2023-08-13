unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, StdCtrls, sGroupBox, sButton,
  sCheckBox, sComboBox, sEdit, sSpinEdit, sSkinProvider, ExtCtrls,
  sListBox, sCheckListBox, sPanel, sScrollBox;

type
  TfmMain = class(TForm)
    sGroupBox3: TsGroupBox;
    cbDelonix: TsComboBox;
    sSkinProvider1: TsSkinProvider;
    sGroupBox11: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sCheckBox2: TsCheckBox;
    cbNoise: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox1: TsCheckBox;
    sScrollBox1: TsScrollBox;
    sGroupBox10: TsGroupBox;
    sGroupBox9: TsGroupBox;
    GridCoolerSecondary: TNextGrid;
    NxCheckBoxColumn2: TNxCheckBoxColumn;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn14: TNxNumberColumn;
    NxNumberColumn15: TNxNumberColumn;
    NxNumberColumn16: TNxNumberColumn;
    sGroupBox4: TsGroupBox;
    GridCoolerPrimary: TNextGrid;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn11: TNxNumberColumn;
    NxNumberColumn12: TNxNumberColumn;
    NxNumberColumn13: TNxNumberColumn;
    sGroupBox1: TsGroupBox;
    GridHeater: TNextGrid;
    NxListColumn1: TNxListColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxComboBoxColumn1: TNxComboBoxColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    btnAddHeater: TsButton;
    btnDelHeater: TsButton;
    sGroupBox2: TsGroupBox;
    GridChiller: TNextGrid;
    NxListColumn2: TNxListColumn;
    NxNumberColumn6: TNxNumberColumn;
    NxNumberColumn7: TNxNumberColumn;
    NxComboBoxColumn2: TNxComboBoxColumn;
    NxNumberColumn8: TNxNumberColumn;
    NxNumberColumn9: TNxNumberColumn;
    NxNumberColumn10: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    btnChillerAdd: TsButton;
    btnChillerDel: TsButton;
    sPanel1: TsPanel;
    sGroupBox6: TsGroupBox;
    GridFilter: TNextGrid;
    NxListColumn5: TNxListColumn;
    NxNumberColumn17: TNxNumberColumn;
    btnFilterAdd: TsButton;
    btnFilterDel: TsButton;
    sGroupBox5: TsGroupBox;
    sSpinEdit1: TsSpinEdit;
    sSpinEdit2: TsSpinEdit;
    sSpinEdit3: TsSpinEdit;
    sSpinEdit4: TsSpinEdit;
    sRadioGroup2: TsRadioGroup;
    NxListColumn3: TNxListColumn;
    NxListColumn4: TNxListColumn;
    sPanel2: TsPanel;
    sGroupBox13: TsGroupBox;
    NextGrid1: TNextGrid;
    NxComboBoxColumn3: TNxListColumn;
    NxNumberColumn18: TNxNumberColumn;
    sButton1: TsButton;
    sButton2: TsButton;
    sGroupBox14: TsGroupBox;
    NextGrid2: TNextGrid;
    NxListColumn6: TNxListColumn;
    NxNumberColumn19: TNxNumberColumn;
    sButton3: TsButton;
    sButton4: TsButton;
    sRadioGroup1: TsRadioGroup;
    procedure btnAddHeaterClick(Sender: TObject);
    procedure btnDelHeaterClick(Sender: TObject);
    procedure btnChillerAddClick(Sender: TObject);
    procedure btnChillerDelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFilterAddClick(Sender: TObject);
    procedure btnFilterDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

uses
  uData;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  with GridCoolerPrimary do begin
    AddCells(['', 'Основн.', '0', '0', '0', '0']);
    AddCells(['', 'Дополн.', '0', '0', '0', '0']);
  end;
  with GridCoolerSecondary do begin
    AddCells(['', 'Основн.', '0', '0', '0', '0']);
    AddCells(['', 'Дополн.', '0', '0', '0', '0']);
  end;
end;

procedure TfmMain.btnAddHeaterClick(Sender: TObject);
begin
  GridHeater.AddRow();
end;

procedure TfmMain.btnDelHeaterClick(Sender: TObject);
begin
  if (GridHeater.SelectedRow > 0) then
    GridHeater.DeleteRow(GridHeater.SelectedRow);
end;

procedure TfmMain.btnChillerAddClick(Sender: TObject);
begin
  GridChiller.AddRow();
end;

procedure TfmMain.btnChillerDelClick(Sender: TObject);
begin
  if (GridChiller.SelectedRow > 0) then
    GridChiller.DeleteRow(GridChiller.SelectedRow);
end;

procedure TfmMain.btnFilterAddClick(Sender: TObject);
begin
  GridFilter.AddRow();
end;

procedure TfmMain.btnFilterDelClick(Sender: TObject);
begin
  if (GridFilter.SelectedRow > 0) then
    GridFilter.DeleteRow(GridFilter.SelectedRow);
end;

end.
