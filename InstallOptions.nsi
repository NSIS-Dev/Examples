; Scaffolding by https://github.com/idleberg/NSIS-Sublime-Text

; Settings ---------------------------------
Name "installer_name"
OutFile "installer_name.exe"
RequestExecutionLevel user
InstallDir "$PROGRAMFILES\installer_name"

; Includes ---------------------------------
ReserveFile "${NSISDIR}\Plugins\InstallOptions.dll"
ReserveFile "${NSISDIR}\Examples\InstallOptions\test.ini"

; Pages ------------------------------------
Page custom "iopage" "iopage_validation" ": InstallOptions Page"
Page components
Page directory
Page instfiles


; Sections ---------------------------------
Section "section_name" section_index

	# your code here

SectionEnd

; Functions --------------------------------
Function .onInit
  
  InitPluginsDir
  File "/oname=$PLUGINSDIR\ioFile.ini" "${NSISDIR}\Examples\InstallOptions\test.ini"
  
FunctionEnd

Function "iopage"

 	Push $R0
	InstallOptions::dialog "$PLUGINSDIR\ioFile.ini"
    Pop $R0
  
	Pop $R0

FunctionEnd

Function "iopage_validation"

 	# your code here

FunctionEnd