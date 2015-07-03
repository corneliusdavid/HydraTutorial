unit ufrmSimpleAboutPlugin;

interface

uses
  {vcl:} Windows, Messages, SysUtils, Variants, Classes, Graphics, 
Controls, Forms, Dialogs, StdCtrls,
  {Hydra:} uHYVisualPlugin, uHYIntf, Buttons;

type
  TSimpleAboutPlugin = class(THYVisualPlugin)
    btnOK: TBitBtn;
    Label1: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure HYVisualPluginClose(Sender: TObject; var Action: TCloseAction);
  private
  protected
  public
  end;

implementation

uses
  {Hydra:} uHYPluginFactories;

{$R *.dfm}

procedure Create_SimpleAboutPlugin(out anInstance: IInterface);
begin
  anInstance := TSimpleAboutPlugin.Create(NIL);
end;

const
  sDescription = 'A simple visual plugin written with standard Delphi VCL to show an "about" box.';
  sRequiredPrivilege = '';
  sUserData = '';

procedure TSimpleAboutPlugin.btnOKClick(Sender: TObject);
begin
  Close;
end;

procedure TSimpleAboutPlugin.HYVisualPluginClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caHide;
end;

initialization
  THYPluginFactory.Create(HInstance, 'SimpleAboutPlugin', Create_SimpleAboutPlugin, TSimpleAboutPlugin, 
                          1, 0, sRequiredPrivilege, sDescription, sUserData);

end.
