Func Registry($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'RegDelete', JS_RegDelete)
		_AutoItObject_AddMethod($oObj, 'RegEnumKey', JS_RegEnumKey)
		_AutoItObject_AddMethod($oObj, 'RegEnumVal', JS_RegEnumVal)
		_AutoItObject_AddMethod($oObj, 'RegRead', JS_RegRead)
		_AutoItObject_AddMethod($oObj, 'RegWrite', JS_RegWrite)
		Return $oObj
EndFunc

	Func JS_RegDelete($This,$keyname,$valuename = Default)
		Return $This.Return(RegDelete($keyname,$valuename),@error,@extended)
	EndFunc
	Func JS_RegEnumKey($This,$keyname,$instance)
		Return $This.Return(RegEnumKey($keyname,$instance),@error,@extended)
	EndFunc
	Func JS_RegEnumVal($This,$keyname,$instance)
		Return $This.Return(RegEnumVal($keyname,$instance),@error,@extended)
	EndFunc
	Func JS_RegRead($This,$keyname,$valuename)
		Return $This.Return(RegRead($keyname,$valuename),@error,@extended)
	EndFunc
	Func JS_RegWrite($This,$keyname,$valuename = Default,$type = Default,$value = Default)
		Return $This.Return(RegWrite($keyname,$valuename,$type,$value),@error,@extended)
	EndFunc