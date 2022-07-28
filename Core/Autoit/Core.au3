#include <File.au3>
#include <Array.au3>

Func AutoJsCore($JS,$Args = False)
	Local $require[0][2]
	Local $oObj = _AutoItObject_Create()
	_AutoItObject_AddMethod($oObj, "Exit", JS_Exit)
	_AutoItObject_AddMethod($oObj, "toArray", JS_toArray)
	_AutoItObject_AddMethod($oObj, "Array", JS_Array)
	_AutoItObject_AddMethod($oObj, "Return", JS_Return)
	_AutoItObject_AddMethod($oObj, "AutoItObject", JS_AutoItObject)
	_AutoItObject_AddMethod($oObj, "ToObject", JS_ObjectToObject)

	_AutoItObject_AddMethod($oObj, "MsgBox", JS_MsgBox)
	_AutoItObject_AddMethod($oObj, 'ConsoleRead', JS_ConsoleRead)
	_AutoItObject_AddMethod($oObj, 'ConsoleWrite', JS_ConsoleWrite)
	_AutoItObject_AddMethod($oObj, 'ConsoleWriteError', JS_ConsoleWriteError)
	_AutoItObject_AddMethod($oObj, 'InputBox', JS_InputBox)
	_AutoItObject_AddMethod($oObj, 'IsAdmin', JS_IsAdmin)
	_AutoItObject_AddMethod($oObj, 'IsArray', JS_IsArray)
	_AutoItObject_AddMethod($oObj, 'IsBinary', JS_IsBinary)
	_AutoItObject_AddMethod($oObj, 'IsBool', JS_IsBool)
	_AutoItObject_AddMethod($oObj, 'IsDeclared', JS_IsDeclared)
	_AutoItObject_AddMethod($oObj, 'IsDllStruct', JS_IsDllStruct)
	_AutoItObject_AddMethod($oObj, 'IsFloat', JS_IsFloat)
	_AutoItObject_AddMethod($oObj, 'IsFunc', JS_IsFunc)
	_AutoItObject_AddMethod($oObj, 'IsHWnd', JS_IsHWnd)
	_AutoItObject_AddMethod($oObj, 'IsInt', JS_IsInt)
	_AutoItObject_AddMethod($oObj, 'IsKeyword', JS_IsKeyword)
	_AutoItObject_AddMethod($oObj, 'IsMap', JS_IsMap)
	_AutoItObject_AddMethod($oObj, 'IsNumber', JS_IsNumber)
	_AutoItObject_AddMethod($oObj, 'IsObj', JS_IsObj)
	_AutoItObject_AddMethod($oObj, 'IsPtr', JS_IsPtr)
	_AutoItObject_AddMethod($oObj, 'IsString', JS_IsString)
	_AutoItObject_AddMethod($oObj, 'Call', JS_Call)
;~ 	_AutoItObject_AddMethod($oObj, "DLL", JS_DLL)
	_AutoItObject_AddMethod($oObj, "Sleep", JS_Sleep)

	_AutoItObject_AddMethod($oObj, 'DllCall', JS_DllCall)
	_AutoItObject_AddMethod($oObj, 'DllCallAddress', JS_DllCallAddress)
	_AutoItObject_AddMethod($oObj, 'DllCallbackFree', JS_DllCallbackFree)
	_AutoItObject_AddMethod($oObj, 'DllCallbackGetPtr', JS_DllCallbackGetPtr)
	_AutoItObject_AddMethod($oObj, 'DllCallbackRegister', JS_DllCallbackRegister)
	_AutoItObject_AddMethod($oObj, 'DllClose', JS_DllClose)
	_AutoItObject_AddMethod($oObj, 'DllOpen', JS_DllOpen)
	_AutoItObject_AddMethod($oObj, 'DllStructCreate', JS_DllStructCreate)
	_AutoItObject_AddMethod($oObj, 'DllStructGetData', JS_DllStructGetData)
	_AutoItObject_AddMethod($oObj, 'DllStructGetPtr', JS_DllStructGetPtr)
	_AutoItObject_AddMethod($oObj, 'DllStructGetSize', JS_DllStructGetSize)
	_AutoItObject_AddMethod($oObj, 'DllStructSetData', JS_DllStructSetData)


	_AutoItObject_AddMethod($oObj, "require", JS_Require)
	_AutoItObject_AddProperty($oObj, "index", $ELSCOPE_PUBLIC, @ScriptDir & '/UI/index.html')
	_AutoItObject_AddProperty($oObj, "requireList", $ELSCOPE_PUBLIC, $require)
;~ 	_AutoItObject_AddProperty($oObj, "Macro", $ELSCOPE_PUBLIC, _Macro())
	_AutoItObject_AddProperty($oObj, "JS", $ELSCOPE_PUBLIC,$JS)

	_AutoItObject_AddProperty($oObj, "Obj_Autoit", $ELSCOPE_READONLY,Autoit)
	_AutoItObject_AddProperty($oObj, "Obj_AutoitObj", $ELSCOPE_READONLY,AutoitObj)
;~ 	_AutoItObject_AddProperty($oObj, "Obj_DLL", $ELSCOPE_READONLY,DLL)
	_AutoItObject_AddProperty($oObj, "Obj_Files", $ELSCOPE_READONLY,Files)
	_AutoItObject_AddProperty($oObj, "Obj_GUI", $ELSCOPE_READONLY,GUI)
	_AutoItObject_AddProperty($oObj, "Obj_Mouse", $ELSCOPE_READONLY,Mouse)
	_AutoItObject_AddProperty($oObj, "Obj_Network", $ELSCOPE_READONLY,Network)
	_AutoItObject_AddProperty($oObj, "Obj_Process", $ELSCOPE_READONLY,Process)
	_AutoItObject_AddProperty($oObj, "Obj_Registry", $ELSCOPE_READONLY,Registry)
;~ 	_AutoItObject_AddProperty($oObj, "Obj_Strings", $ELSCOPE_READONLY,Strings)
	_AutoItObject_AddProperty($oObj, "Obj_Tray", $ELSCOPE_READONLY,Tray)
	_AutoItObject_AddProperty($oObj, "Obj_Windows", $ELSCOPE_READONLY,Windows)
	_AutoItObject_AddProperty($oObj, "Obj_Environment", $ELSCOPE_READONLY,Environment)
	If $Args Then _AutoItObject_AddProperty($oObj, "Args", $ELSCOPE_PUBLIC)
	Return $oObj
EndFunc   ;==>_WebGUI

Func JS_Require($This,$file)
	Local $require = $This.requireList
	Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
	_PathSplit($file, $sDrive, $sDir, $sFileName, $sExtension)
	Local $FullPath = _PathFull(StringReplace($file,"../","./"))
;~ 	Local $ScriptDir = $sDrive&$sDir
	;ConsoleWrite(@CRLF&"-------> "&$FullPath)
	Local $index = _ArraySearch($require,$FullPath)
	If @error Then
		Local $Load = FileRead($FullPath)
		Local $object = $This.JS.Eval("(function() { var _Autoit_ = 0;"&$Load&"})();")
		Local $temp[1][2] = [[$FullPath,$object]]
		_ArrayAdd($require,$temp)
		$This.requireList = $require
		Return $object
	Else
		Return $require[$index][1]
	EndIf
 	;If $object <> "" then Return $oSC.Eval("new "&$object&"()")
EndFunc

Func JS_Exit($This,$code = 0)
	ConsoleWrite(@CRLF&"Exit From Js")
	Exit($code)
	Return $This
EndFunc

Func JS_Array($This,$arr)
	Local $len = $arr.length
	Local $PreArray[$len]
		For $i = 0 to $len-1
			$PreArray[$i] = $arr.item($i)
		Next
	Return $PreArray
	Return $This
EndFunc

Func JS_toArray($This,$Array)
;~ 	MsgBox(0,NGetId(),'From '&$When)
;~ 	MsgBox(0,$Array[0],'From')
	Local $nArray = $This.JS.Eval("new Array()")
;~ 	MsgBox(0,VarGetType($nArray),'After')
	For $item in $Array
		$nArray.push($item)
	Next
	Return $nArray
EndFunc
Func JS_Return($This,$Return,$Error,$Extended)
	Local $nArray = $This.JS.Eval('new Array(null,'&$Error&','&$Extended&')')

;~ 		If $Error Then Return $nArray
		If IsArray($Return) Then
			Local $len = UBound($Return)
			Local $newArray = $This.JS.Eval("new Array("&$len&")")
			For $i = 0 To $len-1
				$newArray.setitem($i,$Return[$i])
			Next
			$nArray.setitem(0,$newArray)
		Else
			$nArray.setitem(0,$Return)
		EndIf
	Return $nArray
EndFunc

Func JS_AutoItObject($This,$FuncObj)
	Return $FuncObj($This)
EndFunc

	Func JS_ObjectToObject($This,$Object)
		Local $NewObject = _AutoItObject_Create()
		ObjectToObject($Object,$NewObject)
		Return $NewObject
		Return $This
	EndFunc
	Func ObjectToObject($From,$To)
		ConsoleWrite(@CRLF&"Call ObjectToObject")
		Local $Keys = $From.Keys()
		ConsoleWrite(@CRLF&"$From.Keys()")
		For $key in $Keys
			If IsObj($key) Then ContinueLoop
			If IsObj($From.item($key)) Then
				Local $nObj = _AutoItObject_Create()
				_AutoItObject_AddProperty($To,$key,0,$nObj)
				ObjectToObject($From.item($key),$nObj)
			Else
				_AutoItObject_AddProperty($To,$key,0,$From.item($key))
			EndIf
		Next
	EndFunc
