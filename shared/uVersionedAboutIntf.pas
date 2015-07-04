unit uVersionedAboutIntf;

interface

uses
  uHYCrossPlatformInterfaces;

type
  IVersionedAboutInterface = interface(IHYCrossPlatformInterface)
  ['{60B0E8C6-BBB0-4C77-BAD7-C03D86DBDDD6}']
    procedure Set_ApplicationName(const Value: WideString); safecall;
    procedure Set_MajorVersion(const Value: Integer); safecall;
    procedure Set_MinorVersion(const Value: Integer); safecall;
    procedure Set_Copyright(const Value: WideString); safecall;
    property ApplicationName: WideString write Set_ApplicationName;
    property MajorVersion: Integer write Set_MajorVersion;
    property MinorVersion: Integer write Set_MinorVersion;
    property Copyright: WideString write Set_Copyright;
  end;

implementation

end.
