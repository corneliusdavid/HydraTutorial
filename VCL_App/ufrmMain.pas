unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ImgList, ActnList, Menus, StdCtrls, ComCtrls, ToolWin;

type
  TfrmVCLApp = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    ActionList1: TActionList;
    ImageList1: TImageList;
    actFileExit: TFileExit;
    actHelpAbout: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure actHelpAboutExecute(Sender: TObject);
  end;

var
  frmVCLApp: TfrmVCLApp;


implementation

{$R *.dfm}

procedure TfrmVCLApp.actHelpAboutExecute(Sender: TObject);
begin
  ShowMessage('Standard VCL Demo App');
end;

end.
