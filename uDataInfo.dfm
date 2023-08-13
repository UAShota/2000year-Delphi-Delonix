object fmDataInfo: TfmDataInfo
  Left = 190
  Top = 131
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Delonix Constructor'
  ClientHeight = 557
  ClientWidth = 1041
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object paInput: TsPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 557
    Align = alLeft
    TabOrder = 0
    SkinData.SkinSection = 'CHECKBOX'
    object sPanel2: TsPanel
      Left = 1
      Top = 1
      Width = 519
      Height = 16
      Align = alTop
      Caption = #1055#1088#1080#1090#1086#1082
      TabOrder = 9
      SkinData.SkinSection = 'HINT'
    end
    object sGroupBox1: TsGroupBox
      Left = 4
      Top = 100
      Width = 515
      Height = 137
      Caption = #1053#1072#1075#1088#1077#1074#1072#1085#1080#1077
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object sLabel2: TsLabel
        Left = 200
        Top = 104
        Width = 144
        Height = 13
        Caption = #1057#1080#1083#1086#1074#1086#1081' '#1084#1086#1076#1091#1083#1100' '#1085#1077#1076#1086#1089#1090#1091#1087#1077#1085
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object GridHeater: TNextGrid
        Left = 6
        Top = 16
        Width = 465
        Height = 73
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        OnChange = GridHeaterChange
        object NxHeatNameIn: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1058#1080#1087
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 0
          SortType = stNumeric
          Width = 116
          Items.Strings = (
            #1042#1086#1076#1103#1085#1086#1081' '#1085#1072#1075#1088#1077#1074#1072#1090#1077#1083#1100
            #1069#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1080#1081' '#1085#1072#1075#1088#1077#1074#1072#1090#1077#1083#1100)
        end
        object NxNumberColumn1: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1042#1093'.'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 1
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn2: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1042#1099#1093'.'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 2
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxHeatTypeIn: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 78
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1057#1086#1089#1090#1072#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 3
          SortType = stNumeric
          Width = 78
          Items.Strings = (
            #1042#1086#1076#1072
            #1069#1090#1080#1083#1077#1085
            #1055#1088#1086#1087#1080#1083#1077#1085
            #1053#1072#1075#1088#1077#1074)
        end
        object NxNumberColumn3: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 41
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = '%'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 4
          SortType = stNumeric
          Width = 41
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn4: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1074#1093'/'#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 5
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn5: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1074#1099#1093'/'#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 6
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn1: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          DefaultWidth = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'kW'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 7
          SortType = stNumeric
          Width = 42
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
      object btnAddHeater: TsButton
        Left = 473
        Top = 16
        Width = 35
        Height = 33
        TabOrder = 1
        OnClick = btnAddHeaterClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 0
      end
      object btnDelHeater: TsButton
        Left = 473
        Top = 56
        Width = 35
        Height = 33
        TabOrder = 2
        OnClick = btnDelHeaterClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 1
      end
      object gbPowerBox: TsPanel
        Left = 6
        Top = 96
        Width = 502
        Height = 33
        TabOrder = 3
        Visible = False
        SkinData.SkinSection = 'HINT'
        object sLabel1: TsLabel
          Left = 16
          Top = 10
          Width = 86
          Height = 13
          Caption = #1057#1080#1083#1086#1074#1086#1081' '#1084#1086#1076#1091#1083#1100':'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object sePower48: TsSpinEdit
          Left = 336
          Top = 7
          Width = 41
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
          BoundLabel.Caption = '48 '#1082#1042#1090
          BoundLabel.Indent = 3
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clBlack
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          MaxValue = 0
          MinValue = 0
          Value = 0
        end
        object sePower32: TsSpinEdit
          Left = 240
          Top = 7
          Width = 41
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
          BoundLabel.Caption = '32 '#1082#1042#1090
          BoundLabel.Indent = 3
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clBlack
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          MaxValue = 0
          MinValue = 0
          Value = 0
        end
        object sePower16: TsSpinEdit
          Left = 152
          Top = 7
          Width = 41
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Active = True
          BoundLabel.Caption = '16 '#1082#1042#1090
          BoundLabel.Indent = 3
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clBlack
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          MaxValue = 0
          MinValue = 0
          Value = 0
        end
      end
    end
    object sGroupBox6: TsGroupBox
      Left = 4
      Top = 337
      Width = 208
      Height = 109
      Caption = #1060#1080#1083#1100#1090#1088#1099
      TabOrder = 3
      SkinData.SkinSection = 'GROUPBOX'
      object GridFilterIn: TNextGrid
        Left = 10
        Top = 24
        Width = 145
        Height = 73
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        object NxListFilterIn: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 0
          SortType = stNumeric
          Width = 100
        end
        object NxNumberColumn17: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1050#1086#1083'-'#1074#1086
          Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coEditing, coPublicUsing]
          Position = 1
          SortType = stNumeric
          Width = 40
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
      object btnFilterInAdd: TsButton
        Left = 162
        Top = 24
        Width = 35
        Height = 33
        TabOrder = 1
        OnClick = btnFilterInAddClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 0
      end
      object btnFilterInDel: TsButton
        Left = 162
        Top = 64
        Width = 35
        Height = 33
        TabOrder = 2
        OnClick = btnFilterInDelClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 1
      end
    end
    object sGroupBox5: TsGroupBox
      Left = 221
      Top = 337
      Width = 298
      Height = 53
      Caption = #1059#1074#1083#1072#1078#1085#1077#1085#1080#1077
      TabOrder = 5
      SkinData.SkinSection = 'GROUPBOX'
      object seMoiseIn: TsSpinEdit
        Left = 64
        Top = 21
        Width = 49
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
        BoundLabel.Caption = #1058' '#1042#1093'.'
        BoundLabel.Indent = 3
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clBlack
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        MaxValue = 0
        MinValue = 0
        Value = 0
      end
      object seMoiseOut: TsSpinEdit
        Left = 160
        Top = 21
        Width = 49
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
        BoundLabel.Caption = #1058' '#1042#1099#1093'.'
        BoundLabel.Indent = 3
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clBlack
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        MaxValue = 0
        MinValue = 0
        Value = 0
      end
      object seMoisePc: TsSpinEdit
        Left = 240
        Top = 21
        Width = 49
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1092'%'
        BoundLabel.Indent = 3
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clBlack
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        MaxValue = 100
        MinValue = 0
        Value = 0
      end
      object cbMoise: TsCheckBox
        Left = 7
        Top = 23
        Width = 20
        Height = 20
        TabOrder = 3
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
    object sGroupBox4: TsGroupBox
      Left = 4
      Top = 17
      Width = 515
      Height = 81
      Caption = #1042#1077#1085#1090#1080#1083#1103#1090#1086#1088
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object GridCoolerPrimary: TNextGrid
        Left = 5
        Top = 16
        Width = 505
        Height = 57
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        SlideSize = 40
        TabOrder = 0
        TabStop = True
        OnChange = GridCoolerPrimaryChange
        object NxCheckBoxColumn1: TNxCheckBoxColumn
          Alignment = taCenter
          DefaultWidth = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 0
          SlideBounds.Left = 200
          SortType = stBoolean
          Width = 30
        end
        object NxTextColumn3: TNxTextColumn
          DefaultWidth = 145
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [coCanClick, coCanInput, coDisableMoving, coPublicUsing, coShowTextFitHint]
          Position = 1
          SortType = stAlphabetic
          Width = 145
        end
        object NxListColumn3: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 134
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1100
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 2
          SlideBounds.Left = 112
          SortType = stNumeric
          Width = 134
          Items.Strings = (
            #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081
            #1057#1090#1076'. '#1074#1079#1088#1099#1074
            #1056#1077#1079#1077#1088#1074#1085#1099#1081
            #1056#1077#1079'. '#1074#1079#1088#1099#1074)
        end
        object NxNumberColumn11: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1084'3/'#1095
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 3
          SlideBounds.Left = 24
          SlideBounds.Top = 32
          SortType = stNumeric
          Width = 60
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn12: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1055#1072
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 4
          SlideBounds.Left = 112
          SlideBounds.Top = 32
          SortType = stNumeric
          Width = 60
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxCoolPrimIn: TNxListColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          DefaultWidth = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1082#1042#1090
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 5
          SlideBounds.Left = 24
          SortType = stNumeric
          Width = 60
        end
      end
    end
    object paPowerInIn: TsPanel
      Left = 221
      Top = 394
      Width = 296
      Height = 25
      TabOrder = 10
      SkinData.SkinSection = 'HINT'
      object boxStarIn: TsRadioButton
        Left = 8
        Top = 4
        Width = 132
        Height = 20
        Caption = #1058#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082' / '#1079#1074#1077#1079#1076#1072
        TabOrder = 0
        SkinData.SkinSection = 'RADIOBUTTON'
      end
      object boxFreqIn: TsRadioButton
        Left = 146
        Top = 4
        Width = 74
        Height = 20
        Caption = #1063#1072#1089#1090#1086#1090#1085#1080#1082
        TabOrder = 1
        SkinData.SkinSection = 'RADIOBUTTON'
      end
      object rbPowerIn: TsRadioButton
        Left = 224
        Top = 4
        Width = 39
        Height = 20
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 2
        TabStop = True
        SkinData.SkinSection = 'RADIOBUTTON'
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 4
      Top = 239
      Width = 515
      Height = 97
      Caption = #1054#1093#1083#1072#1078#1076#1077#1085#1080#1077
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      object GridCoolerIn: TNextGrid
        Left = 6
        Top = 16
        Width = 465
        Height = 73
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        object NxCoolNameIn: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1058#1080#1087
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 0
          SortType = stNumeric
          Width = 116
          Items.Strings = (
            #1042#1086#1076#1103#1085#1086#1081' '#1074#1086#1079#1076#1091#1093#1086#1086#1093#1083#1072#1076#1080#1090#1077#1083#1100
            #1060#1088#1077#1086#1085#1086#1074#1099#1081' '#1074#1086#1079#1076#1091#1093#1086#1086#1093#1083#1072#1076#1080#1090#1077#1083#1100)
        end
        object NxNumberColumn13: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1042#1093'.'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 1
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn16: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1042#1099#1093'.'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 2
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxCoolTypeIn: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 78
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1057#1086#1089#1090#1072#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 3
          SortType = stNumeric
          Width = 78
          Items.Strings = (
            #1042#1086#1076#1072
            #1069#1090#1080#1083#1077#1085
            #1055#1088#1086#1087#1080#1083#1077#1085
            'R22'
            'R407C'
            'R507')
        end
        object NxNumberColumn23: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 41
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = '%'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 4
          SortType = stNumeric
          Width = 41
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn26: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1074#1093'/'#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 5
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn27: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1074#1099#1093'/'#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 6
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn28: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          DefaultWidth = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'kW'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 7
          SortType = stNumeric
          Width = 42
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
      object btnCoolerInAdd: TsButton
        Left = 473
        Top = 16
        Width = 35
        Height = 33
        TabOrder = 1
        OnClick = btnCoolerInAddClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 0
      end
      object btnCoolerInDel: TsButton
        Left = 473
        Top = 56
        Width = 35
        Height = 33
        TabOrder = 2
        OnClick = btnCoolerInDelClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 1
      end
    end
    object rgValveIn: TsRadioGroup
      Left = 381
      Top = 422
      Width = 137
      Height = 85
      Caption = #1050#1083#1072#1087#1072#1085
      ParentBackground = False
      TabOrder = 7
      SkinData.SkinSection = 'GROUPBOX'
      ItemIndex = 0
      Items.Strings = (
        #1053#1077#1090
        #1086#1073#1099#1095#1085#1099#1081
        #1091#1090#1077#1087#1083#1077#1085#1085#1099#1081)
    end
    object cbCamIn: TsCheckBox
      Left = 400
      Top = 526
      Width = 117
      Height = 20
      Caption = #1050#1072#1084#1077#1088#1072'  '#1089#1084#1077#1096#1077#1085#1080#1103
      TabOrder = 11
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sGroupBox13: TsGroupBox
      Left = 4
      Top = 446
      Width = 207
      Height = 109
      Caption = #1057#1077#1082#1094#1080#1080
      TabOrder = 4
      SkinData.SkinSection = 'GROUPBOX'
      object GridSectionInsIn: TNextGrid
        Left = 8
        Top = 24
        Width = 145
        Height = 73
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        object NxListIns: TNxListColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1057#1077#1082#1094#1080#1103
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 0
          SortType = stNumeric
        end
        object NxNumberColumn18: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1050#1086#1083'-'#1074#1086
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 1
          SortType = stNumeric
          Width = 40
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
      object btnSectionInsAdd: TsButton
        Left = 160
        Top = 24
        Width = 35
        Height = 33
        TabOrder = 1
        OnClick = btnSectionInsAddClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 0
      end
      object btnSectionInsDel: TsButton
        Left = 160
        Top = 64
        Width = 35
        Height = 33
        TabOrder = 2
        OnClick = btnSectionInsDelClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 1
      end
    end
    object sGroupBox8: TsGroupBox
      Left = 216
      Top = 508
      Width = 181
      Height = 45
      Caption = #1050#1050#1041
      TabOrder = 8
      SkinData.SkinSection = 'GROUPBOX'
      object cbKkb: TsComboBox
        Left = 28
        Top = 16
        Width = 145
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
        ItemIndex = -1
        ParentFont = False
        TabOrder = 0
        OnChange = cbKkbChange
      end
      object cbKkbUse: TsCheckBox
        Left = 8
        Top = 19
        Width = 20
        Height = 20
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
    object sGroupBox11: TsGroupBox
      Left = 220
      Top = 422
      Width = 153
      Height = 85
      Caption = #1064#1091#1084#1086#1075#1083#1091#1096#1077#1085#1080#1077
      TabOrder = 6
      SkinData.SkinSection = 'GROUPBOX'
      object cbNoizeInInput: TsCheckBox
        Left = 8
        Top = 24
        Width = 65
        Height = 20
        Caption = #1041#1086#1083#1100#1096#1086#1081
        TabOrder = 0
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object cbNoizeInOutput: TsCheckBox
        Left = 8
        Top = 56
        Width = 77
        Height = 20
        Caption = #1052#1072#1083#1077#1085#1100#1082#1080#1081
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object edNoizeInInput: TsSpinEdit
        Left = 88
        Top = 23
        Width = 49
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '1'
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        MaxValue = 0
        MinValue = 0
        Value = 1
      end
      object edNoizeInOutput: TsSpinEdit
        Left = 88
        Top = 55
        Width = 49
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '1'
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        MaxValue = 0
        MinValue = 0
        Value = 1
      end
    end
  end
  object paOutput: TsPanel
    Left = 521
    Top = 0
    Width = 520
    Height = 557
    Align = alLeft
    TabOrder = 1
    SkinData.SkinSection = 'CHECKBOX'
    object sGroupBox2: TsGroupBox
      Left = 4
      Top = 100
      Width = 513
      Height = 97
      Caption = #1054#1093#1083#1072#1078#1076#1077#1085#1080#1077
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object GridCoolerOut: TNextGrid
        Left = 6
        Top = 16
        Width = 465
        Height = 73
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        object NxCoolNameOut: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1058#1080#1087
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 0
          SortType = stNumeric
          Width = 116
          Items.Strings = (
            #1042#1086#1076#1103#1085#1086#1081' '#1074#1086#1079#1076#1091#1093#1086#1086#1093#1083#1072#1076#1080#1090#1077#1083#1100
            #1060#1088#1077#1086#1085#1086#1074#1099#1081' '#1074#1086#1079#1076#1091#1093#1086#1086#1093#1083#1072#1076#1080#1090#1077#1083#1100)
        end
        object NxNumberColumn6: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1042#1093'.'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 1
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn7: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1042#1099#1093'.'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 2
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxCoolTypeOut: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 78
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1057#1086#1089#1090#1072#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 3
          SortType = stNumeric
          Width = 78
          Items.Strings = (
            #1042#1086#1076#1072
            #1069#1090#1080#1083#1077#1085
            #1055#1088#1086#1087#1080#1083#1077#1085
            'R22'
            'R407C'
            'R507')
        end
        object NxNumberColumn8: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 41
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = '%'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 4
          SortType = stNumeric
          Width = 41
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn9: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1074#1093'/'#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 5
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn10: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'T '#1074#1099#1093'/'#1074
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 6
          SortType = stNumeric
          Width = 45
          EditOptions = [eoAllowSigns]
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn2: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          DefaultWidth = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'kW'
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 7
          SortType = stNumeric
          Width = 42
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
      object btnCoolerOutAdd: TsButton
        Left = 473
        Top = 16
        Width = 35
        Height = 33
        TabOrder = 1
        OnClick = btnCoolerOutAddClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 0
      end
      object btnCoolerOutDel: TsButton
        Left = 473
        Top = 56
        Width = 35
        Height = 33
        TabOrder = 2
        OnClick = btnCoolerOutDelClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 1
      end
    end
    object sGroupBox7: TsGroupBox
      Left = 4
      Top = 199
      Width = 208
      Height = 112
      Caption = #1060#1080#1083#1100#1090#1088#1099
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      object GridFilterOut: TNextGrid
        Left = 8
        Top = 24
        Width = 145
        Height = 73
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        object NxListFilterOut: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 0
          SortType = stNumeric
          Width = 100
        end
        object NxNumberColumn20: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1050#1086#1083'-'#1074#1086
          Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coEditing, coPublicUsing]
          Position = 1
          SortType = stNumeric
          Width = 40
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
      object btnFilterOutAdd: TsButton
        Left = 160
        Top = 24
        Width = 35
        Height = 33
        TabOrder = 1
        OnClick = btnFilterOutAddClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 0
      end
      object btnFilterOutDel: TsButton
        Left = 160
        Top = 64
        Width = 35
        Height = 33
        TabOrder = 2
        OnClick = btnFilterOutDelClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 1
      end
    end
    object sGroupBox16: TsGroupBox
      Left = 4
      Top = 17
      Width = 515
      Height = 81
      Caption = #1042#1077#1085#1090#1080#1083#1103#1090#1086#1088
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object GridCoolerPrimaryOut: TNextGrid
        Left = 5
        Top = 16
        Width = 505
        Height = 57
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        SlideSize = 40
        TabOrder = 0
        TabStop = True
        OnChange = GridCoolerPrimaryOutChange
        object NxCheckBoxColumn4: TNxCheckBoxColumn
          Alignment = taCenter
          DefaultWidth = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 0
          SlideBounds.Left = 200
          SortType = stBoolean
          Width = 30
        end
        object NxTextColumn6: TNxTextColumn
          DefaultWidth = 145
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [coCanClick, coCanInput, coDisableMoving, coPublicUsing, coShowTextFitHint]
          Position = 1
          SortType = stAlphabetic
          Width = 145
        end
        object NxListColumn2: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 134
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1100
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 2
          SlideBounds.Left = 112
          SortType = stNumeric
          Width = 134
          Items.Strings = (
            #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081
            #1057#1090#1076'. '#1074#1079#1088#1099#1074
            #1056#1077#1079#1077#1088#1074#1085#1099#1081
            #1056#1077#1079'. '#1074#1079#1088#1099#1074)
        end
        object NxNumberColumn24: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1084'3/'#1095
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 3
          SlideBounds.Left = 24
          SlideBounds.Top = 32
          SortType = stNumeric
          Width = 60
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn25: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1055#1072
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 4
          SlideBounds.Left = 112
          SlideBounds.Top = 32
          SortType = stNumeric
          Width = 60
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxCoolPrimOut: TNxListColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          DefaultWidth = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1082#1042#1090
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing]
          Position = 5
          SlideBounds.Left = 24
          SortType = stNumeric
          Width = 60
        end
      end
    end
    object paPowerOutOut: TsPanel
      Left = 220
      Top = 230
      Width = 293
      Height = 25
      TabOrder = 8
      SkinData.SkinSection = 'HINT'
      object boxStarOut: TsRadioButton
        Left = 7
        Top = 4
        Width = 132
        Height = 20
        Caption = #1058#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082' / '#1079#1074#1077#1079#1076#1072
        TabOrder = 0
        SkinData.SkinSection = 'RADIOBUTTON'
      end
      object boxFreqOut: TsRadioButton
        Left = 146
        Top = 4
        Width = 74
        Height = 20
        Caption = #1063#1072#1089#1090#1086#1090#1085#1080#1082
        TabOrder = 1
        SkinData.SkinSection = 'RADIOBUTTON'
      end
      object rbPowerOut: TsRadioButton
        Left = 224
        Top = 4
        Width = 39
        Height = 20
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 2
        TabStop = True
        SkinData.SkinSection = 'RADIOBUTTON'
      end
    end
    object boxPixelBtn: TsCheckBox
      Left = 344
      Top = 208
      Width = 61
      Height = 20
      Caption = 'STD/3'#1092
      TabOrder = 5
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object rgValveOut: TsRadioGroup
      Left = 375
      Top = 260
      Width = 138
      Height = 85
      Caption = #1050#1083#1072#1087#1072#1085
      ParentBackground = False
      TabOrder = 7
      SkinData.SkinSection = 'GROUPBOX'
      ItemIndex = 0
      Items.Strings = (
        #1053#1077#1090
        #1086#1073#1099#1095#1085#1099#1081
        #1091#1090#1077#1087#1083#1077#1085#1085#1099#1081)
    end
    object cbCamOut: TsCheckBox
      Left = 219
      Top = 208
      Width = 114
      Height = 20
      Caption = #1050#1072#1084#1077#1088#1072' '#1089#1084#1077#1096#1077#1085#1080#1103
      TabOrder = 4
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sPanel1: TsPanel
      Left = 1
      Top = 1
      Width = 518
      Height = 16
      Align = alTop
      Caption = #1042#1099#1090#1103#1078#1082#1072
      TabOrder = 9
      SkinData.SkinSection = 'HINT'
    end
    object sGroupBox10: TsGroupBox
      Left = 4
      Top = 313
      Width = 208
      Height = 109
      Caption = #1057#1077#1082#1094#1080#1080
      TabOrder = 3
      SkinData.SkinSection = 'GROUPBOX'
      object GridSectionInsOut: TNextGrid
        Left = 8
        Top = 24
        Width = 145
        Height = 73
        GridLinesStyle = lsActiveRows
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        object NxListInsOut: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 82
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1057#1077#1082#1094#1080#1103
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 0
          SortType = stNumeric
          Width = 82
        end
        object NxNumberColumn29: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = #1050#1086#1083'-'#1074#1086
          Options = [coCanClick, coCanInput, coDisableMoving, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 1
          SortType = stNumeric
          Width = 40
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
      object btnSectionInsAddOut: TsButton
        Left = 160
        Top = 24
        Width = 35
        Height = 33
        TabOrder = 1
        OnClick = btnSectionInsAddOutClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 0
      end
      object btnSectionInsDelOut: TsButton
        Left = 160
        Top = 64
        Width = 35
        Height = 33
        TabOrder = 2
        OnClick = btnSectionInsDelOutClick
        SkinData.SkinSection = 'BUTTON'
        Images = DM.ImageButton
        ImageIndex = 1
      end
    end
    object sGroupBox12: TsGroupBox
      Left = 220
      Top = 260
      Width = 145
      Height = 85
      Caption = #1064#1091#1084#1086#1075#1083#1091#1096#1077#1085#1080#1077
      TabOrder = 6
      SkinData.SkinSection = 'GROUPBOX'
      object cbNoizeOutInput: TsCheckBox
        Left = 8
        Top = 24
        Width = 65
        Height = 20
        Caption = #1041#1086#1083#1100#1096#1086#1081
        TabOrder = 0
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object cbNoizeOutOutput: TsCheckBox
        Left = 8
        Top = 56
        Width = 77
        Height = 20
        Caption = #1052#1072#1083#1077#1085#1100#1082#1080#1081
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object edNoizeOutInput: TsSpinEdit
        Left = 88
        Top = 23
        Width = 49
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '1'
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        MaxValue = 0
        MinValue = 0
        Value = 1
      end
      object edNoizeOutOutput: TsSpinEdit
        Left = 88
        Top = 55
        Width = 49
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '1'
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        MaxValue = 0
        MinValue = 0
        Value = 1
      end
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
    Left = 312
    Top = 432
  end
  object MainMenu1: TMainMenu
    Left = 332
    Top = 106
    object btnBack: TMenuItem
      Caption = #1042' '#1087#1072#1085#1077#1083#1100' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
      OnClick = btnBackClick
    end
    object btnCalc: TMenuItem
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
      OnClick = btnCalcClick
    end
  end
end
