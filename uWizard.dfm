object fmWizard: TfmWizard
  Left = 489
  Top = 312
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1053#1072#1095#1072#1083#1100#1085#1099#1077' '#1091#1089#1090#1072#1085#1086#1074#1082#1080
  ClientHeight = 244
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnDelInfo: TsButton
    Tag = 1
    Left = 139
    Top = 208
    Width = 78
    Height = 25
    Caption = #1044#1072#1083#1077#1077
    Enabled = False
    TabOrder = 2
    OnClick = btnDelInfoClick
    OnKeyDown = btnReferKeyDown
    SkinData.SkinSection = 'BUTTON'
  end
  object btnClose: TsButton
    Left = 269
    Top = 208
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = btnCloseClick
    OnKeyDown = btnReferKeyDown
    SkinData.SkinSection = 'BUTTON'
  end
  object sGroupBox1: TsGroupBox
    Left = 16
    Top = 8
    Width = 329
    Height = 185
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object Shape1: TShape
      Left = 163
      Top = 56
      Width = 9
      Height = 65
    end
    object seCoolerIn: TsSpinEdit
      Left = 64
      Top = 60
      Width = 65
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '1000'
      OnChange = cbDelTypeChange
      OnKeyDown = btnReferKeyDown
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = #1055#1088#1080#1090#1086#1082':'
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
      Value = 1000
    end
    object cbDelType: TsComboBox
      Left = 16
      Top = 27
      Width = 297
      Height = 22
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.Caption = #1058#1080#1087' '#1091#1089#1090#1072#1085#1086#1074#1082#1080':'
      BoundLabel.Indent = 3
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clBlack
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopCenter
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
      OnChange = cbDelTypeChange
      OnKeyDown = btnReferKeyDown
    end
    object seCoolerOut: TsSpinEdit
      Left = 248
      Top = 60
      Width = 65
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '1000'
      OnChange = cbDelTypeChange
      OnKeyDown = btnReferKeyDown
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = #1042#1099#1090#1103#1078#1082#1072':'
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
      Value = 1000
    end
    object cbDelonixIn: TsComboBox
      Left = 16
      Top = 93
      Width = 113
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
      Enabled = False
      ItemHeight = 16
      ItemIndex = -1
      TabOrder = 3
      OnClick = cbDelonixInClick
      OnKeyDown = btnReferKeyDown
    end
    object cbDelonixOut: TsComboBox
      Left = 201
      Top = 93
      Width = 113
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
      Enabled = False
      ItemHeight = 16
      ItemIndex = -1
      TabOrder = 4
      OnClick = cbDelonixOutClick
      OnKeyDown = btnReferKeyDown
    end
    object feBlank: TsFilenameEdit
      Left = 16
      Top = 144
      Width = 297
      Height = 21
      AutoSize = False
      MaxLength = 255
      TabOrder = 5
      OnChange = feBlankChange
      BoundLabel.Active = True
      BoundLabel.Caption = #1041#1083#1072#1085#1082#1080' '#1079#1072#1082#1072#1079#1086#1074
      BoundLabel.Indent = 3
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clBlack
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopCenter
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      Filter = 'Excel Files (*.xls)|*.xls'
    end
  end
  object btnRefer: TsButton
    Left = 16
    Top = 208
    Width = 75
    Height = 25
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
    TabOrder = 1
    OnClick = btnReferClick
    OnKeyDown = btnReferKeyDown
    SkinData.SkinSection = 'BUTTON'
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 208
    Top = 32
  end
end
