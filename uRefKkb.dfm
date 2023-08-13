object fmRefKkb: TfmRefKkb
  Left = 154
  Top = 68
  Align = alClient
  BorderStyle = bsNone
  Caption = #1050#1086#1085#1076#1077#1085#1089#1072#1090#1086#1088#1085#1099#1077' '#1073#1083#1086#1082#1080
  ClientHeight = 606
  ClientWidth = 862
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
    862
    606)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 849
    Height = 585
    Anchors = [akLeft, akTop, akRight, akBottom]
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
  end
  object ADTable: TADTable
    Connection = DM.ADConnection
    UpdateOptions.UpdateTableName = 'REF_KKB'
    TableName = 'REF_KKB'
    Left = 216
    Top = 168
    object ADTableID_KKB: TADAutoIncField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'ID_KKB'
      Origin = 'ID_KKB'
    end
    object ADTableCAPTION: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
      Size = 30
    end
    object ADTablePOWER: TFloatField
      DisplayLabel = #1052#1086#1097#1085#1086#1089#1090#1100'  ('#1082#1042#1090')'
      DisplayWidth = 16
      FieldName = 'POWER'
      Origin = 'POWER'
    end
    object ADTableCOST: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'COST'
      Origin = 'COST'
    end
    object ADTableORDERBY: TIntegerField
      DisplayLabel = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      DisplayWidth = 11
      FieldName = 'ORDERBY'
      Origin = 'ORDERBY'
    end
    object ADTableSTATE: TBooleanField
      DisplayLabel = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      DisplayWidth = 10
      FieldName = 'STATE'
      Origin = 'STATE'
      Required = True
    end
  end
  object DataSource: TDataSource
    DataSet = ADTable
    Left = 216
    Top = 120
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 96
    Top = 128
  end
end
