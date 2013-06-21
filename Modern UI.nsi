; Scaffolding by https://github.com/idleberg/NSIS-Sublime-Text

; Includes ---------------------------------
!include MUI2.nsh

; Settings ---------------------------------
Name "installer_name"
OutFile "installer_name.exe"
RequestExecutionLevel user
InstallDir "$PROGRAMFILES\installer_name"

; Pages ------------------------------------
!insertmacro MUI_PAGE_COMPONENTS 
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

; Languages --------------------------------
!insertmacro MUI_LANGUAGE "English"

; Sections ---------------------------------
Section "section_name" section_index

  # your code here

SectionEnd

; Descriptions -----------------------------
LangString DESC_section_index ${LANG_English} "section_description"

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
	!insertmacro MUI_DESCRIPTION_TEXT ${section_index} $(DESC_section_index)
!insertmacro MUI_FUNCTION_DESCRIPTION_END

; Functions --------------------------------
