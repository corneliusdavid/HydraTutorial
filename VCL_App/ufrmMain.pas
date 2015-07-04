unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ImgList, ActnList, Menus, StdCtrls, ComCtrls, ToolWin,
  uHYModuleManager, uHYIntf, ExtCtrls;

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
    actHelpAboutPluginModal: TAction;
    AboutfromPlugin1: TMenuItem;
    pnlPlugins: TPanel;
    actHelpAboutPluginNonModal: TAction;
    Aboutfromapluginnonmodal1: TMenuItem;
    actHelpAboutVersionedPluginModal: TAction;
    VersionedAboutfromaplugin1: TMenuItem;
    procedure actHelpAboutExecute(Sender: TObject);
    procedure actLoadPluginsExecute(Sender: TObject);
    procedure actUnloadPluginsExecute(Sender: TObject);
    procedure actShowPluginsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HYModuleManager1AfterLoadModule(Sender: THYModuleManager;
      aModule: THYModule);
    procedure actHelpAboutPluginModalExecute(Sender: TObject);
    procedure actHelpAboutPluginNonModalExecute(Sender: TObject);
    procedure HYModuleManager1BeforeUnloadModule(Sender: THYModuleManager;
      aModule: THYModule);
    procedure actHelpAboutVersionedPluginModalExecute(Sender: TObject);
  private
    FSimpleAboutPlugin: IHYVisualPlugin;
    FVersionedAboutPlugin: IHYVisualPlugin;
  end;

var
  frmVCLApp: TfrmVCLApp;


implementation

{$R *.dfm}

uses
  uHYPluginDescriptors, uVersionedAboutIntf;

procedure TfrmVCLApp.actHelpAboutExecute(Sender: TObject);
begin
  ShowMessage('Standard VCL Demo App');
end;

procedure TfrmVCLApp.actHelpAboutPluginModalExecute(Sender: TObject);
begin
  if Assigned(FSimpleAboutPlugin) then
    FSimpleAboutPlugin.ShowWindowed
  else
    ShowMessage('About plugin not loaded.');
end;

procedure TfrmVCLApp.actHelpAboutPluginNonModalExecute(Sender: TObject);
begin
  if Assigned(FSimpleAboutPlugin) then
    FSimpleAboutPlugin.ShowParented(pnlPlugins)
  else
    ShowMessage('About plugin not loaded.');
end;

procedure TfrmVCLApp.actHelpAboutVersionedPluginModalExecute(Sender: TObject);
begin
  if Assigned(FVersionedAboutPlugin) then begin
    (FVersionedAboutPlugin as IVersionedAboutInterface).ApplicationName := Application.Title;
    (FVersionedAboutPlugin as IVersionedAboutInterface).MajorVersion := 1;
    (FVersionedAboutPlugin as IVersionedAboutInterface).MinorVersion := 2;
    (FVersionedAboutPlugin as IVersionedAboutInterface).Copyright := 'Copyright 2015';
    FVersionedAboutPlugin.ShowWindowed;
  end else
    ShowMessage('Versioned About plugin not loaded.');
end;

procedure TfrmVCLApp.actLoadPluginsExecute(Sender: TObject);
begin
  HYModuleManager1.LoadModules(ExtractFilePath(Application.ExeName) + '*.dll');
end;

procedure TfrmVCLApp.actUnloadPluginsExecute(Sender: TObject);
begin
  HYModuleManager1.UnloadModules;
end;

procedure TfrmVCLApp.FormCreate(Sender: TObject);
begin
  FSimpleAboutPlugin := nil;
  FVersionedAboutPlugin := nil;
end;

procedure TfrmVCLApp.HYModuleManager1AfterLoadModule(Sender: THYModuleManager; aModule: THYModule);
var
  i: Integer;
  PluginName: string;
begin
  for i := 0 to aModule.ModuleController.FactoryCount - 1 do begin
    PluginName := aModule.ModuleController.Factories[i].Descriptor.Name;

    if (aModule.ModuleController.Factories[i].Descriptor.PluginType = ptVisual) and
       SameText('SimpleAboutPlugin', PluginName) then
      HYModuleManager1.CreateVisualPlugin(PluginName, FSimpleAboutPlugin)
    else if SameText('VersionedAboutPlugin', PluginName) then
      HYModuleManager1.CreateVisualPlugin(PluginName, FVersionedAboutPlugin);
  end;
end;

procedure TfrmVCLApp.HYModuleManager1BeforeUnloadModule(
  Sender: THYModuleManager; aModule: THYModule);
var
  i: Integer;
begin
  for i := 0 to aModule.ModuleController.FactoryCount - 1 do
    if (aModule.ModuleController.Factories[i].Descriptor.PluginType = ptVisual) then
      if SameText('SimpleAboutPlugin', aModule.ModuleController.Factories[i].Descriptor.Name) and
         Assigned(FSimpleAboutPlugin) then
        FSimpleAboutPlugin := nil
      else if SameText('VersionedAboutPlugin', aModule.ModuleController.Factories[i].Descriptor.Name) and
              Assigned(FVersionedAboutPlugin) then
        FVersionedAboutPlugin := nil;
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
    // build displayable list of module names (DLLs)
    for i := 0 to HYModuleManager1.ModuleCount - 1 do
      ModuleList.Add(ExtractFileName(HYModuleManager1.Modules[i].FileName));

    // build displayable list of plugins
    for i := 0 to HYModuleManager1.PluginDescriptorCount - 1 do begin
      PluginList.Add(Format('Name: %s - Version %d.%d (%s)', [HYModuleManager1.PluginDescriptors[i].Name,
                                                        HYModuleManager1.PluginDescriptors[i].MajorVersion,
                                                        HYModuleManager1.PluginDescriptors[i].MinorVersion,
                                                        PluginTypeToStr(HYModuleManager1.PluginDescriptors[i].PluginType)]));
      PluginList.Add('Description: ' + HYModuleManager1.PluginDescriptors[i].Description);
      PluginList.Add(EmptyStr);
    end;

    dlgPluginList.Title := Format('There are %d plugin(s) in %d module(s) loaded.',
                                 [HYModuleManager1.PluginDescriptorCount, ModuleList.Count]);
    dlgPluginList.Text := PluginList.GetText;
    dlgPluginList.ExpandedText := ModuleList.GetText;
    dlgPluginList.Execute;
  finally
    ModuleList.Free;
    PluginList.Free;
  end;
end;

end.
