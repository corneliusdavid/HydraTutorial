object SimpleAboutPlugin: TSimpleAboutPlugin
  Left = 250
  Top = 250
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'VisualPluginTHYVisualPlugin'
  ClientHeight = 213
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poScreenCenter
  Scaled = False
  OnClose = HYVisualPluginClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 161
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'About Hydra Plugin written in Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object btnOK: TBitBtn
    Left = 96
    Top = 152
    Width = 75
    Height = 25
    Kind = bkOK
    TabOrder = 0
    OnClick = btnOKClick
  end
end
