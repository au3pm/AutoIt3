#include-once

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Description:    Functions that assist with working with string data.
;
; ------------------------------------------------------------------------------


;===============================================================================
;
; Description:      Repeats a string a specified number of times.
; Syntax:           _StringRepeat( $sString, $iRepeatCount )
; Parameter(s):     $sString      - String to repeat
;                   $iRepeatCount - Number of times to repeat the string
; Requirement(s):   None
; Return Value(s):  On Success - Returns string with specified number of repeats
;                   On Failure - Returns an empty string and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _StringRepeat( $sString, $iRepeatCount )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $sResult
  Local $iCount

  Select
    Case Not StringIsInt( $iRepeatCount )
      SetError( 1 )
      Return ""
    Case StringLen( $sString ) < 1
      SetError( 1 )
      Return ""
    Case $iRepeatCount <= 0
      SetError( 1 )
      Return ""
    Case Else
      For $iCount = 1 To $iRepeatCount
        $sResult = $sResult & $sString
      Next

      Return $sResult
  EndSelect
EndFunc


;===============================================================================
;
; Description:      Reverses the contents of the specified string.
; Syntax:           _StringReverse( $sString )
; Parameter(s):     $sString - String to reverse
; Requirement(s):   None
; Return Value(s):  On Success - Returns reversed string
;                   On Failure - Returns an empty string and sets @error = 1
; Author(s):        Jonathan Bennett <jon at hiddensoft com>
; Note(s):          None
;
;===============================================================================
Func _StringReverse( $sString )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $sReverse
  Local $iCount

  If StringLen( $sString ) >= 1 Then
    For $iCount = 1 To StringLen( $sString )
      $sReverse = StringMid( $sString, $iCount, 1 ) & $sReverse
    Next

    Return $sReverse
  Else
    SetError( 1 )
    Return ""
  EndIf
EndFunc
