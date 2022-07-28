#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Autoit\icon.ico
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Fileversion=1.0
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
If $CmdLine[0] > 0 Then
	If FileExists($CmdLine[1]) Then
		Global $Script = $CmdLine[1]
	Else
		ConsoleWriteError(@CRLF&"Error : "&$CmdLine[1])
		Exit
	EndIf
Else
	ConsoleWrite(@CRLF&"AutoJs -v 1.0")
	Exit
EndIf
#Region Autoit Function
	#include "Core/Autoit/AutoItObject.au3"
	#include "Core/Autoit/Autoit.au3"
	#include "Core/Autoit/AutoitObj.au3"
	#include "Core/Autoit/DLL.au3"
	#include "Core/Autoit/Files.au3"
	#include "Core/Autoit/GUI.au3"
	#include "Core/Autoit/Mouse.au3"
	#include "Core/Autoit/Network.au3"
	#include "Core/Autoit/Process.au3"
	#include "Core/Autoit/Registry.au3"
	#include "Core/Autoit/Tray.au3"
	#include "Core/Autoit/Windows.au3"
	#include "Core/Autoit/Environment.au3"
	#include "Core/Autoit/Core.au3"
#EndRegion
#Region Autoit include
	#include <Array.au3>
	#include <File.au3>
#EndRegion
Global $oHelper
Global $Autoit = @AutoItX64 ? @ScriptDir&'/Autoit/AutoIt3_x64.exe' : @ScriptDir&'/Autoit/AutoIt3.exe'

_AutoItObject_StartUp()
$AutoItError = ObjEvent("AutoIt.Error", "ErrFunc") ; Install a custom error handler
Func ErrFunc($oError)
	ConsoleWrite("!>COM Error !"&@CRLF&"!>"&@TAB&"Number: "&Hex($oError.Number,8)&@CRLF&"!>"&@TAB&"Windescription: "&StringRegExpReplace($oError.windescription,"\R$","")&@CRLF&"!>"&@TAB&"Source: "&$oError.source&@CRLF&"!>"&@TAB&"Description: "&$oError.description&@CRLF&"!>"&@TAB&"Helpfile: "&$oError.helpfile&@CRLF&"!>"&@TAB&"Helpcontext: "&$oError.helpcontext&@CRLF&"!>"&@TAB&"Lastdllerror: "&$oError.lastdllerror&@CRLF&"!>"&@TAB&"Scriptline: "&$oError.scriptline&@CRLF)
	Exit
EndFunc ;==>ErrFunc

	$Helper = Helper()

	$JsCore = FileRead(@ScriptDir&'/Core/core.js')
	Global $oSC = ObjCreate("ScriptControl")
	$oSC.language = "javascript"
	$oSC.Timeout = 200000000
	$oAutoit = AutoJsCore($oSC)
	$JsIndex = FileRead($Script)
	$oSC.AddObject("$AutoIt",$oAutoit,True)
	$oSC.AddObject("$Thread",$Helper.Context)
	$oSC.AddObject("$JScript",$oSC)
	$oSC.Eval($JsCore)
	$Main = $oSC.Eval($JsIndex)
	While 1
		Sleep(500)
;~ 		If Not ProcessExists($Helper.PID) Then Exit
	WEnd

	Func Helper($init = True)
		$Obj = _AutoItObject_Create()
		_AutoItObject_AddMethod($Obj,"Create",__HelperCreate)
		_AutoItObject_AddProperty($Obj,"Context",$ELSCOPE_READONLY)
		_AutoItObject_AddProperty($Obj,"PID",$ELSCOPE_READONLY)
		If $init Then $Obj.Create()
		Return $Obj
	EndFunc

	Func __HelperCreate($This,$a3x = True)
		Local $oHelper
		If $a3x Then
			$PID = Run($Autoit & ' '&@ScriptDir&'/ThreadHelper/ThreadHelper.a3x '&@AutoItPID,@ScriptDir,@SW_HIDE,$STDIN_CHILD)
		Else
			$PID = Run(@ScriptDir&'/ThreadHelper/ThreadHelper.exe '&@AutoItPID,@ScriptDir,@SW_HIDE,$STDIN_CHILD)
		EndIf
		$This.PID = $PID
		For $w = 0 To 10
			$oHelper = _AutoItObject_ObjCreate("cbi:{D07F2984-ADCF-47CD-99A9-D3AA"&@AutoItPID&"EE}")
			If IsObj($oHelper) Then
				$This.Context = $oHelper
				Return True
			EndIf
			Sleep(100)
		Next
		Return False
	EndFunc

	Func UI_Helper()
		$Obj = _AutoItObject_Create()
		_AutoItObject_AddMethod($Obj,"ConsoleWrite",__UIConsoleWrite)
		Return $Obj
	EndFunc
	Func __UIConsoleWrite($This,$Data)
		ConsoleWrite($Data)
	EndFunc
