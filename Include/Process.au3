#include-once

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Description:    Functions that assist with process management.
;
; ------------------------------------------------------------------------------


;===============================================================================
;
; Description:      Executes a DOS command in a hidden command window.
; Syntax:           _RunDOS( $sCommand )
; Parameter(s):     $sCommand - Command to execute
; Requirement(s):   None
; Return Value(s):  On Success - Returns the exit code of the command
;                   On Failure - Depends on RunErrorsFatal setting
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _RunDOS( $sCommand )
  Return RunWait( @ComSpec & " /C """ & $sCommand & """", "", @SW_HIDE )
EndFunc
