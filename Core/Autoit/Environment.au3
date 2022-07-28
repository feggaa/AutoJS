Func Environment($This)
		Local $oObj = _AutoItObject_Create($This)
        _AutoItObject_AddMethod($oObj, 'ClipGet', JS_ClipGet)
		_AutoItObject_AddMethod($oObj, 'ClipPut', JS_ClipPut)
        _AutoItObject_AddMethod($oObj, 'EnvGet', JS_EnvGet)
		_AutoItObject_AddMethod($oObj, 'EnvSet', JS_EnvSet)
		_AutoItObject_AddMethod($oObj, 'EnvUpdate', JS_EnvUpdate)
        _AutoItObject_AddMethod($oObj, 'MemGetStats', JS_MemGetStats)
        Return $oObj
EndFunc

    Func JS_ClipGet($This)
		Return $This.Return(ClipGet(),@error,@extended)
	EndFunc
	Func JS_ClipPut($This,$value)
		Return $This.Return(ClipPut($value),@error,@extended)
	EndFunc
	Func JS_EnvGet($This,$envvariable)
		Return $This.Return(EnvGet($envvariable),@error,@extended)
	EndFunc
	Func JS_EnvSet($This,$envvariable,$value = Default)
		Return $This.Return(EnvSet($envvariable,$value),@error,@extended)
	EndFunc
	Func JS_EnvUpdate($This)
		Return $This.Return(EnvUpdate(),@error,@extended)
	EndFunc

    Func JS_MemGetStats($This)
		Return $This.Return(MemGetStats(),@error,@extended)
	EndFunc