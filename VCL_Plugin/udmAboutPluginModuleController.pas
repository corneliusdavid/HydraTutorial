unit udmAboutPluginModuleController;

interface

uses
  {vcl:} SysUtils, Classes, 
  {Hydra:} uHYModuleController, uHYIntf, uHYCrossPlatformInterfaces;

type
  TAboutPluginModuleController = class(THYModuleController)
  private
  public
  end;

var
  AboutPluginModuleController : TAboutPluginModuleController;

implementation

uses
  {Hydra:} uHYRes;

{$R *.dfm}

procedure HYGetCrossPlatformModule(out result: IHYCrossPlatformModule); stdcall;
begin
  result := AboutPluginModuleController as IHYCrossPlatformModule;
end;

function HYGetModuleController : THYModuleController;
begin
  result := AboutPluginModuleController;
end;

exports
  HYGetCrossPlatformModule,
  HYGetModuleController name name_HYGetModuleController;

resourcestring
  sDescription = '';

const
  sRequiredPrivilege = '';

initialization
  AboutPluginModuleController := TAboutPluginModuleController.Create('AboutPluginModule.Library', 1, 0, sRequiredPrivilege, sDescription);

finalization
  FreeAndNil(AboutPluginModuleController);

end.
