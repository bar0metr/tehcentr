object Form3: TForm3
  Left = 166
  Top = 110
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1077#1095#1072#1090#1100' '#1082#1074#1080#1090#1072#1085#1094#1080#1081
  ClientHeight = 556
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 232
    Top = 8
    Width = 305
    Height = 113
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 33
    Width = 385
    Height = 523
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 33
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 728
      Top = 4
      Width = 59
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object StringGrid1: TStringGrid
    Left = -5000
    Top = 208
    Width = 320
    Height = 120
    TabOrder = 2
  end
  object RichEdit2: TRichEdit
    Left = 384
    Top = 32
    Width = 409
    Height = 523
    Lines.Strings = (
      'RichEdit2')
    ScrollBars = ssBoth
    TabOrder = 4
    WordWrap = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 32
    Width = 793
    Height = 529
    Caption = #1060#1054#1056#1052#1048#1056#1054#1042#1040#1053#1048#1045' '#1050#1042#1048#1058#1040#1053#1062#1048#1049','
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Bevel1: TBevel
      Left = 120
      Top = 216
      Width = 553
      Height = 121
      Shape = bsFrame
    end
    object Label1: TLabel
      Left = 312
      Top = 288
      Width = 194
      Height = 37
      Caption = #1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -33
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 32
    Top = 40
  end
end
