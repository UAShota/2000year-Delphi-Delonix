object fmTagKkb: TfmTagKkb
  Left = 466
  Top = 272
  Align = alClient
  BorderStyle = bsNone
  Caption = #1050#1050#1041
  ClientHeight = 301
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    505
    301)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 56
    Width = 473
    Height = 232
    Anchors = [akLeft, akTop, akBottom]
    DataSource = DataSource
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CAPTION'
        Footers = <>
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'ITEMCOUNT'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'COST'
        Footers = <>
        Width = 71
      end>
  end
  object cbKKB: TsComboBox
    Left = 15
    Top = 27
    Width = 474
    Height = 22
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = #1050#1050#1041':'
    BoundLabel.Indent = 3
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clBlack
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclTopLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = -1
    ParentFont = False
    TabOrder = 1
    OnChange = cbKKBChange
  end
  object ADQuery: TADQuery
    BeforePost = ADQueryBeforePost
    Connection = DM.ADConnection
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select * from tag_kkb where id_kkb=:id')
    Left = 200
    Top = 96
    ParamData = <
      item
        Name = 'ID'
      end>
    object ADQueryCAPTION: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
      Size = 50
    end
    object ADQueryCOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'ITEMCOUNT'
      Origin = 'ITEMCOUNT'
    end
    object ADQueryID_KKB: TIntegerField
      FieldName = 'ID_KKB'
      Origin = 'ID_KKB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object ADQueryCOST: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'COST'
      Origin = 'COST'
    end
  end
  object DataSource: TDataSource
    DataSet = ADQuery
    Left = 168
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
    Left = 136
    Top = 96
  end
end
