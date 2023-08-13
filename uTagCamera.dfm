object fmTagCamera: TfmTagCamera
  Left = 484
  Top = 339
  Align = alClient
  BorderStyle = bsNone
  Caption = #1057#1086#1086#1090#1085#1086#1096#1077#1085#1080#1077' '#1044#1077#1083#1086#1085#1080#1082#1089' - '#1082#1072#1084#1077#1088#1072
  ClientHeight = 240
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
    240)
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
      'select * from tag_camera')
    Left = 200
    Top = 96
    object ADQueryDELONIX2: TStringField
      DisplayLabel = #1044#1077#1083#1086#1085#1080#1082#1089
      FieldKind = fkLookup
      FieldName = 'DELONIX'
      LookupDataSet = ADQueryDelonix
      LookupKeyFields = 'id_delonix'
      LookupResultField = 'caption'
      KeyFields = 'ID_DELONIX'
      Lookup = True
    end
    object ADQueryCAMERA: TStringField
      DisplayLabel = #1050#1072#1084#1077#1088#1072
      FieldKind = fkLookup
      FieldName = 'CAMERA'
      LookupDataSet = ADQueryValve
      LookupKeyFields = 'id_camera'
      LookupResultField = 'caption'
      KeyFields = 'ID_CAMERA'
      Lookup = True
    end
    object ADQueryID_DELONIX: TIntegerField
      FieldName = 'ID_DELONIX'
      Origin = 'ID_DELONIX'
      Visible = False
    end
    object ADQueryID_CAMERA: TIntegerField
      FieldName = 'ID_CAMERA'
      Origin = 'ID_CAMERA'
      Visible = False
    end
  end
  object ADQueryValve: TADQuery
    Active = True
    Connection = DM.ADConnection
    SQL.Strings = (
      'select id_camera, caption '
      'from ref_camera'
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
    Active = True
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
