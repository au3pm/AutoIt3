#include-once

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Description:    Functions that assist with color management.
;
; ------------------------------------------------------------------------------


;===============================================================================
;
; Description:      Get the red component of a given color.
; Syntax:           _Color( $nColor )
; Parameter(s):     $nColor - The RGB color to work with (numeric).
; Requirement(s):   None
; Return Value(s):  On Success - Returns the component color in the range 0-255
;                   On Failure - None
; Author(s):        Jonathan Bennett <jon at hiddensoft com>
; Note(s):          None
;
;===============================================================================
Func _ColorGetRed( $nColor )
  Return BitAnd( BitShift( $nColor, 16 ), 0xff )
EndFunc


;===============================================================================
;
; Description:      Get the green component of a given color.
; Syntax:           _Color( $nColor )
; Parameter(s):     $nColor - The RGB color to work with (numeric).
; Requirement(s):   None
; Return Value(s):  On Success - Returns the component color in the range 0-255
;                   On Failure - None
; Author(s):        Jonathan Bennett <jon at hiddensoft com>
; Note(s):          None
;
;===============================================================================
Func _ColorGetGreen( $nColor )
  Return BitAnd( BitShift( $nColor, 8 ), 0xff )
EndFunc


;===============================================================================
;
; Description:      Get the blue component of a given color.
; Syntax:           _Color( $nColor )
; Parameter(s):     $nColor - The RGB color to work with (numeric).
; Requirement(s):   None
; Return Value(s):  On Success - Returns the component color in the range 0-255
;                   On Failure - None
; Author(s):        Jonathan Bennett <jon at hiddensoft com>
; Note(s):          None
;
;===============================================================================
Func _ColorGetBlue( $nColor )
  Return BitAnd( $nColor, 0xff )
EndFunc
