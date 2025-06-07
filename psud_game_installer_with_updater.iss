
[Setup]
AppName=Psud Game
AppVersion=1.0
DefaultDirName={pf}\Psud Game
DefaultGroupName=Psud Game
UninstallDisplayIcon={app}\updater.exe
OutputDir=.
OutputBaseFilename=Psud_Game_Installer
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
SetupIconFile=psud_icon.ico
WizardImageFile=psud_installer_bg.bmp
WizardSmallImageFile=
LicenseFile=license.txt

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
Source: "dist\updater\updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "assets\*"; DestDir: "{app}\assets"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "maps\*"; DestDir: "{app}\maps"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "version.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "menu.py"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Psud Game"; Filename: "{app}\updater.exe"; WorkingDir: "{app}"
Name: "{userdesktop}\Psud Game"; Filename: "{app}\updater.exe"; WorkingDir: "{app}"

[Run]
Filename: "{app}\updater.exe"; Description: "Launch Psud Game"; Flags: nowait postinstall skipifsilent
