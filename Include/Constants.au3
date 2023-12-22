#include-once

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Author(s):      Jeremy Landes <jlandes@landeserve.com>
;                 David Nuttall <danuttall@rocketmail.com>
; Description:    This file is meant to be included in an AutoIt v3 script to
;                 provide access to these constants.
;
; ------------------------------------------------------------------------------


;==============================================
; AutoIt Options Constants
;==============================================
; Sets the way coords are used in the mouse and pixel functions
$OPT_COORDSRELATIVE   =    0 ; Relative coords to the active window
$OPT_COORDSABSOLUTE   =    1 ; Absolute screen coordinates (default)

; Sets how errors are handled if a Run/RunWait function fails
$OPT_ERRORSILENT      =    0 ; Silent error (@error set to 1)
$OPT_ERRORFATAL       =    1 ; Fatal error (default)

; Alters the use of Caps Lock 
$OPT_CAPSNOSTORE      =    0 ; Don't store/restore Caps Lock state
$OPT_CAPSSTORE        =    1 ; Store/restore Caps Lock state (default)

; Alters the method that is used to match window titles
$OPT_MATCHSTART       =    1 ; Match the title from the start (default)
$OPT_MATCHANY         =    2 ; Match any substring in the title
$OPT_MATCHEXACT       =    3 ; Match the title exactly


;==============================================
; File Constants
;==============================================
; Indicates file copy and install options
$FC_NOOVERWRITE       =    0 ; Do not overwrite existing files (default)
$FC_OVERWRITE         =    1 ; Overwrite existing files

; Indicates file date and time options
$FT_MODIFIED          =    0 ; Date and time file was last modified (default)
$FT_CREATED           =    1 ; Date and time file was created
$FT_ACCESSED          =    2 ; Date and time file was last accessed

; Indicates the mode to open a file
$FO_READ              =    0 ; Read mode
$FO_APPEND            =    1 ; Write mode (append)
$FO_OVERWRITE         =    2 ; Write mode (erase previous contents)

; Indicates file read options
$EOF                  =   -1 ; End-of-file reached

; Indicates file open and save dialog options
$FD_FILEMUSTEXIST     =    1 ; File must exist
$FD_PATHMUSTEXIST     =    2 ; Path must exist
$FD_MULTISELECT       =    4 ; Allow multi-select
$FD_PROMPTCREATENEW   =    8 ; Prompt to create new file
$FD_PROMPTOVERWRITE   =   16 ; Prompt to overWrite file


;==============================================
; Keyboard Constants
;==============================================
; Changes how keys are processed
$KB_SENDSPECIAL       =    0 ; Special characters indicate key presses (default)
$KB_SENDRAW           =    1 ; Keys are sent raw

; Sets the state of the Caps Lock key
$KB_CAPSOFF           =    0 ; Caps Lock is off
$KB_CAPSON            =    1 ; Caps Lock is on


;==============================================
; Message Box Constants
;==============================================
; Indicates the buttons displayed in the message box
$MB_OK                =    0 ; One push button: OK
$MB_OKCANCEL          =    1 ; Two push buttons: OK and Cancel
$MB_ABORTRETRYIGNORE  =    2 ; Three push buttons: Abort, Retry, and Ignore
$MB_YESNOCANCEL       =    3 ; Three push buttons: Yes, No, and Cancel
$MB_YESNO             =    4 ; Two push buttons: Yes and No
$MB_RETRYCANCEL       =    5 ; Two push buttons: Retry and Cancel

; Displays an icon in the message box
$MB_ICONHAND          =   16 ; Stop-sign icon
$MB_ICONQUESTION      =   32 ; Question-mark icon
$MB_ICONEXCLAMATION   =   48 ; Exclamation-point icon
$MB_ICONASTERISK      =   64 ; Icon consisting of an 'i' in a circle

; Indicates the default button
$MB_DEFBUTTON1        =    0 ; The first button is the default button
$MB_DEFBUTTON2        =  256 ; The second button is the default button
$MB_DEFBUTTON3        =  512 ; The third button is the default button

; Indicates the modality of the dialog box
$MB_APPLMODAL         =    0 ; Application modal
$MB_SYSTEMMODAL       = 4096 ; System modal
$MB_TASKMODAL         = 8192 ; Task modal

; Indicates the button selected in the message box
$IDOK                 =    1 ; OK button was selected
$IDCANCEL             =    2 ; Cancel button was selected
$IDABORT              =    3 ; Abort button was selected
$IDRETRY              =    4 ; Retry button was selected
$IDIGNORE             =    5 ; Ignore button was selected
$IDYES                =    6 ; Yes button was selected
$IDNO                 =    7 ; No button was selected


;==============================================
; Progress and Splash Constants
;==============================================
; Indicates properties of the displayed progress or splash dialog
$DLG_NOTITLE          =    1 ; Titleless window
$DLG_NOTONTOP         =    2 ; Without "always on top" attribute
$DLG_TEXTLEFT         =    4 ; Left justified text
$DLG_TEXTRIGHT        =    8 ; Right justified text


;==============================================
; Tray Tip Constants
;==============================================
; Indicates the type of Ballon Tip to display
$TIP_ICONNONE         =    0 ; No icon (default)
$TIP_ICONASTERISK     =    1 ; Info icon
$TIP_ICONEXCLAMATION  =    2 ; Warning icon
$TIP_ICONHAND         =    3 ; Error icon
$TIP_NOSOUND          =   16 ; No sound


;==============================================
; Mouse Constants
;==============================================
; Indicates current mouse cursor
$IDC_UNKNOWN          =    0 ; Unknown cursor
$IDC_APPSTARTING      =    1 ; Standard arrow and small hourglass
$IDC_ARROW            =    2 ; Standard arrow
$IDC_CROSS            =    3 ; Crosshair
$IDC_HELP             =    4 ; Arrow and question mark
$IDC_IBEAM            =    5 ; I-beam
$IDC_ICON             =    6 ; Obsolete
$IDC_NO               =    7 ; Slashed circle
$IDC_SIZE             =    8 ; Obsolete
$IDC_SIZEALL          =    9 ; Four-pointed arrow pointing N, S, E, and W
$IDC_SIZENESW         =   10 ; Double-pointed arrow pointing NE and SW
$IDC_SIZENS           =   11 ; Double-pointed arrow pointing N and S
$IDC_SIZENWSE         =   12 ; Double-pointed arrow pointing NW and SE
$IDC_SIZEWE           =   13 ; Double-pointed arrow pointing W and E
$IDC_UPARROW          =   14 ; Vertical arrow
$IDC_WAIT             =   15 ; Hourglass


;==============================================
; Process Constants
;==============================================
; Indicates the type of shutdown
$SD_LOGOFF            =    0 ; Logoff
$SD_SHUTDOWN          =    1 ; Shutdown
$SD_REBOOT            =    2 ; Reboot
$SD_FORCE             =    4 ; Force
$SD_POWERDOWN         =    8 ; Power down


;==============================================
; Registry Constants
;==============================================
$HKLM                 = "HKEY_LOCAL_MACHINE"
$HKU                  = "HKEY_USERS"
$HKCU                 = "HKEY_CURRENT_USER"
$HKCR                 = "HKEY_CLASSES_ROOT"
$HKCC                 = "HKEY_CURRENT_CONFIG"


;==============================================
; String Constants
;==============================================
; Indicates if string operations should be case sensitive
$STR_NOCASESENSE      =    0 ; Not case sensitive (default)
$STR_CASESENSE        =    1 ; Case sensitive

; IndicateS the type of stripping that should be performed
$STR_STRIPLEADING     =    1 ; Strip leading whitespace
$STR_STRIPTRAILING    =    2 ; Strip trailing whitespace
$STR_STRIPSPACES      =    4 ; Strip double (or more) spaces between words
