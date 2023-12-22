#include-once

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Description:    Functions that assist with files and directories.
;
; ------------------------------------------------------------------------------


;===============================================================================
;
; Description:      Deletes the contents of a directory/folder.
; Syntax:           _DirRemoveContents( $sPath )
; Parameter(s):     $sPath - Path to the directory to delete the contents of
; Requirement(s):   None
; Return Value(s):  On Success - Returns 1 (errors deleting sub-dirs are
;                                ignored)
;                   On Failure - Returns 0 if there is an error removing the
;                                directory (or if directory does not exist)
; Author(s):        Jonathan Bennett <jon@hiddensoft com>
; Note(s):          None
;
;===============================================================================
Func _DirRemoveContents( $sPath )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $sPattern
  Local $sFile
  Local $hFile

  If StringRight( $sPath, 1 ) <> "\" Then $sPath = $sPath & "\"
  $sPattern = $sPath & "*.*"

  If Not FileExists( $sPath ) Then Return 0

  FileDelete( $sPattern )

  $hFile = FileFindFirstFile( $sPattern )
  If @error Then Return 0

  While 1
    $sFile = FileFindNextFile( $hFile )
    If @error Then ExitLoop

    If $sFile <> "." And $sFile <> ".." Then
      If StringInStr( FileGetAttrib( $sPath & $sFile ), "D" ) Then
        DirRemove( $sPath & $sFile, 1 )
      EndIf   
    EndIf
  WEnd

  FileClose( $hFile )
  Return 1
EndFunc


;===============================================================================
;
; Description:      Appends the specified text to a file.
; Syntax:           _FileAppend( $sFilePath, $sText )
; Parameter(s):     $sFilePath - Path and filename to the file
;                   $sText     - Text to be appended to the file
; Requirement(s):   None
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets:
;                                @error = 1: Error opening specified file
;                                @error = 2: File could not be written to
; Author(s):        Brian Keene <brian_keene@yahoo.com>
; Note(s):          If the text to be appended does NOT end in @CR or @LF then
;                   a DOS linefeed (@CRLF) will be automatically added.
;
;===============================================================================
Func _FileAppend( $sFilePath, $sText )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $hOpenFile
  Local $hWriteFile

  $hOpenFile = FileOpen( $sFilePath, 1 )

  If $hOpenFile = -1 Then
    SetError( 1 )
    Return 0
  EndIf

  $hWriteFile = FileWriteLine( $hOpenFile, $sText )

  If $hWriteFile = -1 Then
    SetError( 2 )
    Return 0
  EndIf

  FileClose( $hOpenFile )
  Return 1
EndFunc


;===============================================================================
;
; Description:      Returns the number of lines in the specified file.
; Syntax:           _FileCountLines( $sFilePath )
; Parameter(s):     $sFilePath - Path and filename of the file to be read
; Requirement(s):   None
; Return Value(s):  On Success - Returns number of lines in the file
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        J. Sierra <mrjosbe@yahoo.com>
; Note(s):          None
;
;===============================================================================
Func _FileCountLines( $sFilePath )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $hFile
  Local $iLines

  $hFile = FileOpen($sFilePath, 0)
  If $hFile <> -1 Then
    While 1
      FileReadLine( $hFile )
      If @error = -1 Then ExitLoop
      $iLines = $iLines + 1
    Wend
    FileClose($hFile)
    Return $iLines
  Else
    SetError( 1 )
    Return 0
  EndIf
EndFunc


;===============================================================================
;
; Description:      Creates or zero's out the length of the file specified.
; Syntax:           _FileCreate( $sFilePath )
; Parameter(s):     $sFilePath - Path and filename of the file to be created
; Requirement(s):   None
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets:
;                                @error = 1: Error opening specified file
;                                @error = 2: File could not be written to
; Author(s):        Brian Keene <brian_keene@yahoo.com>
; Note(s):          None
;
;===============================================================================
Func _FileCreate( $sFilePath )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $hOpenFile
  Local $hWriteFile

  $hOpenFile = FileOpen( $sFilePath, 2 )

  If $hOpenFile = -1 Then
    SetError( 1 )
    Return 0
  EndIf

  $hWriteFile = FileWrite( $hOpenFile, "" )

  If $hWriteFile = -1 Then
    SetError( 2 )
    Return 0
  EndIf

  FileClose( $hOpenFile )
  Return 1
EndFunc


;===============================================================================
;
; Description:      Reads the specified file into an array.
; Syntax:           _FileReadToArray( $sFilePath, $aArray )
; Parameter(s):     $sFilePath - Path and filename of the file to be read
;                   $aArray    - The array to store the contents of the file
; Requirement(s):   None
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @error = 1
; Author(s):        Jonathan Bennett <jon@hiddensoft.com>
; Note(s):          None
;
;===============================================================================
Func _FileReadToArray( $sFilePath, ByRef $aArray )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $hFile
    
  $hFile = FileOpen( $sFilePath, 0 )

  If $hFile = -1 Then
    SetError( 1 )
    Return 0
  EndIf

  $aArray = StringSplit( FileReadLine( $hFile, FileGetSize( $sFilePath ) ), @LF )

  FileClose( $hFile )
  Return 1
EndFunc


;===============================================================================
;
; Description:      Writes the specified text to a log file.
; Syntax:           _FileWriteLog( $sLogPath, $sLogMsg )
; Parameter(s):     $sLogPath - Path and filename to the log file
;                   $sLogMsg  - Message to be written to the log file
; Requirement(s):   None
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets:
;                                @error = 1: Error opening specified file
;                                @error = 2: File could not be written to
; Author(s):        Jeremy Landes <jlandes@landeserve.com>
; Note(s):          If the text to be appended does NOT end in @CR or @LF then
;                   a DOS linefeed (@CRLF) will be automatically added.
;
;===============================================================================
Func _FileWriteLog( $sLogPath, $sLogMsg )
  ;==============================================
  ; Local Constant/Variable Declaration Section
  ;==============================================
  Local $sDateNow
  Local $sTimeNow
  Local $sMsg
  Local $hOpenFile
  Local $hWriteFile

  $sDateNow = @YEAR & "-" & @MON & "-" & @MDAY
  $sTimeNow = @Hour & ":" & @MIN & ":" & @SEC
  $sMsg = $sDateNow & " " & $sTimeNow & " : " & $sLogMsg

  $hOpenFile = FileOpen( $sLogPath, 1 )

  If $hOpenFile = -1 Then
    SetError( 1 )
    Return 0
  EndIf

  $hWriteFile = FileWriteLine( $hOpenFile, $sMsg )

  If $hWriteFile = -1 Then
    SetError( 2 )
    Return 0
  EndIf

  FileClose( $hOpenFile )
  Return 1
EndFunc
