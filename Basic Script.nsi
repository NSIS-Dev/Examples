; Scaffolding by https://github.com/idleberg/NSIS-Sublime-Text

; Settings ---------------------------------
Name "installer_name"
OutFile "installer_name.exe"
RequestExecutionLevel user
InstallDir "$PROGRAMFILES\installer_name"

; Pages ------------------------------------
Page components
Page directory
Page instfiles

; Sections ---------------------------------
Section "section_name" section_index

	# your code here

SectionEnd

; Functions --------------------------------
