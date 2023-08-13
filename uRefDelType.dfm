object fmRefDelType: TfmRefDelType
  Left = 316
  Top = 355
  Align = alClient
  BorderStyle = bsNone
  Caption = #1058#1080#1087#1099' '#1091#1089#1090#1072#1085#1086#1074#1086#1082
  ClientHeight = 601
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    866
    601)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 850
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
    UpdateOptions.UpdateTableName = 'REF_DELTYPE'
    TableName = 'REF_DELTYPE'
    Left = 216
    Top = 168
    object ADTableID_DELTYPE: TADAutoIncField
      DisplayLabel = #8470
      DisplayWidth = 4
      FieldName = 'ID_DELTYPE'
      Origin = 'ID_DELTYPE'
    end
    object ADTableCAPTION: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 48
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
      Size = 60
    end
    object ADTableINFILUX: TBooleanField
      DisplayLabel = #1055#1088#1080#1090#1086#1082
      DisplayWidth = 8
      FieldName = 'INFILUX'
      Origin = 'INFILUX'
      Required = True
    end
    object ADTableEXTRACTION: TBooleanField
      DisplayLabel = #1042#1099#1090#1103#1078#1082#1072
      DisplayWidth = 9
      FieldName = 'EXTRACTION'
      Origin = 'EXTRACTION'
      Required = True
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
