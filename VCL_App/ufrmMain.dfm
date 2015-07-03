object frmVCLApp: TfrmVCLApp
  Left = 0
  Top = 0
  Caption = 'VCL App'
  ClientHeight = 224
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 325
    Height = 24
    AutoSize = True
    ButtonWidth = 66
    Caption = 'ToolBar1'
    Flat = False
    Images = ImageList1
    List = True
    ShowCaptions = True
    TabOrder = 0
    Wrapable = False
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = actFileExit
      AutoSize = True
    end
    object ToolButton4: TToolButton
      Left = 55
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 63
      Top = 0
      Action = actHelpAbout
      AutoSize = True
    end
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 48
    Top = 48
    object mnuFile: TMenuItem
      Caption = '&File'
      object itmFileExit: TMenuItem
        Action = actFileExit
      end
    end
    object mnuPlugins: TMenuItem
      Caption = '&Plugins'
      object LoadPlugins1: TMenuItem
        Action = actLoadPlugins
      end
      object UnloadPlugins1: TMenuItem
        Action = actUnloadPlugins
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ShowPlugins1: TMenuItem
        Action = actShowPlugins
      end
    end
    object mnuHelp: TMenuItem
      Caption = '&Help'
      object itmHelpAbout: TMenuItem
        Action = actHelpAbout
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 48
    Top = 96
    object actFileExit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 0
    end
    object actHelpAbout: TAction
      Category = 'Help'
      Caption = '&About'
      Hint = 'About|Information about this program'
      ImageIndex = 1
      OnExecute = actHelpAboutExecute
    end
    object actLoadPlugins: TAction
      Caption = '&Load Plugins'
      OnExecute = actLoadPluginsExecute
    end
    object actUnloadPlugins: TAction
      Caption = '&Unload Plugins'
      OnExecute = actUnloadPluginsExecute
    end
    object actShowPlugins: TAction
      Caption = '&Show Plugins'
      OnExecute = actShowPluginsExecute
    end
  end
  object ImageList1: TImageList
    Left = 48
    Top = 152
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEC7C000A6846200AB6E3200B76A1B00BA6A1800B16D2800A57A4E00B8AB
      9F00FCFCFC000000000000000000000000000000000000000000000000000000
      0000D7E3EB0090C5D50034B8CB0007CAD80007CAD80034B8CB0090C5D500D0DE
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFAFA00A38F
      7A00BC610500F87F0200FF800000FF7F0000FF800000FF7E0000FF810000DE70
      01009B724800DFDEDC0000000000000000000000000000000000DFE9EF0090C9
      D80000E9EF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000E9
      EF0090C9D800DFE9EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB009C7D5D00DE6F
      0000FD870800C9710E00F1931B00FF8F0D00FF840500FF981400DB831800DC77
      0A00FD840400A3642700DCDBDA000000000000000000DFE9EF0062BDCF008BFF
      FF0000FFFF0023929200306F6F002F6F6F002F6F6F002F6E6E002E6E6E0000FF
      FF008BFFFF0062BDCF00DFE9EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2918100DB6D0100FF8B
      0900C0690D009C511700AD6C2200F3B13500FFB42F00D99F3400A05A1C00A355
      1300DE7A0A00FF86040099693A00F4F4F4000000000090C9D8008BFEFF0000FD
      FF0000FDFF00327171004B4B4B00515151004F4F4F004B4B4B004343430000FD
      FF0000FDFF008BFEFF0090C9D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2CFCC00B8600700FB860700BC67
      0E00A4571900AF5E1F00A7581B00B26D1F00CE862100A35D1D00AD5B1C00AC5D
      1E00A2561300D9760A00EB780200AA9B8D00D3E0E90000E2EF0000F8FF0000F8
      FF0000F8FF000CD4DB002683860068686800666666003C6A6C0010C9CF0000F8
      FF0000F8FF0000F8FF0000E2EF00CDDCE6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1856A00F47C0100F68C0F00B75F
      1000A95C1F00AD5D1D00AE5E1D00A8591B00A1531700AD5C1D00AD5D1D00AC5D
      1E00A7591C00CC700F00FF8E0900A8703A0090C3D50000F2FF0000F2FF0000F2
      FF0000F2FF0000F2FF001F979E007F7F7F007D7D7D003E7A7E0000F2FF0000F2
      FF0000F2FF0000F2FF0000F2FF0090C3D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56D3400FE7F0000FF981600FB89
      0B00C7660F00AA5C1E00AD5D1D00AD5D1D00AE5D1E00AD5D1D00AC5D1E00AC5C
      1B00DA6E0800FF961400FF8C0900BA6C1E0034B0CB0000ECFF0000ECFF0000EC
      FF0000ECFF0000ECFF001F959E009595950094949400447F830000ECFF0000EC
      FF0000ECFF0000ECFF0000ECFF0034B0CB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0651A00FF810000FF8B0B00FF8C
      0C00FE830200C0651300A95B1E00AD5D1D00AD5D1D00AD5D1D00AA5B1C00DA70
      0800FF860300FF8D0C00FF840200C46D160007B7D80000E6FF0000E6FF0000E6
      FF0000E6FF0000E6FF001F929E00ADADAD00ABABAB004983890000E6FF0000E6
      FF0000E6FF0000E6FF0000E6FF0007B7D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0661B00FF800000FE810200FFA6
      2300F2941D00B7611700AB5C1E00AD5D1D00AD5D1D00AD5D1D00AB5B1D00CF6E
      1100FF9C1A00FF8F0D00FF800000C26C160007B4D80000E1FF0000E1FF0000E1
      FF0000E1FF000CC2DB00267B8600C4C4C400C2C2C2004F878F0000E1FF0000E1
      FF0000E1FF0000E1FF0000E1FF0007B4D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A76F3600FA7C0000FF8A0900E89F
      2D00B3631C00AA5B1D00AD5D1D00AD5D1D00AD5D1D00AD5D1D00AD5D1D00AA5A
      1D00C6711A00F7991D00FF840100B86C200034A9CB0000DBFF0000DBFF0000DB
      FF0000DBFF004D838C004D838C004D838C004D838C004D838C0000DBFF0000DB
      FF0000DBFF0000DBFF0000DBFF0034A9CB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3886D00F37A0100EF840C00A056
      1200AA5A1E00AE5D1D00AE5E1E00A75B1D00A45C1B00AA5B1E00AE5D1D00AE5E
      1E00A1551C00BB670F00FF8A0600A8723D0090C0D50000D5FF0000D5FF0000D5
      FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5
      FF0000D5FF0000D5FF0000D5FF0090C0D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D2CF00BD620900FF910E00CF74
      0E00A0531300AD5E2000A4571B00C6690D00E9800A00AE5A1100A85A1F00A85A
      1D00A6560D00E9871000EF7D0600AA9D8F00B9CEDC0000BEEF0000CFFF0000CF
      FF0000CFFF0000CFFF0004C5F300307180003A616A001B8FAA0000CFFF0000CF
      FF0000CFFF0000CFFF0000BEEF00DAE5EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3938300E2720200FF9C
      1500D0770F00994B0E00C3610700FD931100FFA01B00F07F0500AC540B00A354
      0C00EE8F1500FF910D009C6A3900F5F5F5000000000090C2D8008BE7FF0000CA
      FF0000CAFF0000CAFF00327E9200898989008B8B8B005A676A0000CAFF0000CA
      FF0000CAFF008BE7FF0090C2D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB009D7D5E00E574
      0200FF961300E4962600FDCB5300FFEB7200FFEE7600FFDE6200F0B23E00F091
      1800FF8E0C00AA672600DAD9D8000000000000000000DFE9EF0062AFCF008BE4
      FF0000C3FF0000C3FF0037809600D6D6D600D8D8D800717D810000C3FF0000C3
      FF008BE4FF0062AFCF00DFE9EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00A892
      7C00C5650700FF941400FFB33200FFBE3D00FFC44500FFBC3D00FFAB2900E479
      0700A1734900E0DEDC0000000000000000000000000000000000DFE9EF0090C1
      D80000B0EF0000BEFF0008AEE7004E8A9E005E8E9E001396C20000BEFF0000B0
      EF0090C1D800DFE9EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0CBC500A7866700AE6F3700B8682200B8601200AF642400A7784F00BCAF
      A400FCFCFC000000000000000000000000000000000000000000000000000000
      0000EEF3F60090BED500349FCB00079ED800079ED800349FCB0090BED500EEF3
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F007F00F00000000C003C00300000000
      8001800100000000800080010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080008001000000008001800100000000
      C003C00300000000F007F00F0000000000000000000000000000000000000000
      000000000000}
  end
  object HYModuleManager1: THYModuleManager
    AutoLoad = False
    EnforceSecurity = False
    ResolveInterfacesToOwner = True
    Left = 160
    Top = 64
  end
  object dlgPluginList: TTaskDialog
    Buttons = <>
    Caption = 'Hydra Plugins'
    CommonButtons = [tcbClose]
    DefaultButton = tcbClose
    ExpandButtonCaption = 'Show Modules'
    Flags = [tfPositionRelativeToWindow]
    RadioButtons = <>
    Text = '0 Plugins'
    Left = 192
    Top = 144
  end
end
