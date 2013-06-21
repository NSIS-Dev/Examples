; Scaffolding by https://github.com/idleberg/NSIS-Sublime-Text

; Includes ---------------------------------
!include nsDialogs.nsh
!include LogicLib.nsh

; Settings ---------------------------------
Name "installer_name"
OutFile "installer_name.exe"
RequestExecutionLevel user
InstallDir "$PROGRAMFILES\installer_name"

; Pages ------------------------------------
Page custom "nsdialog_page" "nsdialog_page_validation"
Page components
Page directory
Page instfiles

; Variables --------------------------------


; Functions --------------------------------
Function "nsdialog_page"

	nsDialogs::Create 1018
	Pop $0

	# your code here

	nsDialogs::Show

FunctionEnd

Function "nsdialog_page_validation"

	# your code here

FunctionEnd

; Sections ---------------------------------
Section "section_name" section_index

  # your code here

SectionEnd