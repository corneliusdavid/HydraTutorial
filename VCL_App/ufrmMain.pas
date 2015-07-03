unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ImgList, ActnList, Menus, StdCtrls, ComCtrls, ToolWin,
  uHYModuleManager;

type
  TfrmVCLApp = class(TForm)
    MainMenu1: TMainMenu;
    mnuFile: TMenuItem;
    itmFileExit: TMenuItem;
    mnuHelp: TMenuItem;
    itmHelpAbout: TMenuItem;
    ActionList1: TActionList;
    ImageList1: TImageList;
    actFileExit: TFileExit;
    actHelpAbout: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    HYModuleManager1: THYModuleManager;
    mnuPlugins: TMenuItem;
    actLoadPlugins: TAction;
    actUnloadPlugins: TAction;
    actShowPlugins: TAction;
    LoadPlugins1: TMenuItem;
    UnloadPlugins1: TMenuItem;
    N1: TMenuItem;
    ShowPlugins1: TMenuItem;
    dlgPluginList: TTaskDialog;
    procedure actHelpAboutExecute(Sender: TObject);
    procedure actLoadPluginsExecute(Sender: TObject);
    procedure actUnloadPluginsExecute(Sender: TObject);
    procedure actShowPluginsExecute(Sender: TObject);
  end;

var
  frmVCLApp: TfrmVCLApp;


implementation

{$R *.dfm}

uses
  uHYPluginDescriptors;

procedure TfrmVCLApp.actHelpAboutExecute(Sender: TObject);
begin
  ShowMessage('Standard VCL Demo App');
end;

procedure TfrmVCLApp.actLoadPluginsExecute(Sender: TObject);
begin
  HYModuleManager1.LoadModules(ExtractFilePath(Application.ExeName) + '*.dll');
end;

procedure TfrmVCLApp.actUnloadPluginsExecute(Sender: TObject);
begin
  HYModuleManager1.UnloadModules;
end;

procedure TfrmVCLApp.actShowPluginsExecute(Sender: TObject);

  function PluginTypeToStr(const PluginType: THYPluginType): string;
  begin
    case PluginType of
      ptNonVisual:
        Result := 'Non-Visual';
      ptVisual:
        Result := 'Visual';
      ptService:
        Result := 'Service';
      ptUnknown:
        Result := 'Unknown';
    end;
  end;

var
  i: Integer;
  PluginList: TStringList;
  ModuleList: TStringList;
begin
  PluginList := TStringList.Create;
  ModuleList := TStringList.Create;
  try
    for i := 0 to HYModuleManager1.ModuleCount - 1 do
      ModuleList.Add(ExtractFileName(HYModuleManager1.Modules[i].FileName));

    for i := 0 to HYModuleManager1.PluginDescriptorCount - 1 do begin
      PluginList.Add(Format('Name: %s - Version %d.%d (%s)', [HYModuleManager1.PluginDescriptors[i].Name,
                                                        HYModuleManager1.PluginDescriptors[i].MajorVersion,
                                                        HYModuleManager1.PluginDescriptors[i].MinorVersion,
                                                        PluginTypeToStr(HYModuleManager1.PluginDescriptors[i].PluginType)]));
      PluginList.Add('Description: ' + HYModuleManager1.PluginDescriptors[i].Description);
      PluginList.Add(EmptyStr);
    end;

    dlgPluginList.Text := Format('There are %d plugin(s) in %d module(s) loaded.',
                                 [PluginList.Count, ModuleList.Count]) +
                          PluginList.GetText;
    dlgPluginList.ExpandedText := ModuleList.GetText;
    dlgPluginList.Execute;
  finally
    ModuleList.Free;
    PluginList.Free;
  end;
end;

end.
