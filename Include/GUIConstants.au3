#include-once

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Description:    Constants to be used in GUI applications.
;
; ------------------------------------------------------------------------------


; State
Global $GUI_CHECKED			= 1
Global $GUI_INDETERMINATE	= 2
Global $GUI_UNCHECKED		= 4

Global $GUI_ACCEPTFILES		= 8

Global $GUI_SHOW			= 16
Global $GUI_HIDE 			= 32
Global $GUI_ENABLE			= 64
Global $GUI_DISABLE			= 128

Global $GUI_FOCUS			= 256
Global $GUI_DEFBUTTON		= 512


; Notify
Global $GUI_CLOSE			= 1
Global $GUI_SUBMIT			= 2
Global $GUI_CANCEL			= 0


; Font
Global $GUI_FONTITALIC		= 2
Global $GUI_FONTUNDER		= 4
Global $GUI_FONTSTRIKE		= 8


; Resizing
Global $GUI_DOCKAUTO		= 1
Global $GUI_DOCKLEFT		= 2
Global $GUI_DOCKRIGHT		= 4
Global $GUI_DOCKHCENTER		= 8
Global $GUI_DOCKTOP			= 32
Global $GUI_DOCKBOTTOM		= 64
Global $GUI_DOCKVCENTER		= 128
Global $GUI_DOCKWIDTH		= 256
Global $GUI_DOCKHEIGHT		= 512

Global $GUI_DOCKSIZE		= 768	; width+height
Global $GUI_DOCKMENUBAR		= 544	; top+height
Global $GUI_DOCKSTATEBAR	= 576	; bottom+height
Global $GUI_DOCKALL			= 802	; left+top+width+height


; Window Styles 
Global $WS_BORDER			= 0x00800000
Global $WS_POPUP			= 0x80000000
Global $WS_CAPTION			= 0x00C00000
Global $WS_DISABLED 		= 0x08000000
Global $WS_DLGFRAME 		= 0x00400000
Global $WS_HSCROLL			= 0x00100000
Global $WS_MAXIMIZE			= 0x01000000
Global $WS_MAXIMIZEBOX		= 0x00010000
Global $WS_MINIMIZE			= 0x20000000
Global $WS_MINIMIZEBOX		= 0x00020000
Global $WS_OVERLAPPED 		= 0
Global $WS_OVERLAPPEDWINDOW = 0x00CF0000
Global $WS_POPUPWINDOW		= 0x80880000
Global $WS_SIZEBOX			= 0x00040000
Global $WS_SYSMENU			= 0x00080000
Global $WS_THICKFRAME		= 0x00040000
Global $WS_TILED			= 0
Global $WS_TILEDWINDOW		= 0x00CF0000
Global $WS_VSCROLL			= 0x00200000
Global $WS_VISIBLE			= 0x10000000
Global $WS_CHILD			= 0x40000000
Global $WS_GROUP			= 0x00020000
Global $WS_TABSTOP			= 0x00010000


; Window Extended Styles
Global $WS_EX_ACCEPTFILES		= 0x00000010
Global $WS_EX_APPWINDOW			= 0x00040000
Global $WS_EX_CLIENTEDGE		= 0x00000200
Global $WS_EX_CONTEXTHELP		= 0x00000400
Global $WS_EX_DLGMODALFRAME 	= 0x00000001
Global $WS_EX_LEFTSCROLLBAR 	= 0x00004000
Global $WS_EX_OVERLAPPEDWINDOW	= 0x00000300
Global $WS_EX_RIGHT				= 0x00001000
Global $WS_EX_STATICEDGE		= 0x00020000
Global $WS_EX_TOOLWINDOW		= 0x00000080
Global $WS_EX_TOPMOST			= 0x00000008
Global $WS_EX_TRANSPARENT		= 0x00000020
Global $WS_EX_WINDOWEDGE		= 0x00000100
Global $WS_EX_LAYERED			= 0x00080000


; Label
Global $SS_NOTIFY			= 0x0100
Global $SS_BLACKFRAME		= 7
Global $SS_BLACKRECT		= 4
Global $SS_CENTER			= 1
Global $SS_ETCHEDFRAME		= 18
Global $SS_ETCHEDHORZ		= 16
Global $SS_ETCHEDVERT		= 17
Global $SS_GRAYFRAME		= 8
Global $SS_GRAYRECT			= 5
Global $SS_LEFTNOWORDWRAP	= 12
Global $SS_NOPREFIX			= 0x0080
Global $SS_RIGHT			= 2
Global $SS_RIGHTJUST		= 0x0400
Global $SS_SIMPLE			= 11
Global $SS_SUNKEN			= 0x1000
Global $SS_WHITEFRAME		= 9
Global $SS_WHITERECT		= 6


; Button
Global $BS_BOTTOM			= 2048
Global $BS_CENTER			= 768
Global $BS_DEFPUSHBUTTON	= 1
Global $BS_LEFT				= 256
Global $BS_MULTILINE		= 8192
Global $BS_PUSHBOX			= 10
Global $BS_PUSHLIKE			= 4096
Global $BS_RIGHT			= 512
Global $BS_RIGHTBUTTON		= 32
Global $BS_TOP				= 1024
Global $BS_VCENTER			= 3072
Global $BS_FLAT				= 32768


; Combo
Global $CBS_AUTOHSCROLL		= 64
Global $CBS_DISABLENOSCROLL	= 2048
Global $CBS_DROPDOWN		= 2
Global $CBS_DROPDOWNLIST	= 3
Global $CBS_LOWERCASE		= 16384
Global $CBS_NOINTEGRALHEIGHT = 1024
Global $CBS_OEMCONVERT		= 128
Global $CBS_SIMPLE			= 1
Global $CBS_SORT			= 256
Global $CBS_UPPERCASE		= 8192


; Listbox
Global $LBS_DISABLENOSCROLL	= 4096
Global $LBS_NOINTEGRALHEIGHT= 256
Global $LBS_NOSEL			= 16384
Global $LBS_SORT			= 2
Global $LBS_STANDARD		= 10485763
Global $LBS_USETABSTOPS		= 128


; Edit/Input
Global $ES_MULTILINE		= 4
Global $ES_AUTOHSCROLL		= 128
;Global $ES_DISABLENOSCROLL = 8192
Global $ES_AUTOVSCROLL		= 64
Global $ES_CENTER			= 1
;Global $ES_SUNKEN = 16384
Global $ES_LOWERCASE		= 16
Global $ES_NOHIDESEL		= 256
Global $ES_NUMBER			= 8192
Global $ES_OEMCONVERT		= 1024
;Global $ES_VERTICAL = 4194304
;Global $ES_SELECTIONBAR = 16777216
Global $ES_PASSWORD			= 32
Global $ES_READONLY			= 2048
Global $ES_RIGHT			= 2
Global $ES_UPPERCASE		= 8
Global $ES_WANTRETURN		= 4096


; Date
Global $DTS_UPDOWN			= 1
Global $DTS_SHOWNONE		= 2
Global $DTS_LONGDATEFORMAT	= 4
Global $DTS_TIMEFORMAT		= 9
Global $DTS_RIGHTALIGN		= 32


; Progress bar
Global $PBS_SMOOTH			= 1
Global $PBS_VERTICAL		= 4


; AVI clip
Global $ACS_CENTER			= 1
Global $ACS_AUTOPLAY		= 4
Global $ACS_TIMER			= 8
Global $ACS_NONTRANSPARENT	= 16


;Tab
Global $TCS_SCROLLOPPOSITE	= 0x0001
Global $TCS_BOTTOM			= 0x0002
Global $TCS_RIGHT			= 0x0002
Global $TCS_MULTISELECT		= 0x0004 
Global $TCS_FLATBUTTONS		= 0x0008
Global $TCS_FORCEICONLEFT	= 0x0010
Global $TCS_FORCELABELLEFT	= 0x0020
Global $TCS_HOTTRACK		= 0x0040
Global $TCS_VERTICAL		= 0x0080
Global $TCS_TABS			= 0x0000
Global $TCS_BUTTONS			= 0x0100
Global $TCS_SINGLELINE		= 0x0000
Global $TCS_MULTILINE		= 0x0200
Global $TCS_RIGHTJUSTIFY	= 0x0000
Global $TCS_FIXEDWIDTH		= 0x0400
Global $TCS_RAGGEDRIGHT		= 0x0800
Global $TCS_FOCUSONBUTTONDOWN = 0x1000
Global $TCS_OWNERDRAWFIXED	= 0x2000
Global $TCS_TOOLTIPS		= 0x4000
Global $TCS_FOCUSNEVER		= 0x8000

