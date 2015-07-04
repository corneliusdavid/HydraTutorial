unit ufrmVersionedAboutPlugin;

interface

uses
  {vcl:}   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons,
  {Hydra:} uHYVisualPlugin, uHYIntf,
  {app:}   uVersionedAboutIntf;

type
  TVersionedAboutPlugin = class(THYVisualPlugin, IVersionedAboutInterface)
    grpAppName: TGroupBox;
    lblVersion: TLabel;
    lblCopyright: TLabel;
    btnOK: TBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure HYVisualPluginClose(Sender: TObject; var Action: TCloseAction);
  private
    FMajorVersion, FMinorVersion: Integer;
    procedure UpdateVersion;
  protected
    procedure Set_ApplicationName(const Value: WideString); safecall;
    procedure Set_MajorVersion(const Value: Integer); safecall;
    procedure Set_MinorVersion(const Value: Integer); safecall;
    procedure Set_Copyright(const Value: WideString); safecall;
  public
    property ApplicationName: WideString write Set_ApplicationName;
    property MajorVersion: Integer write Set_MajorVersion;
    property MinorVersion: Integer write Set_MinorVersion;
    property Copyright: WideString write Set_Copyright;
  end;


implementation

uses
  {Hydra:} uHYPluginFactories;

{$R *.dfm}

procedure Create_VersionedAboutPlugin(out anInstance: IInterface);
begin
  anInstance := TVersionedAboutPlugin.Create(NIL);
end;

const
  sDescription = 'A visual plugin written in Delphi to show a generic "about" box that has version information passed from the host application.';
  sRequiredPrivilege = '';
  sUserData = '';

procedure TVersionedAboutPlugin.btnOKClick(Sender: TObject);
begin
  Close;
end;

procedure TVersionedAboutPlugin.HYVisualPluginClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caHide;
end;

procedure TVersionedAboutPlugin.Set_ApplicationName(const Value: WideString);
begin
  grpAppName.Caption := Value;
end;

procedure TVersionedAboutPlugin.Set_Copyright(const Value: WideString);
begin
  lblCopyright.Caption := Value;
end;

procedure TVersionedAboutPlugin.Set_MajorVersion(const Value: Integer);
begin
  FMajorVersion := Value;
  UpdateVersion;
end;

procedure TVersionedAboutPlugin.Set_MinorVersion(const Value: Integer);
begin
  FMinorVersion := Value;
  UpdateVersion;
end;

procedure TVersionedAboutPlugin.UpdateVersion;
begin
  lblVersion.Caption := Format('Version %d.%d', [FMajorVersion, FMinorVersion]);
end;

initialization
  THYPluginFactory.Create(HInstance, 'VersionedAboutPlugin', Create_VersionedAboutPlugin, TVersionedAboutPlugin, 
                          1, 0, sRequiredPrivilege, sDescription, sUserData);

end.
