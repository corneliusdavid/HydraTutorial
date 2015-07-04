library AboutPluginModule;

uses
  SysUtils,
  Classes,
  udmAboutPluginModuleController in 'udmAboutPluginModuleController.pas' {AboutPluginModuleController: THYModuleController},
  ufrmSimpleAboutPlugin in 'ufrmSimpleAboutPlugin.pas' {SimpleAboutPlugin: THYVisualPlugin},
  uVersionedAboutIntf in '..\shared\uVersionedAboutIntf.pas',
  ufrmVersionedAboutPlugin in 'ufrmVersionedAboutPlugin.pas' {VersionedAboutPlugin: THYVisualPlugin};

{#HYDRAMODULE}
{$R *.res}

begin
end.
