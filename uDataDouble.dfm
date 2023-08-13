object fmDataDouble: TfmDataDouble
  Left = 260
  Top = 237
  Width = 836
  Height = 569
  Caption = #1055#1086#1080#1089#1082' '#1076#1091#1073#1083#1077#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TNextGrid
    Left = 0
    Top = 113
    Width = 828
    Height = 422
    Align = alClient
    GridLinesStyle = lsActiveRows
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 1
    TabStop = True
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = '#'
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 0
      SortType = stAlphabetic
      Width = 40
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 52
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1054#1090#1084#1077#1090#1082#1072
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stAlphabetic
      Width = 52
    end
    object NxTextColumn3: TNxTextColumn
      DefaultWidth = 202
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1047#1072#1082#1072#1079#1095#1080#1082
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stAlphabetic
      Width = 202
    end
    object NxTextColumn4: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1058#1080#1087
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 3
      SortType = stAlphabetic
    end
    object NxTextColumn5: TNxTextColumn
      DefaultWidth = 64
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1084'3/'#1095
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 4
      SortType = stAlphabetic
      Width = 64
    end
    object NxTextColumn6: TNxTextColumn
      DefaultWidth = 60
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1055#1072
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 5
      SortType = stAlphabetic
      Width = 60
    end
    object NxTextColumn7: TNxTextColumn
      DefaultWidth = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1089#1090
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 6
      SortType = stAlphabetic
      Width = 88
    end
    object NxTextColumn8: TNxTextColumn
      DefaultWidth = 85
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1052#1077#1085#1077#1076#1078#1077#1088
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 7
      SortType = stAlphabetic
      Width = 85
    end
    object NxTextColumn9: TNxTextColumn
      DefaultWidth = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1050#1055
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 8
      SortType = stAlphabetic
      Width = 40
    end
    object NxTextColumn10: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = #1044#1072#1090#1072
      Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing, coShowTextFitHint]
      Position = 9
      SortType = stAlphabetic
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 113
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object brnFindM3: TsButton
      Tag = 1
      Left = 256
      Top = 9
      Width = 137
      Height = 91
      Caption = #1048#1089#1082#1072#1090#1100' '#1084'3/'#1095
      TabOrder = 3
      OnClick = brnFindM3Click
      SkinData.SkinSection = 'BUTTON_HUGE'
    end
    object brnFindM3PA: TsButton
      Tag = 2
      Left = 408
      Top = 9
      Width = 137
      Height = 91
      Caption = #1048#1089#1082#1072#1090#1100' '#1084'3/'#1095' '#1080' '#1055#1072
      TabOrder = 4
      OnClick = brnFindM3Click
      SkinData.SkinSection = 'BUTTON_HUGE'
    end
    object cbType: TsComboBox
      Left = 16
      Top = 16
      Width = 233
      Height = 22
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      Style = csDropDownList
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = #1042#1099#1090#1103#1078#1082#1072
      OnChange = cbTypeChange
      Items.Strings = (
        #1042#1099#1090#1103#1078#1082#1072
        #1055#1088#1080#1090#1086#1082
        #1042#1099#1090#1103#1078#1082#1072' '#1080' '#1087#1088#1080#1090#1086#1082)
    end
    object paExt: TsPanel
      Left = 16
      Top = 40
      Width = 235
      Height = 33
      BevelOuter = bvNone
      TabOrder = 1
      SkinData.SkinSection = 'CHECKBOX'
      object inM3: TsEdit
        Left = 80
        Top = 4
        Width = 65
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1042#1099#1090#1103#1078#1082#1072' '#1084'3/'#1095
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clBlack
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object inPA: TsEdit
        Left = 168
        Top = 4
        Width = 65
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1055#1072
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clBlack
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
    object paInf: TsPanel
      Left = 16
      Top = 72
      Width = 235
      Height = 33
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      SkinData.SkinSection = 'CHECKBOX'
      object outM3: TsEdit
        Left = 80
        Top = 4
        Width = 65
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1055#1088#1080#1090#1086#1082' '#1084'3/'#1095
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clBlack
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object outPA: TsEdit
        Left = 168
        Top = 4
        Width = 65
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1055#1072
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clBlack
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
    object btnClose: TsButton
      Tag = 2
      Left = 568
      Top = 9
      Width = 137
      Height = 91
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 5
      OnClick = btnCloseClick
      SkinData.SkinSection = 'BUTTON_HUGE'
    end
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 136
    Top = 392
  end
end
