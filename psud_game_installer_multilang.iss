
[Setup]
WizardImageFile=psud_installer_bg.bmp
WizardSmallImageFile=
AppName=Psud Game
AppVersion=1.0
DefaultDirName={pf}\Psud Game
DefaultGroupName=Psud Game
UninstallDisplayIcon={app}\psud_menu.exe
OutputDir=.
OutputBaseFilename=Psud_Game_Installer
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
SetupIconFile=psud_icon.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
LicenseFile=license.txt
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist\psud_menu\psud_menu.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "assets\*"; DestDir: "{app}\assets"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "maps\*"; DestDir: "{app}\maps"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Psud Game"; Filename: "{app}\psud_menu.exe"; WorkingDir: "{app}"
Name: "{userdesktop}\Psud Game"; Filename: "{app}\psud_menu.exe"; WorkingDir: "{app}"

[Run]
Filename: "{app}\psud_menu.exe"; Description: "Launch Psud Game"; Flags: nowait postinstall skipifsilent
