program StandardVCL;

uses
  Forms,
  ufrmMain in 'ufrmMain.pas' {frmVCLApp},
  uVersionedAboutIntf in '..\shared\uVersionedAboutIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Standard VCL Application';
  Application.CreateForm(TfrmVCLApp, frmVCLApp);
  Application.Run;
end.
