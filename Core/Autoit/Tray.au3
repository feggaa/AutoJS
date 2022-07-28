Func Tray($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'TrayCreateItem', JS_TrayCreateItem)
		_AutoItObject_AddMethod($oObj, 'TrayCreateMenu', JS_TrayCreateMenu)
		_AutoItObject_AddMethod($oObj, 'TrayGetMsg', JS_TrayGetMsg)
		_AutoItObject_AddMethod($oObj, 'TrayItemDelete', JS_TrayItemDelete)
		_AutoItObject_AddMethod($oObj, 'TrayItemGetHandle', JS_TrayItemGetHandle)
		_AutoItObject_AddMethod($oObj, 'TrayItemGetState', JS_TrayItemGetState)
		_AutoItObject_AddMethod($oObj, 'TrayItemGetText', JS_TrayItemGetText)
		_AutoItObject_AddMethod($oObj, 'TrayItemSetOnEvent', JS_TrayItemSetOnEvent)
		_AutoItObject_AddMethod($oObj, 'TrayItemSetState', JS_TrayItemSetState)
		_AutoItObject_AddMethod($oObj, 'TrayItemSetText', JS_TrayItemSetText)
		_AutoItObject_AddMethod($oObj, 'TraySetClick', JS_TraySetClick)
		_AutoItObject_AddMethod($oObj, 'TraySetIcon', JS_TraySetIcon)
		_AutoItObject_AddMethod($oObj, 'TraySetOnEvent', JS_TraySetOnEvent)
		_AutoItObject_AddMethod($oObj, 'TraySetPauseIcon', JS_TraySetPauseIcon)
		_AutoItObject_AddMethod($oObj, 'TraySetState', JS_TraySetState)
		_AutoItObject_AddMethod($oObj, 'TraySetToolTip', JS_TraySetToolTip)
		_AutoItObject_AddMethod($oObj, 'TrayTip', JS_TrayTip)
		Return $oObj
EndFunc

	Func JS_TrayCreateItem($This,$text,$menuID = -1,$menuentry = -1,$menuradioitem = 0)
		Return $This.Return(TrayCreateItem($text,$menuID,$menuentry,$menuradioitem),@error,@extended)
	EndFunc
	Func JS_TrayCreateMenu($This,$sub_menutext,$menuID = -1,$menuentry = -1)
		Return $This.Return(TrayCreateMenu($sub_menutext,$menuID,$menuentry),@error,@extended)
	EndFunc
	Func JS_TrayGetMsg($This)
		Return $This.Return(TrayGetMsg(),@error,@extended)
	EndFunc
	Func JS_TrayItemDelete($This,$controlID)
		Return $This.Return(TrayItemDelete($controlID),@error,@extended)
	EndFunc
	Func JS_TrayItemGetHandle($This,$controlID)
		Return $This.Return(TrayItemGetHandle($controlID),@error,@extended)
	EndFunc
	Func JS_TrayItemGetState($This,$controlID)
		Return $This.Return(TrayItemGetState($controlID),@error,@extended)
	EndFunc
	Func JS_TrayItemGetText($This,$controlID)
		Return $This.Return(TrayItemGetText($controlID),@error,@extended)
	EndFunc
	Func JS_TrayItemSetOnEvent($This,$itemID,$function)
		Return $This.Return(TrayItemSetOnEvent($itemID,$function),@error,@extended)
	EndFunc
	Func JS_TrayItemSetState($This,$controlID,$state)
		Return $This.Return(TrayItemSetState($controlID,$state),@error,@extended)
	EndFunc
	Func JS_TrayItemSetText($This,$controlID,$text)
		Return $This.Return(TrayItemSetText($controlID,$text),@error,@extended)
	EndFunc
	Func JS_TraySetClick($This,$flag)
		Return $This.Return(TraySetClick($flag),@error,@extended)
	EndFunc
	Func JS_TraySetIcon($This,$filename,$iconID)
		Return $This.Return(TraySetIcon($filename,$iconID),@error,@extended)
	EndFunc
	Func JS_TraySetOnEvent($This,$specialID,$function)
		Return $This.Return(TraySetOnEvent($specialID,$function),@error,@extended)
	EndFunc
	Func JS_TraySetPauseIcon($This,$filename,$iconID)
		Return $This.Return(TraySetPauseIcon($filename,$iconID),@error,@extended)
	EndFunc
	Func JS_TraySetState($This,$flag = 1)
		Return $This.Return(TraySetState($flag),@error,@extended)
	EndFunc
	Func JS_TraySetToolTip($This,$text)
		Return $This.Return(TraySetToolTip($text),@error,@extended)
	EndFunc
	Func JS_TrayTip($This,$title,$text,$timeout,$option = 0)
		Return $This.Return(TrayTip($title,$text,$timeout,$option = 0),@error,@extended)
	EndFunc