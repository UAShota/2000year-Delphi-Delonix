object fmRefCamera: TfmRefCamera
  Left = 294
  Top = 197
  Align = alClient
  BorderStyle = bsNone
  Caption = #1050#1072#1084#1077#1088#1099' '#1089#1084#1077#1096#1077#1085#1080#1103
  ClientHeight = 602
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
    602)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 849
    Height = 586
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
    UpdateOptions.UpdateTableName = 'REF_CAMERA'
    TableName = 'REF_CAMERA'
    Left = 216
    Top = 168
    object ADTableID_CAMERA: TADAutoIncField
      DisplayLabel = #8470
      DisplayWidth = 4
      FieldName = 'ID_CAMERA'
      Origin = 'ID_CAMERA'
    end
    object ADTableCAPTION: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
      Size = 30
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
