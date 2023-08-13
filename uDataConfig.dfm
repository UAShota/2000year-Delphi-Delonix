object fmConfig: TfmConfig
  Left = 191
  Top = 110
  Width = 848
  Height = 687
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  DesignSize = (
    840
    653)
  PixelsPerInch = 96
  TextHeight = 13
  object sGroupBox1: TsGroupBox
    Left = 16
    Top = 8
    Width = 161
    Height = 631
    Anchors = [akLeft, akTop, akBottom]
    Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object ListRef: TsListView
      Left = 17
      Top = 54
      Width = 127
      Height = 187
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
          AutoSize = True
          Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrackStyles = [htHandPoint]
      Items.Data = {
        F10000000800000000000000FFFFFFFFFFFFFFFF000000000000000009C4E5EB
        EEEDE8EAF1FB01000000FFFFFFFFFFFFFFFF000000000000000009D3F1F2E0ED
        EEE2EAE802000000FFFFFFFFFFFFFFFF000000000000000007D4E8EBFCF2F0FB
        03000000FFFFFFFFFFFFFFFF000000000000000006D1E5EAF6E8E804000000FF
        FFFFFFFFFFFFFF000000000000000007CAEBE0EFE0EDFB05000000FFFFFFFFFF
        FFFFFF000000000000000006CAE0ECE5F0FB0A000000FFFFFFFFFFFFFFFF0000
        0000000000000CCAEEEDE4E5EDF1E0F2EEF0FB0E000000FFFFFFFFFFFFFFFF00
        0000000000000009CEEFE8F1E0F2E5EBE8}
      ReadOnly = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      SmallImages = DM.ImageTree
      TabOrder = 0
      ViewStyle = vsReport
      OnClick = ListRefClick
    end
    object ListTag: TsListView
      Left = 17
      Top = 254
      Width = 127
      Height = 139
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
          AutoSize = True
          Caption = #1057#1086#1086#1090#1085#1086#1096#1077#1085#1080#1103
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrackStyles = [htHandPoint]
      Items.Data = {
        930000000500000006000000FFFFFFFFFFFFFFFF000000000000000008D1EAEE
        F0EEF1F2E807000000FFFFFFFFFFFFFFFF000000000000000007CAEBE0EFE0ED
        E008000000FFFFFFFFFFFFFFFF000000000000000006CAE0ECE5F0FB09000000
        FFFFFFFFFFFFFFFF00000000000000000AD7E0F1F2EEF2EDE8EAE80B000000FF
        FFFFFFFFFFFFFF000000000000000003CACAC1}
      ReadOnly = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      SmallImages = DM.ImageTree
      TabOrder = 1
      ViewStyle = vsReport
      OnClick = ListTagClick
    end
    object DBNavigator: TsDBNavigator
      Left = 8
      Top = 16
      Width = 145
      FullRepaint = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      SkinData.SkinSection = 'TOOLBAR'
      VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
      Hints.Strings = (
        #1053#1072' '#1087#1077#1088#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
        #1053#1072' '#1087#1086#1089#1083#1077#1076#1085#1102#1102' '#1079#1072#1087#1080#1089#1100
        #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
        #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
        #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        #1054#1073#1085#1086#1074#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091)
    end
    object btnClose: TsButton
      Left = 9
      Top = 592
      Width = 127
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 3
      OnClick = btnCloseClick
      SkinData.SkinSection = 'BUTTON'
    end
    object ListPrice: TsListView
      Left = 17
      Top = 406
      Width = 127
      Height = 139
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
          AutoSize = True
          Caption = #1055#1088#1072#1081#1089' '#1083#1080#1089#1090#1099
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrackStyles = [htHandPoint]
      Items.Data = {
        4A000000020000000C000000FFFFFFFFFFFFFFFF000000000000000008C7E0EF
        F7E0F1F2E80D000000FFFFFFFFFFFFFFFF000000000000000010D4E8EBFCF2F0
        FB202F20F1E5EAF6E8E8}
      ReadOnly = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      SmallImages = DM.ImageTree
      TabOrder = 4
      ViewStyle = vsReport
      OnClick = ListPriceClick
    end
  end
  object DataBox: TsPanel
    Left = 184
    Top = 16
    Width = 645
    Height = 625
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    SkinData.SkinSection = 'CHECKBOX'
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 168
    Top = 192
  end
end
