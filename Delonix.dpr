program Delonix;

uses
  Forms,
  uDataInfo in 'uDataInfo.pas' {fmDataInfo},
  uData in 'uData.pas' {DM: TDataModule},
  uWizard in 'uWizard.pas' {fmWizard},
  uDataConfig in 'uDataConfig.pas' {fmConfig},
  uRefDelonix in 'uRefDelonix.pas' {fmRefDelonix},
  uRefDelType in 'uRefDelType.pas' {fmRefDelType},
  uRefFilter in 'uRefFilter.pas' {fmRefFilter},
  uRefSection in 'uRefSection.pas' {fmRefSection},
  uRefValve in 'uRefValve.pas' {fmRefValve},
  uRefCamera in 'uRefCamera.pas' {fmRefCamera},
  uTagDelSpeed in 'uTagDelSpeed.pas' {fmTagDelSpeed},
  uTagValve in 'uTagValve.pas' {fmTagValve},
  uTagCamera in 'uTagCamera.pas' {fmTagCamera},
  uRefFreq in 'uRefFreq.pas' {fmRefFreq},
  uRefKkb in 'uRefKkb.pas' {fmRefKkb},
  uTagKkb in 'uTagKkb.pas' {fmTagKkb},
  uDataReport in 'uDataReport.pas' {fmDataReport},
  uTagCost in 'uTagCost.pas' {fmTagCost},
  uTagCostEx in 'uTagCostEx.pas' {fmTagCostEx},
  uDataDouble in 'uDataDouble.pas' {fmDataDouble},
  uRefItem in 'uRefItem.pas' {fmRefItem};

{$R *.res}


begin
  Application.Initialize;
  Application.Title := 'Delonix Constructor';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfmWizard, fmWizard);
  Application.Run;
end.
