object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 328
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TrackBar1: TTrackBar
    Left = 8
    Top = 60
    Width = 449
    Height = 37
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 103
    Width = 457
    Height = 82
    Caption = 'OPEN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 191
    Width = 193
    Height = 17
    Caption = #1042#1080#1076#1077#1086' '#1080#1083#1080' '#1074' Button1 '#1080#1083#1080' '#1074' Panel1'
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 211
    Width = 457
    Height = 82
    Caption = 'VIDEO'
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 280
    Top = 8
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 336
    Top = 8
  end
end
