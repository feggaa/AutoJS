Func Windows($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'WinActivate', JS_WinActivate)
		_AutoItObject_AddMethod($oObj, 'WinActive', JS_WinActive)
		_AutoItObject_AddMethod($oObj, 'WinClose', JS_WinClose)
		_AutoItObject_AddMethod($oObj, 'WinExists', JS_WinExists)
		_AutoItObject_AddMethod($oObj, 'WinFlash', JS_WinFlash)
		_AutoItObject_AddMethod($oObj, 'WinGetCaretPos', JS_WinGetCaretPos)
		_AutoItObject_AddMethod($oObj, 'WinGetClassList', JS_WinGetClassList)
		_AutoItObject_AddMethod($oObj, 'WinGetClientSize', JS_WinGetClientSize)
		_AutoItObject_AddMethod($oObj, 'WinGetHandle', JS_WinGetHandle)
		_AutoItObject_AddMethod($oObj, 'WinGetPos', JS_WinGetPos)
		_AutoItObject_AddMethod($oObj, 'WinGetProcess', JS_WinGetProcess)
		_AutoItObject_AddMethod($oObj, 'WinGetState', JS_WinGetState)
		_AutoItObject_AddMethod($oObj, 'WinGetText', JS_WinGetText)
		_AutoItObject_AddMethod($oObj, 'WinGetTitle', JS_WinGetTitle)
		_AutoItObject_AddMethod($oObj, 'WinKill', JS_WinKill)
		_AutoItObject_AddMethod($oObj, 'WinList', JS_WinList)
		_AutoItObject_AddMethod($oObj, 'WinMenuSelectItem', JS_WinMenuSelectItem)
		_AutoItObject_AddMethod($oObj, 'WinMinimizeAll', JS_WinMinimizeAll)
		_AutoItObject_AddMethod($oObj, 'WinMinimizeAllUndo', JS_WinMinimizeAllUndo)
		_AutoItObject_AddMethod($oObj, 'WinMove', JS_WinMove)
		_AutoItObject_AddMethod($oObj, 'WinSetOnTop', JS_WinSetOnTop)
		_AutoItObject_AddMethod($oObj, 'WinSetState', JS_WinSetState)
		_AutoItObject_AddMethod($oObj, 'WinSetTitle', JS_WinSetTitle)
		_AutoItObject_AddMethod($oObj, 'WinSetTrans', JS_WinSetTrans)
		_AutoItObject_AddMethod($oObj, 'WinWait', JS_WinWait)
		_AutoItObject_AddMethod($oObj, 'WinWaitActive', JS_WinWaitActive)
		_AutoItObject_AddMethod($oObj, 'WinWaitClose', JS_WinWaitClose)
		_AutoItObject_AddMethod($oObj, 'WinWaitNotActive', JS_WinWaitNotActive)

		_AutoItObject_AddMethod($oObj, 'ControlClick', JS_ControlClick)
		_AutoItObject_AddMethod($oObj, 'ControlCommand', JS_ControlCommand)
		_AutoItObject_AddMethod($oObj, 'ControlDisable', JS_ControlDisable)
		_AutoItObject_AddMethod($oObj, 'ControlEnable', JS_ControlEnable)
		_AutoItObject_AddMethod($oObj, 'ControlFocus', JS_ControlFocus)
		_AutoItObject_AddMethod($oObj, 'ControlGetFocus', JS_ControlGetFocus)
		_AutoItObject_AddMethod($oObj, 'ControlGetHandle', JS_ControlGetHandle)
		_AutoItObject_AddMethod($oObj, 'ControlGetPos', JS_ControlGetPos)
		_AutoItObject_AddMethod($oObj, 'ControlGetText', JS_ControlGetText)
		_AutoItObject_AddMethod($oObj, 'ControlHide', JS_ControlHide)
		_AutoItObject_AddMethod($oObj, 'ControlListView', JS_ControlListView)
		_AutoItObject_AddMethod($oObj, 'ControlMove', JS_ControlMove)
		_AutoItObject_AddMethod($oObj, 'ControlSend', JS_ControlSend)
		_AutoItObject_AddMethod($oObj, 'ControlSetText', JS_ControlSetText)
		_AutoItObject_AddMethod($oObj, 'ControlShow', JS_ControlShow)
		_AutoItObject_AddMethod($oObj, 'ControlTreeView', JS_ControlTreeView)
		Return $oObj
EndFunc

	Func JS_WinActivate($This,$title,$text = "")
		Return $This.Return(WinActivate($title,$text),@error,@extended)
	EndFunc
	Func JS_WinActive($This,$title,$text = Default)
		Return $This.Return(WinActive($title,$text),@error,@extended)
	EndFunc
	Func JS_WinClose($This,$title,$text = Default)
		Return $This.Return(WinClose($title,$text),@error,@extended)
	EndFunc
	Func JS_WinExists($This,$title,$text = Default)
		Return $This.Return(WinExists($title,$text),@error,@extended)
	EndFunc
	Func JS_WinFlash($This,$title,$text = Default,$flashes = 4,$delay = 500)
		Return $This.Return(WinFlash($title,$text,$flashes,$delay),@error,@extended)
	EndFunc
	Func JS_WinGetCaretPos($This)
		Return $This.Return(WinGetCaretPos(),@error,@extended)
	EndFunc
	Func JS_WinGetClassList($This,$title,$text = Default)
		Return $This.Return(WinGetClassList($title,$text),@error,@extended)
	EndFunc
	Func JS_WinGetClientSize($This,$title,$text = Default)
		Return $This.Return(WinGetClientSize($title,$text),@error,@extended)
	EndFunc
	Func JS_WinGetHandle($This,$title,$text = Default)
		Return $This.Return(WinGetHandle($title,$text),@error,@extended)
	EndFunc
	Func JS_WinGetPos($This,$title,$text = Default)
		Return $This.Return(WinGetPos($title,$text),@error,@extended)
	EndFunc
	Func JS_WinGetProcess($This,$title,$text = Default)
		Return $This.Return(WinGetProcess($title,$text),@error,@extended)
	EndFunc
	Func JS_WinGetState($This,$title,$text = Default)
		Return $This.Return(WinGetState($title,$text),@error,@extended)
	EndFunc
	Func JS_WinGetText($This,$title,$text = Default)
		Return $This.Return(WinGetText($title,$text),@error,@extended)
	EndFunc
	Func JS_WinGetTitle($This,$title,$text = Default)
		Return $This.Return(WinGetTitle($title,$text),@error,@extended)
	EndFunc
	Func JS_WinKill($This,$title,$text = Default)
		Return $This.Return(WinKill($title,$text),@error,@extended)
	EndFunc
	Func JS_WinList($This,$title,$text = Default)
		Return $This.Return(WinList($title,$text),@error,@extended)
	EndFunc
	Func JS_WinMenuSelectItem($This,$title,$text,$item,$item1 = "",$item2 = "",$item3 = "",$item4 = "",$item5 = "")
		Return $This.Return(WinMenuSelectItem($title,$text,$item,$item1,$item2,$item3,$item4,$item5),@error,@extended)
	EndFunc
	Func JS_WinMinimizeAll($This)
		Return $This.Return(WinMinimizeAll(),@error,@extended)
	EndFunc
	Func JS_WinMinimizeAllUndo($This)
		Return $This.Return(WinMinimizeAllUndo(),@error,@extended)
	EndFunc
	Func JS_WinMove($This,$title,$text,$x, $y, $width = Default, $height = Default, $speed = Default)
		Return $This.Return(WinMove($title,$text,$x, $y, $width, $height, $speed),@error,@extended)
	EndFunc
	Func JS_WinSetOnTop($This,$title,$text,$flag )
		Return $This.Return(WinSetOnTop($title,$text,$flag),@error,@extended)
	EndFunc
	Func JS_WinSetState($This,$title,$text,$flag )
		Return $This.Return(WinSetState($title,$text,$flag),@error,@extended)
	EndFunc
	Func JS_WinSetTitle($This,$title,$text,$newtitle)
		Return $This.Return(WinSetTitle($title,$text,$newtitle),@error,@extended)
	EndFunc
	Func JS_WinSetTrans($This,$title,$text,$transparency)
		Return $This.Return(WinSetTrans($title,$text,$transparency),@error,@extended)
	EndFunc
	Func JS_WinWait($This,$title,$text,$timeout = 0)
		Return $This.Return(WinWait($title,$text,$timeout),@error,@extended)
	EndFunc
	Func JS_WinWaitActive($This,$title,$text,$timeout = 0)
		Return $This.Return(WinWaitActive($title,$text,$timeout),@error,@extended)
	EndFunc
	Func JS_WinWaitClose($This,$title,$text,$timeout = 0)
		Return $This.Return(WinWaitClose($title,$text,$timeout),@error,@extended)
	EndFunc
	Func JS_WinWaitNotActive($This,$title,$text,$timeout = 0)
		Return $This.Return(WinWaitNotActive($title,$text,$timeout),@error,@extended)
	EndFunc

	Func JS_ControlClick($This,$title,$text,$controlID,$button = "left",$clicks = 1,$x = Default,$y = Default)
		Return $This.Return(ControlClick($title,$text,$controlID,$button,$clicks,$x,$y),@error,@extended)
	EndFunc
	Func JS_ControlCommand($This,$title,$text,$controlID,$command,$option)
		Return $This.Return(ControlCommand($title,$text,$controlID,$command,$option),@error,@extended)
	EndFunc
	Func JS_ControlDisable($This,$title,$text,$controlID)
		Return $This.Return(ControlDisable($title,$text,$controlID),@error,@extended)
	EndFunc
	Func JS_ControlEnable($This,$title,$text,$controlID)
		Return $This.Return(ControlEnable($title,$text,$controlID),@error,@extended)
	EndFunc
	Func JS_ControlFocus($This,$title,$text,$controlID)
		Return $This.Return(ControlFocus($title,$text,$controlID),@error,@extended)
	EndFunc
	Func JS_ControlGetFocus($This,$title,$text)
		Return $This.Return(ControlGetFocus($title,$text),@error,@extended)
	EndFunc
	Func JS_ControlGetHandle($This,$title,$text,$controlID)
		Return $This.Return(ControlGetHandle($title,$text,$controlID),@error,@extended)
	EndFunc
	Func JS_ControlGetPos($This,$title,$text,$controlID)
		Return $This.Return(ControlGetPos($title,$text,$controlID),@error,@extended)
	EndFunc
	Func JS_ControlGetText($This,$title,$text,$controlID)
		Return $This.Return(ControlGetText($title,$text,$controlID),@error,@extended)
	EndFunc
	Func JS_ControlHide($This,$title,$text,$controlID)
		Return $This.Return(ControlHide($title,$text,$controlID),@error,@extended)
	EndFunc
	Func JS_ControlListView($This,$title,$text,$controlID,$command,$option1,$option2)
		Return $This.Return(ControlListView($title,$text,$controlID,$command,$option1,$option2),@error,@extended)
	EndFunc
	Func JS_ControlMove($This,$title,$text,$controlID,$x,$y,$width,$height)
		Return $This.Return(ControlMove($title,$text,$controlID,$x,$y,$width,$height),@error,@extended)
	EndFunc
	Func JS_ControlSend($This,$title,$text,$controlID,$string,$flag = 0)
		Return $This.Return(ControlSend($title,$text,$controlID,$string,$flag),@error,@extended)
	EndFunc
	Func JS_ControlSetText($This,$title,$text,$controlID,$new_text,$flag = 0)
		Return $This.Return(ControlSetText($title,$text,$controlID,$new_text,$flag),@error,@extended)
	EndFunc
	Func JS_ControlShow($This,$title,$text,$controlID)
		Return $This.Return(ControlShow($title,$text,$controlID),@error,@extended)
	EndFunc
	Func JS_ControlTreeView($This,$title,$text,$controlID,$command,$option1)
		Return $This.Return(ControlTreeView($title,$text,$controlID,$command,$option1),@error,@extended)
	EndFunc