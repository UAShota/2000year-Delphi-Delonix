object fmTagCostEx: TfmTagCostEx
  Left = 179
  Top = 83
  Align = alClient
  BorderStyle = bsNone
  Caption = #1055#1088#1072#1081#1089
  ClientHeight = 674
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    889
    674)
  PixelsPerInch = 96
  TextHeight = 13
  object sGroupBox1: TsGroupBox
    Left = 0
    Top = 0
    Width = 878
    Height = 209
    Anchors = [akLeft, akTop, akRight]
    Caption = #1060#1080#1083#1100#1090#1088#1099
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    DesignSize = (
      878
      209)
    object DBGridEh1: TDBGridEh
      Left = 16
      Top = 24
      Width = 854
      Height = 169
      Anchors = [akLeft, akTop, akRight]
      DataSource = DataSourceFilter
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'FILTER'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'F1'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|2,5'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F2'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|4'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F3'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|6'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F4'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|8'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F5'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|10'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F6'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|12,5'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F7'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|16'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F8'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|20'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F9'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|25'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F10'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|30'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F11'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|40'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F12'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|50'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F13'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|60'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F14'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|70'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F15'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|80'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F16'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|90'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'F17'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|100'
          Width = 40
        end>
    end
  end
  object sGroupBox2: TsGroupBox
    Left = 0
    Top = 216
    Width = 878
    Height = 209
    Anchors = [akLeft, akTop, akRight]
    Caption = #1057#1077#1082#1094#1080#1080
    TabOrder = 1
    SkinData.SkinSection = 'GROUPBOX'
    DesignSize = (
      878
      209)
    object DBGridEh2: TDBGridEh
      Left = 16
      Top = 24
      Width = 854
      Height = 169
      Anchors = [akLeft, akTop, akRight]
      DataSource = DataSourceSection
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SECTION'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'S1'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|2,5'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S2'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|4'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S3'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|6'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S4'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|8'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S5'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|10'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S6'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|12,5'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S7'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|16'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S8'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|20'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S9'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|25'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S10'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|30'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S11'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|40'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S12'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|50'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S13'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|60'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S14'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|70'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S15'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|80'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S16'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|90'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'S17'
          Footers = <>
          Title.Caption = #1044#1077#1083#1086#1085#1080#1082#1089'|100'
          Width = 40
        end>
    end
  end
  object sGroupBox3: TsGroupBox
    Left = 0
    Top = 432
    Width = 201
    Height = 233
    Caption = #1063#1072#1089#1090#1086#1090#1085#1080#1082#1080
    TabOrder = 2
    SkinData.SkinSection = 'GROUPBOX'
    object DBGridEh3: TDBGridEh
      Left = 16
      Top = 24
      Width = 169
      Height = 193
      DataSource = DataSourceFreq
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object sGroupBox4: TsGroupBox
    Left = 208
    Top = 432
    Width = 201
    Height = 233
    Caption = #1047#1074#1077#1079#1076#1072' / '#1090#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082
    TabOrder = 3
    SkinData.SkinSection = 'GROUPBOX'
    object DBGridEh4: TDBGridEh
      Left = 16
      Top = 24
      Width = 169
      Height = 193
      DataSource = DataSourceStar
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object sGroupBox5: TsGroupBox
    Left = 416
    Top = 432
    Width = 201
    Height = 233
    Caption = #1057#1080#1083#1086#1074#1099#1077' '#1084#1086#1076#1091#1083#1080
    TabOrder = 4
    SkinData.SkinSection = 'GROUPBOX'
    object DBGridEh5: TDBGridEh
      Left = 16
      Top = 24
      Width = 169
      Height = 193
      DataSource = DataSourceCooler
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object sGroupBox6: TsGroupBox
    Left = 624
    Top = 432
    Width = 257
    Height = 233
    Caption = #1041#1083#1086#1082#1080' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1080' '#1076#1072#1090#1095#1080#1082#1080
    TabOrder = 5
    SkinData.SkinSection = 'GROUPBOX'
    object DBGridEh6: TDBGridEh
      Left = 16
      Top = 24
      Width = 225
      Height = 193
      DataSource = DataSourceBlock
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object DataSourceFilter: TDataSource
    DataSet = ADTagFilter
    Left = 184
    Top = 96
  end
  object ADTagFilter: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.UpdateTableName = 'TAG_COST_FILTER'
    TableName = 'TAG_COST_FILTER'
    Left = 216
    Top = 96
    object ADTagFilterFILTER: TStringField
      DisplayLabel = #1060#1080#1083#1100#1090#1088
      FieldKind = fkLookup
      FieldName = 'FILTER'
      LookupDataSet = ADTableFilter
      LookupKeyFields = 'ID_FILTER'
      LookupResultField = 'CAPTION'
      KeyFields = 'ID_FILTER'
      ProviderFlags = []
      Lookup = True
    end
    object ADTagFilterID_FILTER: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FILTER'
      Origin = 'ID_FILTER'
      Visible = False
    end
    object ADTagFilterADDSDesigner1: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 2,5'
      DisplayWidth = 12
      FieldName = 'F1'
      Origin = 'F1'
    end
    object ADTagFilterADDSDesigner2: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 4'
      DisplayWidth = 10
      FieldName = 'F2'
      Origin = 'F2'
    end
    object ADTagFilterADDSDesigner3: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 6'
      DisplayWidth = 10
      FieldName = 'F3'
      Origin = 'F3'
    end
    object ADTagFilterADDSDesigner4: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 8'
      DisplayWidth = 10
      FieldName = 'F4'
      Origin = 'F4'
    end
    object ADTagFilterADDSDesigner5: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 10'
      DisplayWidth = 12
      FieldName = 'F5'
      Origin = 'F5'
    end
    object ADTagFilterADDSDesigner6: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 12,5'
      DisplayWidth = 13
      FieldName = 'F6'
      Origin = 'F6'
    end
    object ADTagFilterADDSDesigner7: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 16'
      DisplayWidth = 12
      FieldName = 'F7'
      Origin = 'F7'
    end
    object ADTagFilterADDSDesigner8: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 20'
      DisplayWidth = 12
      FieldName = 'F8'
      Origin = 'F8'
    end
    object ADTagFilterADDSDesigner9: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 25'
      DisplayWidth = 13
      FieldName = 'F9'
      Origin = 'F9'
    end
    object ADTagFilterADDSDesigner10: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 30'
      DisplayWidth = 12
      FieldName = 'F10'
      Origin = 'F10'
    end
    object ADTagFilterADDSDesigner11: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 40'
      DisplayWidth = 12
      FieldName = 'F11'
      Origin = 'F11'
    end
    object ADTagFilterADDSDesigner12: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 50'
      DisplayWidth = 12
      FieldName = 'F12'
      Origin = 'F12'
    end
    object ADTagFilterADDSDesigner13: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 60'
      DisplayWidth = 12
      FieldName = 'F13'
      Origin = 'F13'
    end
    object ADTagFilterADDSDesigner14: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 70'
      DisplayWidth = 12
      FieldName = 'F14'
      Origin = 'F14'
    end
    object ADTagFilterADDSDesigner15: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 80'
      DisplayWidth = 12
      FieldName = 'F15'
      Origin = 'F15'
    end
    object ADTagFilterADDSDesigner16: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 90'
      DisplayWidth = 12
      FieldName = 'F16'
      Origin = 'F16'
    end
    object ADTagFilterADDSDesigner17: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 100'
      DisplayWidth = 12
      FieldName = 'F17'
      Origin = 'F17'
    end
  end
  object ADTableFilter: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateTableName = 'REF_FILTER'
    TableName = 'REF_FILTER'
    Left = 248
    Top = 96
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 112
    Top = 256
  end
  object DataSourceSection: TDataSource
    DataSet = ADTagSection
    Left = 184
    Top = 368
  end
  object ADTagSection: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.UpdateTableName = 'TAG_COST_SECTION'
    TableName = 'TAG_COST_SECTION'
    Left = 216
    Top = 368
    object ADTagSectionID_SECTION: TIntegerField
      FieldName = 'ID_SECTION'
      Origin = 'ID_SECTION'
      Visible = False
    end
    object ADTagSectionSECTION: TStringField
      DisplayLabel = #1057#1077#1082#1094#1080#1103
      FieldKind = fkLookup
      FieldName = 'SECTION'
      LookupDataSet = ADTableSection
      LookupKeyFields = 'ID_SECTION'
      LookupResultField = 'CAPTION'
      KeyFields = 'ID_SECTION'
      ProviderFlags = [pfInUpdate]
      Lookup = True
    end
    object ADTagSectionIntegerField1: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 2,5'
      DisplayWidth = 12
      FieldName = 'S1'
      Origin = 'S1'
    end
    object ADTagSectionIntegerField2: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 4'
      DisplayWidth = 10
      FieldName = 'S2'
      Origin = 'S2'
    end
    object ADTagSectionIntegerField3: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 6'
      DisplayWidth = 10
      FieldName = 'S3'
      Origin = 'S3'
    end
    object ADTagSectionIntegerField4: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 8'
      DisplayWidth = 10
      FieldName = 'S4'
      Origin = 'S4'
    end
    object ADTagSectionIntegerField5: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 10'
      DisplayWidth = 12
      FieldName = 'S5'
      Origin = 'S5'
    end
    object ADTagSectionIntegerField6: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 12,5'
      DisplayWidth = 13
      FieldName = 'S6'
      Origin = 'S6'
    end
    object ADTagSectionIntegerField7: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 16'
      DisplayWidth = 12
      FieldName = 'S7'
      Origin = 'S7'
    end
    object ADTagSectionIntegerField8: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 20'
      DisplayWidth = 12
      FieldName = 'S8'
      Origin = 'S8'
    end
    object ADTagSectionIntegerField9: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 25'
      DisplayWidth = 13
      FieldName = 'S9'
      Origin = 'S9'
    end
    object ADTagSectionIntegerField10: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 30'
      DisplayWidth = 12
      FieldName = 'S10'
      Origin = 'S10'
    end
    object ADTagSectionIntegerField11: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 40'
      DisplayWidth = 12
      FieldName = 'S11'
      Origin = 'S11'
    end
    object ADTagSectionIntegerField12: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 50'
      DisplayWidth = 12
      FieldName = 'S12'
      Origin = 'S12'
    end
    object ADTagSectionIntegerField13: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 60'
      DisplayWidth = 12
      FieldName = 'S13'
      Origin = 'S13'
    end
    object ADTagSectionIntegerField14: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 70'
      DisplayWidth = 12
      FieldName = 'S14'
      Origin = 'S14'
    end
    object ADTagSectionIntegerField15: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 80'
      DisplayWidth = 12
      FieldName = 'S15'
      Origin = 'S15'
    end
    object ADTagSectionIntegerField16: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 90'
      DisplayWidth = 12
      FieldName = 'S16'
      Origin = 'S16'
    end
    object ADTagSectionIntegerField17: TIntegerField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089' 100'
      DisplayWidth = 12
      FieldName = 'S17'
      Origin = 'S17'
    end
  end
  object ADTableSection: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateTableName = 'REF_SECTION'
    TableName = 'REF_SECTION'
    Left = 248
    Top = 368
  end
  object DataSourceFreq: TDataSource
    DataSet = ADTableFreq
    Left = 96
    Top = 488
  end
  object ADTableFreq: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateTableName = 'TAG_COST_FREQ'
    TableName = 'TAG_COST_FREQ'
    Left = 128
    Top = 488
    object ADTableFreqPOWER: TFloatField
      DisplayLabel = #1052#1086#1097#1085#1086#1089#1090#1100
      DisplayWidth = 9
      FieldName = 'POWER'
      Origin = 'POWER'
    end
    object ADTableFreqCOST: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'COST'
      Origin = 'COST'
    end
  end
  object DataSourceStar: TDataSource
    DataSet = ADTableStar
    Left = 280
    Top = 488
  end
  object ADTableStar: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateTableName = 'TAG_COST_STAR'
    TableName = 'TAG_COST_STAR'
    Left = 312
    Top = 488
    object ADTableStarPOWER: TFloatField
      DisplayLabel = #1052#1086#1097#1085#1086#1089#1090#1100
      DisplayWidth = 9
      FieldName = 'POWER'
      Origin = 'POWER'
    end
    object ADTableStarCOST: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'COST'
      Origin = 'COST'
    end
  end
  object DataSourceCooler: TDataSource
    DataSet = ADTableCooler
    Left = 472
    Top = 488
  end
  object ADTableCooler: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateTableName = 'TAG_COST_POWER'
    TableName = 'TAG_COST_POWER'
    Left = 504
    Top = 488
    object FloatField1: TFloatField
      DisplayLabel = #1052#1086#1097#1085#1086#1089#1090#1100
      DisplayWidth = 9
      FieldName = 'POWER'
      Origin = 'POWER'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 8
      FieldName = 'COST'
      Origin = 'COST'
    end
  end
  object DataSourceBlock: TDataSource
    DataSet = ADTableBlock
    Left = 648
    Top = 488
  end
  object ADTableBlock: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateTableName = 'TAG_COST_BLOCK'
    TableName = 'TAG_COST_BLOCK'
    Left = 688
    Top = 488
    object ADTableBlockID_BLOCK: TADAutoIncField
      FieldName = 'ID_BLOCK'
      Origin = 'ID_BLOCK'
      Visible = False
    end
    object ADTableBlockCAPTION: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 13
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
      Size = 40
    end
    object ADTableBlockCOST: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 7
      FieldName = 'COST'
      Origin = 'COST'
    end
  end
end
