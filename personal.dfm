object settings_form: Tsettings_form
  Left = 359
  Top = 145
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 529
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 433
    Height = 25
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1091#1090#1100' '#1082' '#1041#1040#1047#1045' '#1044#1040#1053#1053#1067#1061
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Bevel1: TBevel
    Left = 8
    Top = 264
    Width = 417
    Height = 4
    Style = bsRaised
  end
  object Label2: TLabel
    Left = 0
    Top = 272
    Width = 433
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1086#1092#1080#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object Label3: TLabel
    Left = 0
    Top = 241
    Width = 433
    Height = 24
    Align = alTop
    AutoSize = False
    Caption = 'Label3'
    Transparent = True
    Layout = tlCenter
  end
  object Bevel2: TBevel
    Left = 8
    Top = 432
    Width = 417
    Height = 4
    Style = bsRaised
  end
  object LabeledEdit1: TLabeledEdit
    Left = 24
    Top = 312
    Width = 385
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1048#1054' '#1084#1072#1089#1090#1077#1088#1072
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 24
    Top = 392
    Width = 385
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1072#1088#1086#1083#1100
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 120
    Top = 496
    Width = 75
    Height = 25
    Caption = #1054#1082
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 496
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = -100
    Top = 176
    Width = 65
    Height = 89
    TabOrder = 4
    Visible = False
    WordWrap = False
  end
  object LabeledEdit3: TLabeledEdit
    Left = 24
    Top = 352
    Width = 385
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = #1051#1086#1075#1080#1085
    TabOrder = 5
  end
  object ShellTreeView1: TShellTreeView
    Left = 0
    Top = 25
    Width = 433
    Height = 216
    ObjectTypes = [otFolders, otHidden]
    Root = 'rfDesktop'
    UseShellImages = True
    Align = alTop
    AutoRefresh = True
    HideSelection = False
    Indent = 20
    ParentColor = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 6
    OnChange = ShellTreeView1Change
  end
  object ch1: TCheckBox
    Left = 24
    Top = 440
    Width = 337
    Height = 17
    Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1088#1080' '#1074#1093#1086#1076#1077' '#1074' '#1089#1080#1089#1090#1077#1084#1091' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    TabOrder = 7
  end
  object ch2: TCheckBox
    Left = 24
    Top = 464
    Width = 209
    Height = 17
    Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1086#1076#1089#1090#1072#1074#1083#1103#1090#1100' '#1087#1072#1088#1086#1083#1100
    TabOrder = 8
  end
  object Memo2: TMemo
    Left = -100
    Top = 480
    Width = 41
    Height = 41
    TabOrder = 9
    WordWrap = False
  end
end
