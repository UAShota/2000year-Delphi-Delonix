object fmTagValve: TfmTagValve
  Left = 446
  Top = 196
  Align = alClient
  BorderStyle = bsNone
  Caption = #1057#1086#1086#1090#1085#1086#1096#1077#1085#1080#1077' '#1044#1077#1083#1086#1085#1080#1082#1089' - '#1082#1083#1072#1087#1072#1085
  ClientHeight = 243
  ClientWidth = 417
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
    417
    243)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 401
    Height = 225
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
  end
  object ADQuery: TADQuery
    Connection = DM.ADConnection
    Prepared = True
    SQL.Strings = (
      'select * from tag_valve')
    Left = 200
    Top = 96
    object ADQueryDELONIX2: TStringField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'DELONIX'
      LookupDataSet = ADQueryDelonix
      LookupKeyFields = 'id_delonix'
      LookupResultField = 'caption'
      KeyFields = 'ID_DELONIX'
      Lookup = True
    end
    object ADQueryVALVE2: TStringField
      DisplayLabel = #1050#1083#1072#1087#1072#1085
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'VALVE'
      LookupDataSet = ADQueryValve
      LookupKeyFields = 'id_valve'
      LookupResultField = 'caption'
      KeyFields = 'ID_VALVE'
      Lookup = True
    end
    object ADQueryITEMCOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'ITEMCOUNT'
      Origin = 'ITEMCOUNT'
    end
    object ADQueryID_DELONIX: TIntegerField
      FieldName = 'ID_DELONIX'
      Origin = 'ID_DELONIX'
      Visible = False
    end
    object ADQueryID_VALVE: TIntegerField
      FieldName = 'ID_VALVE'
      Origin = 'ID_VALVE'
      Visible = False
    end
  end
  object ADQueryValve: TADQuery
    Connection = DM.ADConnection
    SQL.Strings = (
      'select id_valve, caption '
      'from ref_valve'
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
  object ADQueryDelonix: TADQuery
    Connection = DM.ADConnection
    SQL.Strings = (
      'select id_delonix, caption '
      'from ref_delonix'
      'where state=true '
      'order by orderby')
    Left = 232
    Top = 128
  end
end
