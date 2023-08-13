unit uDataConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, sSkinProvider, StdCtrls, sGroupBox, sListView,
  ExtCtrls, sPanel, sDBNavigator, Grids, DBGridEh, sButton;

type
  TfmConfig = class(TForm)
    sSkinProvider1: TsSkinProvider;
    sGroupBox1: TsGroupBox;
    DataBox: TsPanel;
    ListRef: TsListView;
    ListTag: TsListView;
    DBNavigator: TsDBNavigator;
    btnClose: TsButton;
    ListPrice: TsListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListRefClick(Sender: TObject);
    procedure ListTagClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure ListPriceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Execute(Index: integer);
  end;

var
  fmConfig: TfmConfig;

implementation

uses uData, uRefDelonix, uRefDelType, uRefFilter, uRefSection, uRefValve,
  uRefCamera, uWizard, uTagDelSpeed, uTagValve, uTagCamera, uRefFreq,
  uRefKkb, uTagKkb, uTagCost, uTagCostEx, uRefItem;

{$R *.dfm}


procedure TfmConfig.Execute(Index: integer);
begin
  if (DataBox.ControlCount > 0) then
    TForm(DataBox.Controls[0]).Destroy;

  if (Index = 0) then
  with TfmRefDelonix.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 1) then
  with TfmRefDelType.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 2) then
  with TfmRefFilter.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 3) then
  with TfmRefSection.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 4) then
  with TfmRefValve.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 5) then
  with TfmRefCamera.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 6) then
  with TfmRefKkb.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 7) then
  with TfmRefItem.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 8) then
  with TfmTagDelSpeed.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 9) then
  with TfmTagValve.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 10) then
  with TfmTagCamera.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 11) then
  with TfmRefFreq.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end else

  if (Index = 12) then
  with TfmTagKKB.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();
  end;

  Caption := TForm(DataBox.Controls[0]).Caption;
end;

procedure TfmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmWizard.Show();
  if (DataBox.ControlCount > 0) then
    TForm(DataBox.Controls[0]).Destroy;
end;

procedure TfmConfig.ListRefClick(Sender: TObject);
begin
  if (ListRef.Selected <> nil) then
    Execute(ListRef.Selected.Index);
end;

procedure TfmConfig.ListTagClick(Sender: TObject);
begin
  if (ListTag.Selected <> nil) then
    Execute(ListRef.Items.Count + ListTag.Selected.Index);
end;

procedure TfmConfig.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmConfig.ListPriceClick(Sender: TObject);
begin
  if (ListPrice.ItemIndex = 0) then
  with TfmTagCost.Create(Self) do begin
    DBNavigator.DataSource := DataSource;
    Parent := DataBox;
    Show();  
  end;

  if (ListPrice.ItemIndex = 1) then
  with TfmTagCostEx.Create(Self) do begin
    DBNavigator.DataSource := nil;
    Parent := DataBox;
    Show();
  end;
end;

end.
