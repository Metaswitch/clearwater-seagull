; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppVers "1.4.0"
#define MyAppName "Seagull"
#define MyAppVerName "Seagull v1.4.0pre1"
#define MyAppPublisher "HP OpenCall Software"
#define MyAppURL "http://gull.sourceforge.net/"
#define MyAppExeName "seagull.exe"
#define MyAppOutputDir "..\work-"
#define MyAppBuildDir "..\build-"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\Seagull
DefaultGroupName=Seagull
AllowNoIcons=false
LicenseFile=..\LICENSE.txt
InfoAfterFile=..\README.txt
OutputBaseFilename=seagull-{#MyAppVers}.win32-setup
Compression=lzma
SolidCompression=true
OutputDir=C:\transfer\seagull\cygwin
VersionInfoVersion=1.4.0
VersionInfoCompany=HP OpenCall Software
VersionInfoDescription=Seagull
ShowLanguageDialog=yes
AppVersion={#MyAppVerName}
AppReadmeFile=
AppCopyright=Copyright 2006 Hewlett-Packard Development Company, LP.
CreateUninstallRegKey=false
WizardImageFile=C:\transfer\seagull\seagull.src.svn\packaging\cygwin\seagull-logo-big.bmp
WizardImageStretch=false
WizardImageBackColor=clWhite

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
;Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
;Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Types]

[Components]

[Dirs]
; Diameter Env
Name: {app}\diameter-env\logs
Name: {app}\h248-env\logs
Name: {app}\http-env\logs
Name: {app}\xcap-env\logs

[Files]
; Main executable and lib files
Source: {#MyAppBuildDir}{#MyAppVers}\seagull.exe; DestDir: {app}; Flags: ignoreversion
Source: {#MyAppBuildDir}{#MyAppVers}\libtrans_ip.so; DestDir: {app}; Flags: ignoreversion
Source: {#MyAppBuildDir}{#MyAppVers}\libparser_xml.so; DestDir: {app}; Flags: ignoreversion
Source: {#MyAppBuildDir}{#MyAppVers}\csvextract.exe; DestDir: {app}; Flags: ignoreversion
Source: {#MyAppBuildDir}{#MyAppVers}\csvsplit.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\packaging\cygwin\startterm.bat; DestDir: {app}; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile

; Cygwin Environement files
Source: ..\..\..\..\cygwin\usr\share\terminfo\c\cygwin; DestDir: C:\cygwin\usr\share\terminfo\c\; Flags: uninsneveruninstall onlyifdoesntexist
Source: C:\cygwin\bin\cygwin1.dll; DestDir: {app}
Source: C:\cygwin\bin\mount.exe; DestDir: {app}
Source: C:\cygwin\bin\umount.exe; DestDir: {app}

; Execution environement files

; Start scripts
Source: ..\packaging\cygwin\start_diameter_client.bat; DestDir: {app}\diameter-env\run\; DestName: start_client.bat; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile
Source: ..\packaging\cygwin\start_diameter_server.bat; DestDir: {app}\diameter-env\run\; DestName: start_server.bat; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile
Source: ..\packaging\cygwin\start_h248_server.bat; DestDir: {app}\h248-env\run; DestName: start_server.bat; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile
Source: ..\packaging\cygwin\start_h248_client.bat; DestDir: {app}\h248-env\run; DestName: start_client.bat; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile
Source: ..\packaging\cygwin\start_http_server.bat; DestDir: {app}\http-env\run; DestName: start_server.bat; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile
Source: ..\packaging\cygwin\start_http_client.bat; DestDir: {app}\http-env\run; DestName: start_client.bat; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile
Source: ..\packaging\cygwin\start_xcap_server.bat; DestDir: {app}\xcap-env\run; DestName: start_server.bat; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile
Source: ..\packaging\cygwin\start_xcap_client.bat; DestDir: {app}\xcap-env\run; DestName: start_client.bat; Flags: ignoreversion; AfterInstall: ReplaceInstDirInFile


; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: ..\LICENSE.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\README.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\INSTALL.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\HISTORY.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\exe-env\diameter-env\config\base_cc.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\base_cx.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\base_draft08.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\base_sh.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\conf.client.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\conf.client-tls.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\conf.client-tls-no-secure.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\conf.server.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\conf.server-tls.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\config\conf.server-tls-no-secure.xml; DestDir: {app}\diameter-env\config
Source: ..\exe-env\diameter-env\scenario\ccr-cca.client.xml; DestDir: {app}\diameter-env\scenario
Source: ..\exe-env\diameter-env\scenario\ccr-cca.server.xml; DestDir: {app}\diameter-env\scenario
Source: ..\exe-env\diameter-env\scenario\sar-saa.client.xml; DestDir: {app}\diameter-env\scenario
Source: ..\exe-env\diameter-env\scenario\sar-saa.client-tls-no-secure.xml; DestDir: {app}\diameter-env\scenario
Source: ..\exe-env\diameter-env\scenario\sar-saa.server.xml; DestDir: {app}\diameter-env\scenario
Source: ..\exe-env\diameter-env\scenario\sar-saa.server-tls-no-secure.xml; DestDir: {app}\diameter-env\scenario
Source: ..\exe-env\diameter-env\scenario\udr-uda.client.xml; DestDir: {app}\diameter-env\scenario
Source: ..\exe-env\diameter-env\scenario\udr-uda.server.xml; DestDir: {app}\diameter-env\scenario
Source: ..\exe-env\h248-env\config\conf.client.xml; DestDir: {app}\h248-env\config
Source: ..\exe-env\h248-env\config\conf.server.xml; DestDir: {app}\h248-env\config
Source: ..\exe-env\h248-env\config\h248-dictionary.xml; DestDir: {app}\h248-env\config
Source: ..\exe-env\h248-env\scenario\client.xml; DestDir: {app}\h248-env\scenario
Source: ..\exe-env\h248-env\scenario\client_multi_tid.xml; DestDir: {app}\h248-env\scenario
Source: ..\exe-env\h248-env\scenario\server.xml; DestDir: {app}\h248-env\scenario
Source: ..\exe-env\http-env\config\http-dictionary.xml; DestDir: {app}\http-env\config
Source: ..\exe-env\http-env\config\conf.client.xml; DestDir: {app}\http-env\config
Source: ..\exe-env\http-env\config\conf.server.xml; DestDir: {app}\http-env\config
Source: ..\exe-env\http-env\scenario\server.xml; DestDir: {app}\http-env\scenario
Source: ..\exe-env\http-env\scenario\client.xml; DestDir: {app}\http-env\scenario
Source: ..\build-1.4.0\libparser_h248.so; DestDir: {app}; Flags: ignoreversion
Source: ..\build-1.4.0\libparser_xml.so; DestDir: {app}; Flags: ignoreversion
Source: ..\exe-env\xcap-env\config\xcap-dictionary.xml; DestDir: {app}\xcap-env\config
Source: ..\exe-env\xcap-env\config\conf.client.xml; DestDir: {app}\xcap-env\config
Source: ..\exe-env\xcap-env\config\conf.server.xml; DestDir: {app}\xcap-env\config
Source: ..\exe-env\xcap-env\scenario\client.xml; DestDir: {app}\xcap-env\scenario
Source: ..\exe-env\xcap-env\scenario\server.xml; DestDir: {app}\xcap-env\scenario

[Icons]
Name: {group}\Start {#MyAppName} shell; Filename: {app}\startterm.bat; WorkingDir: {app}; Comment: Start {#MyAppName} terminal
Name: {group}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}

; Diameter env
Name: {group}\Diameter\Start {#MyAppName} Diameter Client; Filename: {app}\diameter-env\run\start_client.bat; WorkingDir: {app}; Comment: Start {#MyAppName} Diameter Client terminal
Name: {group}\Diameter\Start {#MyAppName} Diameter Server; Filename: {app}\diameter-env\run\start_server.bat; WorkingDir: {app}; Comment: Start {#MyAppName} Diameter Server terminal
Name: {group}\H248\Start {#MyAppName} H248 Server; Filename: {app}\h248-env\run\start_server.bat; WorkingDir: {app}; Comment: Start {#MyAppName} Diameter Server terminal
Name: {group}\H248\Start {#MyAppName} H248 Client; Filename: {app}\h248-env\run\start_client.bat; WorkingDir: {app}; Comment: Start {#MyAppName} Diameter Client terminal
Name: {group}\Diameter\Environment files; Filename: {app}\diameter-env\; WorkingDir: {app}; Comment: Diameter Environment files
Name: {group}\H248\Environment files; Filename: {app}\h248-env\; WorkingDir: {app}; Comment: H248 Environment files
Name: {group}\HTTP\Environment files; Filename: {app}\http-env\; WorkingDir: {app}; Comment: Diameter Environment files
Name: {group}\HTTP\Start {#MyAppName} HTTP Client; Filename: {app}\http-env\run\start_client.bat; WorkingDir: {app}; Comment: Start {#MyAppName} Diameter Client terminal
Name: {group}\HTTP\Start {#MyAppName} HTTP Server; Filename: {app}\http-env\run\start_server.bat; WorkingDir: {app}; Comment: Start {#MyAppName} Diameter Server terminal
Name: {group}\XCAP\Start {#MyAppName} XCAP Server; Filename: {app}\xcap-env\run\start_server.bat; WorkingDir: {app}; Comment: Start {#MyAppName} XCAP Server terminal
Name: {group}\XCAP\Start {#MyAppName} XCAP Client; Filename: {app}\xcap-env\run\start_client.bat; WorkingDir: {app}; Comment: Start {#MyAppName} XCAP Client terminal
Name: {group}\XCAP\Environment files; Filename: {app}\xcap-env\; WorkingDir: {app}; Comment: XCAP Environment files

[Run]

[_ISTool]
LogFile=istool.log
LogFileAppend=false
[Code]
///////////////////////////////////////////////////////////////////////////////
// Find given text in given file, and replace
// complete textline with given text.
// Created: March 27, 2002 by S.T.I.Bracke
// Revised: May 22, 2002 by S.T.I.Bracke
function ReplaceLine(strFilename, strFind, strNewLine: String): Boolean;
var
  iLineCounter : Integer;
  a_strTextfile : TArrayOfString;

begin
  { Load textfile into string array }
  LoadStringsFromFile(strFilename, a_strTextfile);

  { Search trough all textlines for given text }
  // old line
  // for iLineCounter := 1 to High(a_strTextfile) do
  // new line corrected by Nikolaus Moll
  for iLineCounter := 0 to GetArrayLength(a_strTextfile)-1 do
    begin
      { Overwrite textline when text searched for is part of it }
      if (Pos(strFind, a_strTextfile[iLineCounter]) > 0) then
        a_strTextfile[iLineCounter] := strNewLine;
    end;

  { Save string array to textfile (overwrite, no append!) }
  SaveStringsToFile(strFilename, a_strTextfile, False);

  Result := True;

end;

procedure ReplaceInstDirInFile();
begin
  ReplaceLine( ExpandConstant (CurrentFileName), 'set RUN_DIR=REPLACETHIS', 'SET RUN_DIR=' + ExpandConstant('{app}') );
end;
