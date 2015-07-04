library AboutPluginModule;

uses
  SysUtils,
  Classes,
  udmAboutPluginModuleController in 'udmAboutPluginModuleController.pas' {AboutPluginModuleController: THYModuleController},
  ufrmSimpleAboutPlugin in 'ufrmSimpleAboutPlugin.pas' {SimpleAboutPlugin: THYVisualPlugin},
  uVersionedAboutIntf in '..\shared\uVersionedAboutIntf.pas';

{#HYDRAMODULE}
{$R *.res}

begin
end.
