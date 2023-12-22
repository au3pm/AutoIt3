#include-once

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Description:    Functions that assist with dates and times.
;
; ------------------------------------------------------------------------------


;===============================================================================
;
; Description:      Returns the name of the weekday, based on the specified day.
; Syntax:           _DateDayOfWeek( $iDayNum, $iFormat )
; Parameter(s):     $iDayNum - Day number
;                   $iFormat - Format:
;                              0 = Long name of the weekday
;                              1 = Abbreviated name of the weekday
; Requirement(s):   None
; Return Value(s):  On Success - Returns weekday name
;                   On Failure - Returns an empty string and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          English only
;
;===============================================================================
Func _DateDayOfWeek( $iDayNum, $iFormat )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $aDayOfWeek[8]

  $aDayOfWeek[1]        = "Sunday"
  $aDayOfWeek[2]        = "Monday"
  $aDayOfWeek[3]        = "Tuesday"
  $aDayOfWeek[4]        = "Wednesday"
  $aDayOfWeek[5]        = "Thursday"
  $aDayOfWeek[6]        = "Friday"
  $aDayOfWeek[7]        = "Saturday"

  If _DateIsValidWeekdayNum( $iDayNum ) And StringIsInt( $iFormat ) Then
    Select
      Case $iFormat = 0
        Return $aDayOfWeek[$iDayNum]
      Case $iFormat = 1
        Return StringLeft( $aDayOfWeek[$iDayNum], 3 )
      Case Else
        SetError( 1 )
        Return ""
    EndSelect
  Else
    SetError( 1 )
    Return ""
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns the number of days in a month, based on the
;                   specified month and year.
; Syntax:           _DateDaysInMonth( $iMonthNum, $iYear )
; Parameter(s):     $iMonthNum - Month number
;                   $iYear     - Year
; Requirement(s):   None
; Return Value(s):  On Success - Returns number of days in the month
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateDaysInMonth( $iMonthNum, $iYear )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $aNumDays

  $aNumDays = "31,28,31,30,31,30,31,31,30,31,30,31"
  $aNumDays = StringSplit( $aNumDays, "," )

  If _DateIsValidMonthNum( $iMonthNum ) And _DateIsValidYear( $iYear ) Then
    If _DateIsLeapYear( $iYear ) Then $aNumDays[2] = $aNumDays[2] + 1
    Return $aNumDays[$iMonthNum]
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns 1 if the specified year falls on a leap year and
;                   returns 0 if it does not.
; Syntax:           _DateIsLeapYear( $iYear )
; Parameter(s):     $iYear - Year to check
; Requirement(s):   None
; Return Value(s):  On Success - Returns 0 = Year is not a leap year
;                                Returns 1 = Year is a leap year
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateIsLeapYear( $iYear )
  If _DateIsValidYear( $iYear ) Then
    Select
      Case Mod( $iYear, 4 ) = 0 And Mod( $iYear, 100 ) <> 0
        Return 1
      Case Mod( $iYear, 400) = 0
        Return 1
      Case Else
        Return 0
    EndSelect
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns 1 if the specified month number is valid and
;                   returns 0 if it is not.
; Syntax:           _DateIsValidMonthNum( $iMonthNum )
; Parameter(s):     $iMonthNum - Month number to check
; Requirement(s):   None
; Return Value(s):  On Success - Returns 0 = Month number is not valid
;                                Returns 1 = Month number is valid
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateIsValidMonthNum( $iMonthNum )
  If StringIsInt( $iMonthNum ) Then
    If $iMonthNum >= 1 And $iMonthNum <= 12 Then
      Return 1
    Else
      Return 0
    EndIf
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns 1 if the specified weekday number is valid and
;                   returns 0 if it is not.
; Syntax:           _DateIsValidWeekdayNum( $iWeekdayNum )
; Parameter(s):     $iWeekdayNum - Weekday number to check
; Requirement(s):   None
; Return Value(s):  On Success - Returns 0 = Weekday number is not valid
;                                Returns 1 = Weekday number is valid
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateIsValidWeekdayNum( $iWeekdayNum )
  If StringIsInt( $iWeekdayNum ) Then
    If $iWeekdayNum >= 1 And $iWeekdayNum <= 7 Then
      Return 1
    Else
      Return 0
    EndIf
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns 1 if the specified year is valid and returns 0 if it
;                   is not.
; Syntax:           _DateIsValidYear( $iYear )
; Parameter(s):     $iYear - Year to check
; Requirement(s):   None
; Return Value(s):  On Success - Returns 0 = Year is not valid
;                                Returns 1 = Year is valid
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateIsValidYear( $iYear )
  If StringIsInt( $iYear ) Then
    If StringLen( $iYear ) = 4 Then
      Return 1
    Else
      Return 0
    EndIf
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns previous month number, based on the specified month.
; Syntax:           _DateLastMonthNum( $iMonthNum )
; Parameter(s):     $iMonthNum - Month number
; Requirement(s):   None
; Return Value(s):  On Success - Returns previous month number
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateLastMonthNum( $iMonthNum )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $iLastMonthNum

  If _DateIsValidMonthNum( $iMonthNum ) Then
    If $iMonthNum = 1 Then
      $iLastMonthNum = 12
    Else
      $iLastMonthNum = $iMonthNum - 1
    EndIf

    $iLastMonthNum = StringFormat( "%02d", $iLastMonthNum )
    Return $iLastMonthNum
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns previous month's year, based on the specified month
;                   and year.
; Syntax:           _DateLastMonthYear( $iMonthNum, $iYear )
; Parameter(s):     $iMonthNum - Month number
;                   $iYear     - Year
; Requirement(s):   None
; Return Value(s):  On Success - Returns previous month's year
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateLastMonthYear( $iMonthNum, $iYear )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $iLastYear

  If _DateIsValidMonthNum( $iMonthNum ) And _DateIsValidYear( $iYear ) Then
    If $iMonthNum = 1 Then
      $iLastYear = $iYear - 1
    Else
      $iLastYear = $iYear
    EndIf

    $iLastYear = StringFormat( "%04d", $iLastYear )
    Return $iLastYear
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns previous weekday number, based on the specified day
;                   of the week.
; Syntax:           _DateLastWeekdayNum( $iWeekdayNum )
; Parameter(s):     $iWeekdayNum - Weekday number
; Requirement(s):   None
; Return Value(s):  On Success - Returns previous weekday number
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateLastWeekdayNum( $iWeekdayNum )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $iLastWeekdayNum

  If _DateIsValidWeekdayNum( $iWeekdayNum ) Then
    If $iWeekdayNum = 1 Then
      $iLastWeekdayNum = 7
    Else
      $iLastWeekdayNum = $iWeekdayNum - 1
    EndIf

    Return $iLastWeekdayNum
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns the name of the month, based on the specified month.
; Syntax:           _DateMonthOfYear( $iMonthNum, $iFormat )
; Parameter(s):     $iMonthNum - Month number
;                   $iFormat   - Format:
;                                0 = Long name of the month
;                                1 = Abbreviated name of the month
; Requirement(s):   None
; Return Value(s):  On Success - Returns month name
;                   On Failure - Returns an empty string and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          English only
;
;===============================================================================
Func _DateMonthOfYear( $iMonthNum, $iFormat )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $aMonthOfYear[13]

  $aMonthOfYear[1]      = "January"
  $aMonthOfYear[2]      = "February"
  $aMonthOfYear[3]      = "March"
  $aMonthOfYear[4]      = "April"
  $aMonthOfYear[5]      = "May"
  $aMonthOfYear[6]      = "June"
  $aMonthOfYear[7]      = "July"
  $aMonthOfYear[8]      = "August"
  $aMonthOfYear[9]      = "September"
  $aMonthOfYear[10]     = "October"
  $aMonthOfYear[11]     = "November"
  $aMonthOfYear[12]     = "December"

  If _DateIsValidMonthNum( $iMonthNum ) And StringIsInt( $iFormat ) Then
    Select
      Case $iFormat = 0
        Return $aMonthOfYear[$iMonthNum]
      Case $iFormat = 1
        Return StringLeft( $aMonthOfYear[$iMonthNum], 3 )
      Case Else
        SetError( 1 )
        Return ""
    EndSelect
  Else
    SetError( 1 )
    Return ""
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns next month number, based on the specified month.
; Syntax:           _DateNextMonthNum( $iMonthNum )
; Parameter(s):     $iMonthNum - Month number
; Requirement(s):   None
; Return Value(s):  On Success - Returns next month number
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateNextMonthNum( $iMonthNum )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $iNextMonthNum

  If _DateIsValidMonthNum( $iMonthNum ) Then
    If $iMonthNum = 12 Then
      $iNextMonthNum = 1
    Else
      $iNextMonthNum = $iMonthNum + 1
    EndIf

    $iNextMonthNum = StringFormat( "%02d", $iNextMonthNum )
    Return $iNextMonthNum
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns next month's year, based on the specified month and
;                   year.
; Syntax:           _DateNextMonthYear( $iMonthNum, $iYear )
; Parameter(s):     $iMonthNum - Month number
;                   $iYear     - Year
; Requirement(s):   None
; Return Value(s):  On Success - Returns next month's year
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateNextMonthYear( $iMonthNum, $iYear )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $iNextYear

  If _DateIsValidMonthNum( $iMonthNum ) And _DateIsValidYear( $iYear ) Then
    If $iMonthNum = 12 Then
      $iNextYear = $iYear + 1
    Else
      $iNextYear = $iYear
    EndIf

    $iNextYear = StringFormat( "%04d", $iNextYear )
    Return $iNextYear
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns next weekday number, based on the specified day of
;                   the week.
; Syntax:           _DateNextWeekdayNum( $iWeekdayNum )
; Parameter(s):     $iWeekdayNum - Weekday number
; Requirement(s):   None
; Return Value(s):  On Success - Returns next weekday number
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _DateNextWeekdayNum( $iWeekdayNum )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $iNextWeekdayNum

  If _DateIsValidWeekdayNum( $iWeekdayNum ) Then
    If $iWeekdayNum = 7 Then
      $iNextWeekdayNum = 1
    Else
      $iNextWeekdayNum = $iWeekdayNum + 1
    EndIf

    Return $iNextWeekdayNum
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Converts the specified tick amount to hours, minutes, and
;                   seconds.
; Syntax:           _TicksToTime( $iTicks, $iHours, $iMins, $iSecs )
; Parameter(s):     $iTicks - Tick amount
;                   $iHours - Variable to store the hours (ByRef)
;                   $iMins  - Variable to store the minutes (ByRef)
;                   $iSecs  - Variable to store the seconds (ByRef)
; Requirement(s):   None
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Marc <mrd@gmx.de>
; Note(s):          None
;
;===============================================================================
Func _TicksToTime( $iTicks, ByRef $iHours, ByRef $iMins, ByRef $iSecs )
  If StringIsInt( $iTicks ) Then
    $iTicks = Round( $iTicks / 1000 )
    $iHours = Int( $iTicks / 3600 )
    $iTicks = Mod( $iTicks, 3600 )
    $iMins = Int( $iTicks / 60 )
    $iSecs = Round( Mod( $iTicks, 60 ) )
    Return 1
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns 1 if the specified hour is valid and returns 0 if
;                   it is not.
; Syntax:           _TimeIsValidHour( $iHour )
; Parameter(s):     $iHour - Hour to check
; Requirement(s):   Must be 24-hour format in the range 0-23
; Return Value(s):  On Success - Returns 0 = Hour is not valid
;                                Returns 1 = Hour is valid
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _TimeIsValidHour( $iHour )
  If StringIsInt( $iHour ) Then
    If $iHour >= 0 And $iHour <= 23 Then
      Return 1
    Else
      Return 0
    EndIf
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns 1 if the specified minute is valid and returns 0 if
;                   it is not.
; Syntax:           _TimeIsValidMinute( $iMinute )
; Parameter(s):     $iHour - Minute to check
; Requirement(s):   None
; Return Value(s):  On Success - Returns 0 = Minute is not valid
;                                Returns 1 = Minute is valid
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _TimeIsValidMinute( $iMinute )
  If StringIsInt( $iMinute ) Then
    If $iMinute >= 0 And $iMinute <= 59 Then
      Return 1
    Else
      Return 0
    EndIf
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Returns 1 if the specified second is valid and returns 0 if
;                   it is not.
; Syntax:           _TimeIsValidSecond( $iSecond )
; Parameter(s):     $iSecond - Second to check
; Requirement(s):   None
; Return Value(s):  On Success - Returns 0 = Second is not valid
;                                Returns 1 = Second is valid
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          None
;
;===============================================================================
Func _TimeIsValidSecond( $iSecond )
  If StringIsInt( $iSecond ) Then
    If $iSecond >= 0 And $iSecond <= 59 Then
      Return 1
    Else
      Return 0
    EndIf
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Converts the specified hours, minutes, and seconds to ticks.
; Syntax:           _TimeToTicks( $iHours, $iMins, $iSecs )
; Parameter(s):     $iHours - Hours
;                   $iMins  - Minutes
;                   $iSecs  - Seconds
; Requirement(s):   None
; Return Value(s):  On Success - Returns converted tick amount
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Marc <mrd@gmx.de>
; Note(s):          None
;
;===============================================================================
Func _TimeToTicks( $iHours, $iMins, $iSecs )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $iTicks

  If _TimeIsValidHour( $iHours ) And _TimeIsValidMinute( $iMins ) And _TimeIsValidSecond( $iSecs ) Then
    $iTicks = 1000 * ( ( 3600 * $iHours ) + ( 60 * $iMins ) + $iSecs )
    Return $iTicks
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc
