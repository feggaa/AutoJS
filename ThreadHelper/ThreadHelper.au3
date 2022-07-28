#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile_type=a3x
#AutoIt3Wrapper_Outfile=D:\!!DevLineTech\AutoJS\ThreadHelper\ThreadHelper.a3x
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_AU3Check_Parameters=-w 1 -w 2 -w 3 -w 4 -w 5 -w 6
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Opt("MustDeclareVars", 1)
#include <WinAPIProc.au3>
Global $_PID = _WinAPI_GetParentProcess (@AutoItPID)
If $CmdLine[0] = 0 Or $_PID <> $CmdLine[1] Then
	MsgBox(16, "Error", "This program is part of the AutoJS and cannot be started separately!")
	Exit
EndIf
#include "N.au3"
#include "../Core/Autoit/AutoItObject.au3"
#include "../Core/Autoit/Autoit.au3"
#include "../Core/Autoit/AutoitObj.au3"
#include "../Core/Autoit/Files.au3"
#include "../Core/Autoit/GUI.au3"
#include "../Core/Autoit/Mouse.au3"
#include "../Core/Autoit/Network.au3"
#include "../Core/Autoit/Process.au3"
#include "../Core/Autoit/Registry.au3"
#include "../Core/Autoit/Tray.au3"
#include "../Core/Autoit/Windows.au3"
#include "../Core/Autoit/Environment.au3"
#include "../Core/Autoit/Core.au3"
#include <WinAPIHObj.au3>
#include <WinAPIProc.au3>

Global $AutoItError = ObjEvent("AutoIt.Error", "ErrFunc") ; Install a custom error handler
Func ErrFunc($oError)
	Local $Errox = "!>COM Error !"&@CRLF&"!>"&@TAB&"Number: "&Hex($oError.Number,8)&@CRLF&"!>"&@TAB&"Windescription: "&StringRegExpReplace($oError.windescription,"\R$","")&@CRLF&"!>"&@TAB&"Source: "&$oError.source&@CRLF&"!>"&@TAB&"Description: "&$oError.description&@CRLF&"!>"&@TAB&"Helpfile: "&$oError.helpfile&@CRLF&"!>"&@TAB&"Helpcontext: "&$oError.helpcontext&@CRLF&"!>"&@TAB&"Lastdllerror: "&$oError.lastdllerror&@CRLF&"!>"&@TAB&"Scriptline: "&$oError.scriptline&@CRLF
	ConsoleWrite($Errox)
	MsgBox(16,'AutoIt.Error',$Errox)
	Exit
EndFunc ;==>ErrFunc
If Not _AutoItObject_StartUp() Then _AutoItObject_StartUp(True)
global $Var = NGlobal()
	$Var.Data = "Empty"
Func Main()
	Local $Object = Helper()
	_AutoItObject_RegisterObject($Object, "{D07F2984-ADCF-47CD-99A9-D3AA"&$_PID&"EE}")
	While 1
		If Not ProcessExists($_PID) Then Exit
		Sleep(50)
	WEnd
EndFunc

NMain('Main')

Func RunJS($This)
	$This.Start = True
	Local $Script = $This.Script
	ConsoleWrite(@CRLF&'Load Script')
	Local $nSC = ObjCreate("ScriptControl")
	$nSC.language = "javascript"
	$nSC.Timeout = 200000000
	$nSC.AddObject("JScript",$nSC)
	Local $oAutoit = AutoJsCore($nSC,True)

	If IsArray($This.Args) Then
		$oAutoit.Args = $oAutoit.toArray($This.Pipe.Data)
	Else
		$oAutoit.Args = $This.Pipe.Data
	EndIf
	$nSC.AddObject("$AutoIt",$oAutoit,True)
	$nSC.AddObject("$Thread",$This)
	$nSC.AddObject("$Pipe",$This.Pipe)
	Local $JsCore = FileRead('Core/core.js')
	$nSC.Eval($JsCore)
	$nSC.Eval("(function() { var _Autoit_ = 0;new "&$Script&";return true})();")
	While $This.Loop
		Sleep(1000)
	WEnd
	ConsoleWrite(@CRLF&'Thread Terminated')
EndFunc

Func Helper()
	Local $Obj = _AutoItObject_Create()
	_AutoItObject_AddMethod($Obj,"Run",__HelperRunThread)
	_AutoItObject_AddMethod($Obj,"Terminate",__HelperTerminateThread)
	Return $Obj
EndFunc

Func __HelperTerminateThread($This)
	NTerminate($This.ID)
EndFunc
Func __HelperRunThread($This,$Script,$Args = "")
	If IsObj($Args) And $Args.isArray() Then
		$Args = JS_Array(0,$Args)
	ElseIf IsObj($Args) Then
		Local $NewObject = _AutoItObject_Create()
		ObjectToObject($Args,$NewObject)
		$Args = $NewObject
	EndIf

	Local $Pipe = _AutoItObject_Create()
	_AutoItObject_AddMethod($Pipe,"Set",ObjectSetPipe)
	_AutoItObject_AddMethod($Pipe,"Terminate",__HelperTerminateThread)
	_AutoItObject_AddProperty($Pipe,"Data",$ELSCOPE_READONLY,$Args)

	ConsoleWrite(@CRLF&'Worker New Object')
	Local $Obj = NLocal()
	$Obj.Script = $Script
	$Obj.Pipe 	= $Pipe
	$Obj.Start 	= False
	$Obj.Loop 	= True


	ConsoleWrite(@CRLF&'Run Thread')
	Local $ID = NRun('RunJS',$Obj)
	For $i = 0 To 20
		Sleep(50)
		If $Obj.Start Then ExitLoop
	Next
	_AutoItObject_AddProperty($Pipe,"ID",$ELSCOPE_PRIVATE,$ID)
	Return $Pipe;$Obj.Obj
	Return $This
EndFunc

Func ObjectSetPipe($This,$Data)
	ConsoleWrite(@CRLF&"Call ObjectSetPipe")
	If IsObj($Data) Then
		ConsoleWrite(@CRLF&"Call _AutoItObject_Create")
		Local $New = _AutoItObject_Create()
		ConsoleWrite(@CRLF&"Call ObjectToObject")
		ObjectToObject($Data,$New)
		ConsoleWrite(@CRLF&"Call $This.Data = $New")
		$This.Data = $New
		ConsoleWrite(@CRLF&"Return")
	Else
		$This.Data = $Data
	EndIf
EndFunc
