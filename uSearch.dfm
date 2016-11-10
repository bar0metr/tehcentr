object fmSearch: TfmSearch
  Left = 194
  Top = 156
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082
  ClientHeight = 478
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 112
    Width = 641
    Height = 65
  end
  object Bevel1: TBevel
    Left = 0
    Top = 6
    Width = 641
    Height = 97
  end
  object laResult: TLabel
    Left = 8
    Top = 192
    Width = 55
    Height = 13
    Caption = #1056#1077'&'#1079#1091#1083#1100#1090#1072#1090':'
  end
  object btGo: TButton
    Left = 416
    Top = 182
    Width = 121
    Height = 25
    Caption = #1048#1089'&'#1082#1072#1090#1100
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btGoClick
  end
  object lvResult: TListView
    Left = 8
    Top = 208
    Width = 625
    Height = 263
    Columns = <
      item
        Caption = #8470' '#1079#1072#1082#1072#1079#1072
        Width = 81
      end
      item
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1074' '#1088#1077#1084#1086#1085#1090
        Width = 130
      end
      item
        Caption = #1047#1072#1082#1072#1079#1095#1080#1082
        Width = 150
      end
      item
        Caption = #1040#1076#1088#1077#1089
        Width = 150
      end
      item
        Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 70
      end
      item
        Caption = #1048#1079#1076#1077#1083#1080#1077
        Width = 70
      end
      item
        Caption = #1060#1080#1088#1084#1072
        Width = 70
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
        Width = 120
      end
      item
        Caption = #1044#1077#1092#1077#1082#1090#1099
        Width = 120
      end>
    ColumnClick = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
    OnDblClick = lvResultDblClick
  end
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
    TabOrder = 2
  end
  object LabeledEdit2: TLabeledEdit
    Left = 152
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
    TabOrder = 3
  end
  object LabeledEdit3: TLabeledEdit
    Left = 296
    Top = 24
    Width = 337
    Height = 21
    EditLabel.Width = 83
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1048#1054' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
    TabOrder = 4
  end
  object LabeledEdit4: TLabeledEdit
    Left = 8
    Top = 72
    Width = 481
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = #1040#1076#1088#1077#1089
    TabOrder = 5
  end
  object LabeledEdit5: TLabeledEdit
    Left = 512
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
    TabOrder = 6
  end
  object LabeledEdit6: TLabeledEdit
    Left = 8
    Top = 136
    Width = 193
    Height = 21
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1079#1076#1077#1083#1080#1077
    TabOrder = 7
  end
  object LabeledEdit7: TLabeledEdit
    Left = 224
    Top = 136
    Width = 121
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1080#1088#1084#1072
    TabOrder = 8
  end
  object LabeledEdit8: TLabeledEdit
    Left = 368
    Top = 136
    Width = 121
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = #1052#1086#1076#1077#1083#1100
    TabOrder = 9
  end
  object LabeledEdit9: TLabeledEdit
    Left = 512
    Top = 136
    Width = 121
    Height = 21
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1086#1084#1077#1088
    TabOrder = 10
  end
  object Button1: TButton
    Left = 560
    Top = 182
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button1Click
  end
end
