object fmRefItem: TfmRefItem
  Left = 315
  Top = 257
  Align = alClient
  BorderStyle = bsNone
  Caption = #1054#1087#1080#1089#1072#1085#1080#1103
  ClientHeight = 603
  ClientWidth = 861
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
    861
    603)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 849
    Height = 588
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
    UpdateOptions.UpdateTableName = 'REF_ITEM'
    TableName = 'REF_ITEM'
    Left = 216
    Top = 168
    object ADTableID_ITEM: TADAutoIncField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'ID_ITEM'
      Origin = 'ID_ITEM'
    end
    object ADTableFIELDVALUE: TStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'FIELDVALUE'
      Origin = 'FIELDVALUE'
      Size = 50
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
