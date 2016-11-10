object fmMain: TfmMain
  Left = 245
  Top = 102
  Width = 891
  Height = 599
  Caption = #1058#1045#1061#1062#1045#1053#1058#1056
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object stbMain: TStatusBar
    Left = 0
    Top = 534
    Width = 883
    Height = 19
    AutoHint = True
    Panels = <>
    SimplePanel = True
  end
  object lvMain: TListView
    Left = 0
    Top = 57
    Width = 883
    Height = 477
    Align = alClient
    Columns = <
      item
        Caption = #8470' '#1079#1072#1082#1072#1079#1072
        Width = 65
      end
      item
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1074' '#1088#1077#1084#1086#1085#1090
        Width = 130
      end
      item
        Caption = #1047#1072#1082#1072#1079#1095#1080#1082
        Width = 200
      end
      item
        Caption = #1040#1076#1088#1077#1089
        Width = 250
      end
      item
        Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 100
      end
      item
        Caption = #1048#1079#1076#1077#1083#1080#1077
        Width = 200
      end
      item
        Caption = #1060#1080#1088#1084#1072
        Width = 120
      end
      item
        Caption = #1052#1086#1076#1077#1083#1100
        Width = 70
      end
      item
        Caption = #1053#1086#1084#1077#1088
        Width = 70
      end
      item
        Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1103
        Width = 200
      end
      item
        Caption = #1044#1077#1092#1077#1082#1090#1099
        Width = 200
      end
      item
        Caption = #1056#1077#1084#1086#1085#1090' '#1080#1076#1077#1090
        Width = 100
      end
      item
        Caption = #1055#1088#1086#1075#1088#1077#1089#1089' '#1088#1077#1084#1086#1085#1090#1072' (%)'
        Width = 150
      end
      item
        Caption = #1048#1090#1086#1075#1086' ('#1088#1091#1073')'
      end
      item
        Caption = #1058#1088#1077#1073#1091#1102#1090#1089#1103' '#1079#1072#1087#1095#1072#1089#1090#1080
        Width = 100
      end
      item
        Caption = #1057#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1091#1077#1084#1099#1093'  '#1079#1072#1087#1095#1072#1089#1090#1077#1081
        Width = 120
      end
      item
        Caption = #1047#1072#1087#1095#1072#1089#1090#1080' '#1074' '#1087#1091#1090#1080')))'
        Width = 100
      end
      item
        Caption = #1042#1077#1088#1093
      end
      item
        Caption = #1053#1080#1079
      end
      item
        Caption = #1055#1088#1072#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
      end
      item
        Caption = #1051#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
      end
      item
        Caption = #1055#1077#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1088#1086#1085#1072
      end
      item
        Caption = #1047#1072#1076#1085#1103#1103' '#1089#1090#1086#1088#1086#1085#1072
      end
      item
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1077#1084#1086#1085#1090#1072
      end>
    ColumnClick = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FlatScrollBars = True
    GridLines = True
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    ViewStyle = vsReport
    OnCustomDrawItem = lvMainCustomDrawItem
    OnDblClick = lvMainDblClick
    OnSelectItem = lvMainSelectItem
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 883
    Height = 57
    Align = alTop
    TabOrder = 2
    object tbtCreate: TSpeedButton
      Tag = 1
      Left = 0
      Top = 0
      Width = 55
      Height = 55
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1042#1057#1070' '#1073#1072#1079#1091
      OnClick = actCreateExecute
    end
    object tbtOpen: TSpeedButton
      Tag = 2
      Left = 56
      Top = 0
      Width = 55
      Height = 55
      Hint = #1042#1086#1081#1090#1080' '#1074' '#1076#1088#1091#1075#1091#1102' '#1073#1072#1079#1091
      OnClick = actOpenExecute
    end
    object tbtAddNewEntry: TSpeedButton
      Tag = 3
      Left = 120
      Top = 0
      Width = 55
      Height = 55
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OnClick = actAddNewEntryExecute
    end
    object tbtEditEntry: TSpeedButton
      Tag = 4
      Left = 176
      Top = 0
      Width = 55
      Height = 55
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1091#1102' '#1079#1072#1087#1080#1089#1100
      OnClick = actEditEntryExecute
    end
    object tbtDeleteEntry: TSpeedButton
      Tag = 5
      Left = 232
      Top = 0
      Width = 55
      Height = 55
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1091#1102' '#1079#1072#1087#1080#1089#1100
      OnClick = actDeleteEntryExecute
    end
    object tbtSearch: TSpeedButton
      Tag = 6
      Left = 288
      Top = 0
      Width = 55
      Height = 55
      Hint = #1055#1086#1080#1089#1082' '#1074' '#1073#1072#1079#1077
      OnClick = actSearchExecute
    end
    object SpeedButton6: TSpeedButton
      Tag = 7
      Left = 352
      Top = 0
      Width = 55
      Height = 55
      Hint = #1055#1077#1095#1072#1090#1100' '#1082#1074#1080#1090#1072#1085#1094#1080#1081
      OnClick = ToolButton2Click
    end
    object SpeedButton1: TSpeedButton
      Tag = 8
      Left = 416
      Top = 0
      Width = 55
      Height = 55
      Hint = #1053#1072#1087#1077#1095#1072#1090#1072#1090#1100' '#1055#1059#1057#1058#1067#1045' '#1082#1074#1080#1090#1072#1085#1094#1080#1080
      OnClick = SpeedButton1Click
    end
    object tbMain: TToolBar
      Left = 1
      Top = 1
      Width = 881
      Height = 0
      AutoSize = True
      ButtonHeight = 32
      ButtonWidth = 32
      EdgeBorders = []
      Flat = True
      TabOrder = 0
      object tbtSeparator1: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbtSeparator1'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object tbtSeparator2: TToolButton
        Left = 8
        Top = 0
        Width = 8
        Caption = 'tbtSeparator2'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 16
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 6
        Style = tbsSeparator
      end
    end
    object Panel2: TPanel
      Left = 112
      Top = 0
      Width = 9
      Height = 55
      BorderStyle = bsSingle
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 344
      Top = 0
      Width = 9
      Height = 55
      BorderStyle = bsSingle
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 408
      Top = 0
      Width = 9
      Height = 55
      BorderStyle = bsSingle
      TabOrder = 3
    end
  end
  object mmMain: TMainMenu
    Left = 16
    Top = 96
    object miFile: TMenuItem
      Caption = '&'#1060#1072#1081#1083
      object miCreate: TMenuItem
        Action = actCreate
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093'...'
        Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1073#1072#1079#1091
      end
      object miOpen: TMenuItem
        Action = actOpen
      end
      object miSeparator1: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Caption = #1042'&'#1099#1093#1086#1076
        Hint = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' '#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1086#1081
        ShortCut = 32856
        OnClick = miExitClick
      end
    end
    object miEdit: TMenuItem
      Caption = '&'#1055#1088#1072#1074#1082#1072
      object miAddNewEntry: TMenuItem
        Action = actAddNewEntry
      end
      object miEditEntry: TMenuItem
        Action = actEditEntry
      end
      object miDeleteEntry: TMenuItem
        Action = actDeleteEntry
      end
      object miSeparator2: TMenuItem
        Caption = '-'
      end
      object miSearch: TMenuItem
        Action = actSearch
      end
    end
    object N1: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
      object N4: TMenuItem
        Caption = #1040#1088#1093#1080#1074#1080#1088#1086#1074#1072#1085#1080#1077' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1079#1072#1072#1088#1093#1080#1074#1080#1088#1086#1074#1072#1085#1085#1091#1102' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
        OnClick = N5Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = #1057#1076#1077#1083#1072#1090#1100' '#1086#1090#1095#1077#1090
        OnClick = N8Click
      end
    end
    object N3: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N2: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
        Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1042#1072#1096#1080#1093' '#1083#1080#1095#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
        OnClick = N2Click
      end
    end
    object miHelp: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object miAbout: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
        Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077', '#1077#1077' '#1074#1077#1088#1089#1080#1102' '#1080' copyright'
        OnClick = miAboutClick
      end
    end
  end
  object alMain: TActionList
    Left = 48
    Top = 96
    object actAddNewEntry: TAction
      Category = 'Edit'
      Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100'...'
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100'|'#1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100' '#1074' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 0
      ShortCut = 45
      OnExecute = actAddNewEntryExecute
    end
    object actIndexFile: TAction
      Category = 'View'
      AutoCheck = True
      Caption = #1048#1085#1076#1077#1082#1089#1085#1099#1081' &'#1092#1072#1081#1083
      Hint = #1048#1085#1076#1077#1082#1089#1085#1099#1081' '#1092#1072#1081#1083'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1083#1080' '#1089#1087#1088#1103#1090#1072#1090#1100' '#1086#1082#1085#1086' "'#1048#1085#1076#1077#1082#1089#1085#1099#1081' '#1092#1072#1081#1083'"'
      ImageIndex = 6
      ShortCut = 16457
    end
    object actEditEntry: TAction
      Category = 'Edit'
      Caption = '&'#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100'...'
      Enabled = False
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100'|'#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1091#1102' '#1074' '#1089#1087#1080#1089#1082#1077' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 1
      ShortCut = 16453
      OnExecute = actEditEntryExecute
    end
    object actDeleteEntry: TAction
      Category = 'Edit'
      Caption = '&'#1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'|'#1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1091#1102' '#1074' '#1089#1087#1080#1089#1082#1077' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 2
      ShortCut = 46
      OnExecute = actDeleteEntryExecute
    end
    object actCreate: TAction
      Category = 'File'
      Caption = #1057#1086#1079#1076'&'#1072#1090#1100'...'
      Hint = #1057#1086#1079#1076#1072#1090#1100'|'#1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1073#1072#1079#1091
      ImageIndex = 3
      ShortCut = 16462
      OnExecute = actCreateExecute
    end
    object actOpen: TAction
      Category = 'File'
      Caption = '&'#1054#1090#1082#1088#1099#1090#1100'...'
      Hint = #1054#1090#1082#1088#1099#1090#1100'|'#1054#1090#1082#1088#1099#1090#1100' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1091#1102' '#1073#1072#1079#1091
      ImageIndex = 4
      ShortCut = 16463
      OnExecute = actOpenExecute
    end
    object actSearch: TAction
      Category = 'Edit'
      Caption = '&'#1053#1072#1081#1090#1080'...'
      Hint = #1053#1072#1081#1090#1080'|'#1055#1088#1086#1080#1079#1074#1077#1089#1090#1080' '#1087#1086#1080#1089#1082' '#1076#1072#1085#1085#1099#1093' '#1074' '#1073#1072#1079#1077
      ImageIndex = 5
      ShortCut = 16454
      OnExecute = actSearchExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 96
    object N6: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OnClick = N6Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 112
    Top = 96
  end
end
