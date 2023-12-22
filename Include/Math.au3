#include-once

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Description:    Functions that assist with mathematical calculations.
;
; ------------------------------------------------------------------------------


;===============================================================================
;
; Description:      Evaluates which of the two numbers is higher.
; Syntax:           _Max( $nNum1, $nNum2 )
; Parameter(s):     $nNum1 - First number
;                   $nNum2 - Second number
; Requirement(s):   None
; Return Value(s):  Returns the higher of the two numbers
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          Works with floats as well as integers
;
;===============================================================================
Func _Max( $nNum1, $nNum2 )
  If $nNum1 > $nNum2 Then
    Return $nNum1
  Else
    Return $nNum2
  EndIf
EndFunc


;===============================================================================
;
; Description:      Evaluates which of the two numbers is lower.
; Syntax:           _Min( $nNum1, $nNum2 )
; Parameter(s):     $nNum1 - First number
;                   $nNum2 - Second number
; Requirement(s):   None
; Return Value(s):  Returns the lower of the two numbers
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          Works with floats as well as integers
;
;===============================================================================
Func _Min( $nNum1, $nNum2 )
  If $nNum1 > $nNum2 Then
    Return $nNum2
  Else
    Return $nNum1
  EndIf
EndFunc
