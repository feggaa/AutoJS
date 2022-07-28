Func AutoItObj($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'ObjCreate', JS_ObjCreate)
		_AutoItObject_AddMethod($oObj, 'ObjCreateInterface', JS_ObjCreateInterface)
		_AutoItObject_AddMethod($oObj, 'ObjEvent', JS_ObjEvent)
		_AutoItObject_AddMethod($oObj, 'ObjGet', JS_ObjGet)
		_AutoItObject_AddMethod($oObj, 'ObjName', JS_ObjName)
		Return $oObj
EndFunc

	Func JS_ObjCreate($This,$classname,$servername = Default,$username = Default,$password = Default)
		Return $This.Return(ObjCreate($classname,$servername,$username,$password),@error,@extended)
	EndFunc
	Func JS_ObjCreateInterface($This,$CLSID ,$IID,$interface_description = Default,$flag = True)
		Return $This.Return(ObjCreateInterface($CLSID ,$IID,$interface_description,$flag),@error,@extended)
	EndFunc
	Func JS_ObjEvent($This,$ObjectVar,$functionprefix = Default,$interface_name = Default)
		Return $This.Return(ObjEvent($ObjectVar,$functionprefix,$interface_name),@error,@extended)
	EndFunc
	Func JS_ObjGet($This,$filename,$classname = Default,$instance = Default)
		Return $This.Return(ObjGet($filename,$classname,$instance),@error,@extended)
	EndFunc
	Func JS_ObjName($This,$Objectvariable,$Flag = 1)
		Return $This.Return(ObjName($Objectvariable,$Flag),@error,@extended)
	EndFunc