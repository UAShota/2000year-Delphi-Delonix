object fmTagDelSpeed: TfmTagDelSpeed
  Left = 412
  Top = 173
  Align = alClient
  BorderStyle = bsNone
  Caption = #1057#1086#1086#1090#1085#1086#1096#1077#1085#1080#1077' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1080' '#1091#1089#1090#1072#1085#1086#1074#1082#1072' - '#1076#1077#1083#1086#1085#1080#1082#1089
  ClientHeight = 240
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    417
    240)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 56
    Width = 385
    Height = 169
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
        FieldName = 'DELONIX'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'COOLSPEED'
        Footers = <>
        Width = 118
      end>
  end
  object cbDelType: TsComboBox
    Left = 15
    Top = 27
    Width = 386
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
    OnChange = cbDelTypeChange
  end
  object ADQuery: TADQuery
    BeforePost = ADQueryBeforePost
    Connection = DM.ADConnection
    SQL.Strings = (
      'select * from tag_delspeed where id_deltype=:id')
    Left = 200
    Top = 96
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object ADQueryCOOLSPEED: TIntegerField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'COOLSPEED'
      Origin = 'COOLSPEED'
    end
    object ADQueryDELONIX: TStringField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089
      FieldKind = fkLookup
      FieldName = 'DELONIX'
      LookupDataSet = ADQueryDetail
      LookupKeyFields = 'id_delonix'
      LookupResultField = 'caption'
      KeyFields = 'ID_DELONIX'
      Lookup = True
    end
    object ADQueryID_DELONIX: TIntegerField
      FieldName = 'ID_DELONIX'
      Origin = 'ID_DELONIX'
      Visible = False
    end
    object ADQueryID_DELTYPE: TIntegerField
      FieldName = 'ID_DELTYPE'
      Origin = 'ID_DELTYPE'
      Visible = False
    end
  end
  object ADQueryDetail: TADQuery
    Connection = DM.ADConnection
    SQL.Strings = (
      'select *'
      'from ref_delonix '
      'where state=true '
      'order by orderby')
    Left = 232
    Top = 96
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
