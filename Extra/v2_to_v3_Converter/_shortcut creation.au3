;
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT
; Author:         J-Paul Mesnage <jpaul-mesnage at ifrance com>
;
; Script Function:
;	Syntax highlighting files installation.
;

; Prompt the user to run the script - use a Yes/No prompt (4 - see help file)
$answer = MsgBox(4, "AutoItV2toV3 shortcut creation", "This script will attempt to create a link to AutoItV2toV3 translator.  Run?")
If $answer = 7 Then Exit

; Find an verify the installation directory
$installdir = RegRead("HKEY_LOCAL_MACHINE\Software\HiddenSoft\AutoIt3", "InstallDir")
If @error Then Error()

$AutoItV2toV3 = $installdir & "\Extra\v2_to_v3_Converter\"

; Check that both directories exist
FileCreateShortcut($AutoItV2toV3 & "AutoItV2toV3.exe", @desktopDir & "\AutoIt V2 to V3 Converter.lnk" )

MsgBox(4096, "AutoItV2toV3", "Installation complete!")

; End of script


Func Error()
	MsgBox(4096, "Error", "Unable to find AutoIt3 or error installing the syntax files.  Please try a manual installation.")
	Exit
EndFunc
