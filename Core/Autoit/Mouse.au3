Func Mouse($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'MouseClick', JS_MouseClick)
		_AutoItObject_AddMethod($oObj, 'MouseClickDrag', JS_MouseClickDrag)
		_AutoItObject_AddMethod($oObj, 'MouseDown', JS_MouseDown)
		_AutoItObject_AddMethod($oObj, 'MouseGetCursor', JS_MouseGetCursor)
		_AutoItObject_AddMethod($oObj, 'MouseGetPos', JS_MouseGetPos)
		_AutoItObject_AddMethod($oObj, 'MouseMove', JS_MouseMove)
		_AutoItObject_AddMethod($oObj, 'MouseUp', JS_MouseUp)
		_AutoItObject_AddMethod($oObj, 'MouseWheel', JS_MouseWheel)
		Return $oObj
EndFunc

	Func JS_MouseClick($This,$button,$x = Default,$y = Default,$clicks = 1,$speed = 10)
		Return $This.Return(MouseClick($button,$x,$y,$clicks,$speed),@error,@extended)
	EndFunc
	Func JS_MouseClickDrag($This,$button,$x1,$y1,$x2,$y2,$speed = 10)
		Return $This.Return(MouseClickDrag($button,$x1,$y1,$x2,$y2,$speed),@error,@extended)
	EndFunc
	Func JS_MouseDown($This,$button)
		Return $This.Return(MouseDown($button),@error,@extended)
	EndFunc
	Func JS_MouseGetCursor($This)
		Return $This.Return(MouseGetCursor(),@error,@extended)
	EndFunc
	Func JS_MouseGetPos($This,$dimension = Default)
		Return $This.Return(MouseGetPos($dimension),@error,@extended)
	EndFunc
	Func JS_MouseMove($This,$x,$y,$speed = 10)
		Return $This.Return(MouseMove($x,$y,$speed),@error,@extended)
	EndFunc
	Func JS_MouseUp($This,$button)
		Return $This.Return(MouseUp($button),@error,@extended)
	EndFunc
	Func JS_MouseWheel($This,$direction,$clicks = 1)
		Return $This.Return(MouseWheel($direction,$clicks),@error,@extended)
	EndFunc