object fmRefFreq: TfmRefFreq
  Left = 485
  Top = 339
  Align = alClient
  BorderStyle = bsNone
  Caption = #1063#1072#1089#1090#1086#1090#1085#1080#1082#1080
  ClientHeight = 238
  ClientWidth = 419
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
    419
    238)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 406
    Height = 220
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
    Active = True
    Connection = DM.ADConnection
    UpdateOptions.UpdateTableName = 'REF_FREQ'
    TableName = 'REF_FREQ'
    Left = 216
    Top = 168
    object ADTableID_FREQ: TADAutoIncField
      DisplayLabel = #8470
      DisplayWidth = 4
      FieldName = 'ID_FREQ'
      Origin = 'ID_FREQ'
    end
    object ADTableCOOLSPEED: TFloatField
      DisplayLabel = #1052#1086#1097#1085#1086#1089#1090#1100
      DisplayWidth = 13
      FieldName = 'COOLSPEED'
      Origin = 'COOLSPEED'
    end
    object ADTableREALPOWER: TFloatField
      DisplayLabel = #1063#1072#1089#1090#1086#1090#1085#1080#1082
      DisplayWidth = 12
      FieldName = 'REALPOWER'
      Origin = 'REALPOWER'
    end
    object ADTableORDERBY: TIntegerField
      DisplayLabel = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      DisplayWidth = 10
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
