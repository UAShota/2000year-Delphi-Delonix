object fmDataReport: TfmDataReport
  Left = 326
  Top = 138
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1048#1090#1086#1075#1086#1074#1099#1081' '#1086#1090#1095#1077#1090
  ClientHeight = 602
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lvReport: TsListView
    Left = 16
    Top = 48
    Width = 649
    Height = 537
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'EDIT'
    Color = clWhite
    Columns = <
      item
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 470
      end
      item
        Caption = #1062#1077#1085#1072
      end
      item
        Caption = #1050#1086#1083'-'#1074#1086
      end
      item
        Caption = #1057#1091#1084#1084#1072
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GridLines = True
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    TabOrder = 0
    ViewStyle = vsReport
    OnKeyDown = btnExportKeyDown
  end
  object sButton1: TsButton
    Left = 589
    Top = 8
    Width = 75
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = sButton1Click
    OnKeyDown = btnExportKeyDown
    SkinData.SkinSection = 'BUTTON'
  end
  object btnExport: TsButton
    Left = 104
    Top = 8
    Width = 305
    Height = 33
    Caption = #1042#1099#1076#1072#1090#1100' '#1073#1083#1072#1085#1082
    TabOrder = 2
    OnClick = btnExportClick
    OnKeyDown = btnExportKeyDown
    SkinData.SkinSection = 'BUTTON'
  end
  object btnDouble: TsButton
    Left = 424
    Top = 8
    Width = 153
    Height = 33
    Caption = #1053#1072#1081#1090#1080' '#1076#1091#1073#1083#1080
    TabOrder = 3
    OnClick = btnDoubleClick
    SkinData.SkinSection = 'BUTTON'
  end
  object edBlankNum: TsSpinEdit
    Left = 16
    Top = 18
    Width = 80
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Active = True
    BoundLabel.Caption = #1041#1083#1072#1085#1082' '#8470
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clBlack
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclTopCenter
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    MaxValue = 0
    MinValue = 0
    Value = 0
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 104
    Top = 104
  end
end
