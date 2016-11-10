object fmAddEditEntry: TfmAddEditEntry
  Left = 225
  Top = 73
  BorderStyle = bsDialog
  ClientHeight = 615
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 192
    Width = 745
    Height = 385
  end
  object Bevel1: TBevel
    Left = 8
    Top = 48
    Width = 745
    Height = 137
  end
  object Label1: TLabel
    Left = 552
    Top = 8
    Width = 184
    Height = 20
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 16
    Top = 320
    Width = 225
    Height = 105
  end
  object Bevel4: TBevel
    Left = 16
    Top = 432
    Width = 225
    Height = 137
  end
  object Label2: TLabel
    Left = 32
    Top = 356
    Width = 95
    Height = 13
    Caption = #1055#1088#1086#1075#1088#1077#1089#1089' '#1088#1077#1084#1086#1085#1090#1072
  end
  object Label11: TLabel
    Left = 170
    Top = 532
    Width = 17
    Height = 13
    Caption = #1088#1091#1073
  end
  object Bevel5: TBevel
    Left = 248
    Top = 320
    Width = 497
    Height = 249
  end
  object Label12: TLabel
    Left = 408
    Top = 328
    Width = 159
    Height = 13
    Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1099#1093' '#1088#1072#1073#1086#1090
  end
  object Label3: TLabel
    Left = 40
    Top = 504
    Width = 150
    Height = 24
    Caption = #1042#1089#1077#1075#1086' '#1082' '#1086#1087#1083#1072#1090#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 440
    Width = 176
    Height = 20
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'  '#1088#1077#1084#1086#1085#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 184
    Top = 472
    Width = 17
    Height = 13
    Caption = #1088#1091#1073
  end
  object StringGrid1: TStringGrid
    Left = 248
    Top = 344
    Width = 489
    Height = 193
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goTabs]
    TabOrder = 25
    OnClick = StringGrid1Click
    OnEnter = StringGrid1Enter
    OnGetEditText = StringGrid1GetEditText
    OnKeyPress = StringGrid1KeyPress
    OnSelectCell = StringGrid1SelectCell
    OnSetEditText = StringGrid1SetEditText
    ColWidths = (
      64)
  end
  object btOk: TButton
    Left = 206
    Top = 586
    Width = 91
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = btOkClick
  end
  object btCancel: TButton
    Left = 454
    Top = 586
    Width = 91
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 16
    Width = 89
    Height = 21
    EditLabel.Width = 50
    EditLabel.Height = 13
    EditLabel.Caption = #8470' '#1079#1072#1082#1072#1079#1072
    TabOrder = 2
  end
  object LabeledEdit2: TLabeledEdit
    Left = 120
    Top = 16
    Width = 105
    Height = 21
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
    TabOrder = 3
  end
  object LabeledEdit3: TLabeledEdit
    Left = 16
    Top = 72
    Width = 729
    Height = 21
    EditLabel.Width = 83
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1048#1054' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
    TabOrder = 4
  end
  object LabeledEdit4: TLabeledEdit
    Left = 16
    Top = 112
    Width = 729
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 13
    EditLabel.Caption = #1040#1076#1088#1077#1089' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
    TabOrder = 5
  end
  object LabeledEdit5: TLabeledEdit
    Left = 16
    Top = 152
    Width = 145
    Height = 21
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = #8470' '#1090#1077#1083#1077#1092#1086#1085#1072
    TabOrder = 6
  end
  object LabeledEdit6: TLabeledEdit
    Left = 16
    Top = 216
    Width = 177
    Height = 21
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1079#1076#1077#1083#1080#1077
    TabOrder = 7
  end
  object LabeledEdit7: TLabeledEdit
    Left = 216
    Top = 216
    Width = 217
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1080#1088#1084#1072
    TabOrder = 8
  end
  object LabeledEdit8: TLabeledEdit
    Left = 448
    Top = 216
    Width = 297
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = #1052#1086#1076#1077#1083#1100
    TabOrder = 9
  end
  object LabeledEdit9: TLabeledEdit
    Left = 16
    Top = 256
    Width = 113
    Height = 21
    EditLabel.Width = 11
    EditLabel.Height = 13
    EditLabel.Caption = #8470
    TabOrder = 10
  end
  object LabeledEdit10: TLabeledEdit
    Left = 320
    Top = 256
    Width = 425
    Height = 21
    EditLabel.Width = 74
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1103
    TabOrder = 11
    Text = #1053#1048#1063#1045#1043#1054
  end
  object LabeledEdit11: TLabeledEdit
    Left = 16
    Top = 296
    Width = 729
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1077#1092#1077#1082#1090#1099
    TabOrder = 12
  end
  object CheckBox1: TCheckBox
    Left = 80
    Top = 328
    Width = 97
    Height = 17
    Caption = #1056#1077#1084#1086#1085#1090' '#1080#1076#1077#1090
    TabOrder = 13
  end
  object TrackBar1: TTrackBar
    Left = 24
    Top = 376
    Width = 193
    Height = 25
    Max = 100
    TabOrder = 14
    ThumbLength = 23
    OnChange = TrackBar1Change
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 400
    Width = 193
    Height = 16
    TabOrder = 15
  end
  object qq: TButton
    Left = 224
    Top = 16
    Width = 17
    Height = 17
    Caption = '+'
    TabOrder = 16
    OnClick = qqClick
  end
  object MonthCalendar1: TMonthCalendar
    Left = 224
    Top = 32
    Width = 161
    Height = 153
    Date = 40491.052012615740000000
    TabOrder = 17
    Visible = False
    OnClick = MonthCalendar1Click
  end
  object Edit4: TEdit
    Left = 64
    Top = 528
    Width = 97
    Height = 21
    Color = clBtnFace
    TabOrder = 18
    Text = '0'
  end
  object CheckBox2: TCheckBox
    Left = 256
    Top = 544
    Width = 105
    Height = 17
    Caption = #1053#1091#1078#1085#1099' '#1079#1072#1087#1095#1072#1089#1090#1080
    TabOrder = 19
  end
  object Button1: TButton
    Left = 362
    Top = 541
    Width = 59
    Height = 25
    Caption = #1057#1087#1080#1089#1086#1082
    TabOrder = 20
    OnClick = Button1Click
  end
  object CheckBox3: TCheckBox
    Left = 450
    Top = 544
    Width = 137
    Height = 17
    Caption = #1047#1072#1087#1095#1072#1089#1090#1080' '#1091#1078#1077' '#1074' '#1087#1091#1090#1080')))'
    TabOrder = 21
  end
  object Panel1: TPanel
    Left = 360
    Top = 378
    Width = 241
    Height = 161
    BevelInner = bvSpace
    BorderStyle = bsSingle
    TabOrder = 22
    Visible = False
    object Memo2: TMemo
      Left = 8
      Top = 8
      Width = 225
      Height = 121
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Button2: TButton
      Left = 80
      Top = 132
      Width = 89
      Height = 19
      Caption = #1054#1050
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Button3: TButton
    Left = 152
    Top = 256
    Width = 153
    Height = 25
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1085#1077#1096#1085#1077#1075#1086' '#1074#1080#1076#1072
    TabOrder = 23
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 472
    Width = 121
    Height = 21
    TabOrder = 26
  end
  object Panel2: TPanel
    Left = 152
    Top = 280
    Width = 425
    Height = 297
    BorderStyle = bsSingle
    TabOrder = 24
    Visible = False
    object LabeledEdit12: TLabeledEdit
      Left = 8
      Top = 24
      Width = 361
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = #1042#1077#1088#1093
      TabOrder = 0
    end
    object LabeledEdit13: TLabeledEdit
      Left = 8
      Top = 64
      Width = 361
      Height = 21
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1080#1079
      TabOrder = 1
    end
    object LabeledEdit14: TLabeledEdit
      Left = 8
      Top = 120
      Width = 361
      Height = 21
      EditLabel.Width = 82
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1088#1072#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
      TabOrder = 2
    end
    object LabeledEdit15: TLabeledEdit
      Left = 8
      Top = 168
      Width = 361
      Height = 21
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = #1051#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
      TabOrder = 3
    end
    object LabeledEdit16: TLabeledEdit
      Left = 8
      Top = 216
      Width = 361
      Height = 21
      EditLabel.Width = 94
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1077#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1088#1086#1085#1072
      TabOrder = 4
    end
    object LabeledEdit17: TLabeledEdit
      Left = 8
      Top = 264
      Width = 361
      Height = 21
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = #1047#1072#1076#1085#1103#1103' '#1089#1090#1086#1088#1086#1085#1072
      TabOrder = 5
    end
    object Button4: TButton
      Left = 376
      Top = 120
      Width = 41
      Height = 57
      Caption = #1054#1050
      TabOrder = 6
      OnClick = Button4Click
    end
  end
end
