Func GUI($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'GUICreate', JS_GUICreate)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateAvi', JS_GUICtrlCreateAvi)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateButton', JS_GUICtrlCreateButton)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateCheckbox', JS_GUICtrlCreateCheckbox)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateCombo', JS_GUICtrlCreateCombo)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateContextMenu', JS_GUICtrlCreateContextMenu)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateDate', JS_GUICtrlCreateDate)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateDummy', JS_GUICtrlCreateDummy)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateEdit', JS_GUICtrlCreateEdit)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateGraphic', JS_GUICtrlCreateGraphic)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateGroup', JS_GUICtrlCreateGroup)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateIcon', JS_GUICtrlCreateIcon)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateInput', JS_GUICtrlCreateInput)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateLabel', JS_GUICtrlCreateLabel)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateList', JS_GUICtrlCreateList)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateListView', JS_GUICtrlCreateListView)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateListViewItem', JS_GUICtrlCreateListViewItem)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateMenu', JS_GUICtrlCreateMenu)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateMenuItem', JS_GUICtrlCreateMenuItem)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateMonthCal', JS_GUICtrlCreateMonthCal)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateObj', JS_GUICtrlCreateObj)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreatePic', JS_GUICtrlCreatePic)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateProgress', JS_GUICtrlCreateProgress)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateRadio', JS_GUICtrlCreateRadio)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateSlider', JS_GUICtrlCreateSlider)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateTab', JS_GUICtrlCreateTab)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateTabItem', JS_GUICtrlCreateTabItem)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateTreeView', JS_GUICtrlCreateTreeView)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateTreeViewItem', JS_GUICtrlCreateTreeViewItem)
		_AutoItObject_AddMethod($oObj, 'GUICtrlCreateUpdown', JS_GUICtrlCreateUpdown)
		_AutoItObject_AddMethod($oObj, 'GUICtrlDelete', JS_GUICtrlDelete)
		_AutoItObject_AddMethod($oObj, 'GUICtrlGetHandle', JS_GUICtrlGetHandle)
		_AutoItObject_AddMethod($oObj, 'GUICtrlGetState', JS_GUICtrlGetState)
		_AutoItObject_AddMethod($oObj, 'GUICtrlRead', JS_GUICtrlRead)
		_AutoItObject_AddMethod($oObj, 'GUICtrlRecvMsg', JS_GUICtrlRecvMsg)
		_AutoItObject_AddMethod($oObj, 'GUICtrlRegisterListViewSort', JS_GUICtrlRegisterListViewSort)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSendMsg', JS_GUICtrlSendMsg)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSendToDummy', JS_GUICtrlSendToDummy)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetBkColor', JS_GUICtrlSetBkColor)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetColor', JS_GUICtrlSetColor)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetCursor', JS_GUICtrlSetCursor)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetData', JS_GUICtrlSetData)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetDefBkColor', JS_GUICtrlSetDefBkColor)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetDefColor', JS_GUICtrlSetDefColor)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetFont', JS_GUICtrlSetFont)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetGraphic', JS_GUICtrlSetGraphic)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetImage', JS_GUICtrlSetImage)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetLimit', JS_GUICtrlSetLimit)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetOnEvent', JS_GUICtrlSetOnEvent)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetPos', JS_GUICtrlSetPos)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetResizing', JS_GUICtrlSetResizing)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetState', JS_GUICtrlSetState)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetStyle', JS_GUICtrlSetStyle)
		_AutoItObject_AddMethod($oObj, 'GUICtrlSetTip', JS_GUICtrlSetTip)
		_AutoItObject_AddMethod($oObj, 'GUIDelete', JS_GUIDelete)
		_AutoItObject_AddMethod($oObj, 'GUIGetCursorInfo', JS_GUIGetCursorInfo)
		_AutoItObject_AddMethod($oObj, 'GUIGetMsg', JS_GUIGetMsg)
		_AutoItObject_AddMethod($oObj, 'GUIGetStyle', JS_GUIGetStyle)
		_AutoItObject_AddMethod($oObj, 'GUIRegisterMsg', JS_GUIRegisterMsg)
		_AutoItObject_AddMethod($oObj, 'GUISetAccelerators', JS_GUISetAccelerators)
		_AutoItObject_AddMethod($oObj, 'GUISetBkColor', JS_GUISetBkColor)
		_AutoItObject_AddMethod($oObj, 'GUISetCoord', JS_GUISetCoord)
		_AutoItObject_AddMethod($oObj, 'GUISetCursor', JS_GUISetCursor)
		_AutoItObject_AddMethod($oObj, 'GUISetFont', JS_GUISetFont)
		_AutoItObject_AddMethod($oObj, 'GUISetHelp', JS_GUISetHelp)
		_AutoItObject_AddMethod($oObj, 'GUISetIcon', JS_GUISetIcon)
		_AutoItObject_AddMethod($oObj, 'GUISetOnEvent', JS_GUISetOnEvent)
		_AutoItObject_AddMethod($oObj, 'GUISetState', JS_GUISetState)
		_AutoItObject_AddMethod($oObj, 'GUISetStyle', JS_GUISetStyle)
		_AutoItObject_AddMethod($oObj, 'GUIStartGroup', JS_GUIStartGroup)
		_AutoItObject_AddMethod($oObj, 'GUISwitch', JS_GUISwitch)
		Return $oObj
EndFunc

	Func JS_GUICreate($This,$title,$width = Default,$height = Default,$left = -1,$top = -1,$style = -1,$exStyle = -1,$parent = 0)
		Return $This.Return(GUICreate($title,$width,$height,$left,$top,$style,$exStyle,$parent),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateAvi($This,$filename,$subfileid,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateAvi($filename,$subfileid,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateButton($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateButton($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateCheckbox($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateCheckbox($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateCombo($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateCombo($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateContextMenu($This,$controlID = Default)
		Return $This.Return(GUICtrlCreateContextMenu($controlID),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateDate($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateDate($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateDummy($This)
		Return $This.Return(GUICtrlCreateDummy(),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateEdit($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateEdit($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateGraphic($This,$left,$top,$width = Default,$height = Default,$style = Default)
		Return $This.Return(GUICtrlCreateGraphic($left,$top,$width,$height,$style),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateGroup($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateGroup($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateIcon($This,$filename,$iconName,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateIcon($filename,$iconName,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateInput($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateInput($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateLabel($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateLabel($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateList($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateList($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateListView($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateListView($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateListViewItem($This,$text,$listviewID)
		Return $This.Return(GUICtrlCreateListViewItem($text,$listviewID),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateMenu($This,$submenutext,$menuID = -1,$menuentry = -1)
		Return $This.Return(GUICtrlCreateMenu($submenutext,$menuID,$menuentry),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateMenuItem($This,$text,$menuID,$menuentry = -1,$menuradioitem = 0)
		Return $This.Return(GUICtrlCreateMenuItem($text,$menuID,$menuentry,$menuradioitem),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateMonthCal($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateMonthCal($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateObj($This,$ObjectVar,$left,$top,$width = Default,$height = Default)
		Return $This.Return(GUICtrlCreateObj($ObjectVar,$left,$top,$width,$height),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreatePic($This,$filename,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreatePic($filename,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateProgress($This,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateProgress($left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateRadio($This,$text,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateRadio($text,$left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateSlider($This,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateSlider($left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateTab($This,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateTab($left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateTabItem($This,$text)
		Return $This.Return(GUICtrlCreateTabItem($text),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateTreeView($This,$left,$top,$width = Default,$height = Default,$style = -1,$exStyle = -1)
		Return $This.Return(GUICtrlCreateTreeView($left,$top,$width,$height,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateTreeViewItem($This,$text,$treeviewID)
		Return $This.Return(GUICtrlCreateTreeViewItem($text,$treeviewID),@error,@extended)
	EndFunc
	Func JS_GUICtrlCreateUpdown($This,$inputcontrolID,$style = -1)
		Return $This.Return(GUICtrlCreateUpdown($inputcontrolID,$style),@error,@extended)
	EndFunc
	Func JS_GUICtrlDelete($This,$controlID)
		Return $This.Return(GUICtrlDelete($controlID),@error,@extended)
	EndFunc
	Func JS_GUICtrlGetHandle($This,$controlID)
		Return $This.Return(GUICtrlGetHandle($controlID),@error,@extended)
	EndFunc
	Func JS_GUICtrlGetState($This,$controlID)
		Return $This.Return(GUICtrlGetState($controlID),@error,@extended)
	EndFunc
	Func JS_GUICtrlRead($This,$controlID,$advanced = 0)
		Return $This.Return(GUICtrlRead($controlID,$advanced = 0),@error,@extended)
	EndFunc
	Func JS_GUICtrlRecvMsg($This,$controlID ,$msg,$wParam = Default,$lParamType = Default)
		Return $This.Return(GUICtrlRecvMsg($controlID ,$msg,$wParam,$lParamType),@error,@extended)
	EndFunc
	Func JS_GUICtrlRegisterListViewSort($This,$controlID,$function)
		Return $This.Return(GUICtrlRegisterListViewSort($controlID,$function),@error,@extended)
	EndFunc
	Func JS_GUICtrlSendMsg($This,$controlID,$msg ,$wParam,$lParam)
		Return $This.Return(GUICtrlSendMsg($controlID,$msg ,$wParam,$lParam),@error,@extended)
	EndFunc
	Func JS_GUICtrlSendToDummy($This,$controlID,$state = Default)
		Return $This.Return(GUICtrlSendToDummy($controlID,$state),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetBkColor($This,$controlID,$backgroundcolor)
		Return $This.Return(GUICtrlSetBkColor($controlID,$backgroundcolor),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetColor($This,$controlID,$textcolor)
		Return $This.Return(GUICtrlSetColor($controlID,$textcolor),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetCursor($This,$controlID,$cursorID)
		Return $This.Return(GUICtrlSetCursor($controlID,$cursorID),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetData($This,$controlID,$data,$default = Default)
		Return $This.Return(GUICtrlSetData($controlID,$data,$default),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetDefBkColor($This,$defbkcolor,$winhandle = Default)
		Return $This.Return(GUICtrlSetDefBkColor($defbkcolor,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetDefColor($This,$deftextcolor,$winhandle = Default)
		Return $This.Return(GUICtrlSetDefColor($deftextcolor,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetFont($This,$controlID,$size,$weight,$attribute = Default,$fontname = Default,$quality = Default)
		Return $This.Return(GUICtrlSetFont($controlID,$size,$weight,$attribute,$fontname,$quality),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetGraphic($This,$controlID,$type,$par1,$par2= Default,$par3= Default,$par4= Default,$par5= Default,$par6= Default) ; <========
		Return $This.Return(GUICtrlSetGraphic($controlID,$type,$par1,$par2,$par3,$par4,$par5,$par6),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetImage($This,$controlID,$filename,$iconname = Default,$icontype = Default)
		Return $This.Return(GUICtrlSetImage($controlID,$filename,$iconname,$icontype),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetLimit($This,$controlID,$max,$min = 0)
		Return $This.Return(GUICtrlSetLimit($controlID,$max,$min = 0),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetOnEvent($This,$controlID,$function)
		Return $This.Return(GUICtrlSetOnEvent($controlID,$function),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetPos($This,$controlID,$left,$top = Default,$width = Default,$height = Default)
		Return $This.Return(GUICtrlSetPos($controlID,$left,$top,$width,$height),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetResizing($This,$controlID,$resizing)
		Return $This.Return(GUICtrlSetResizing($controlID,$resizing),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetState($This,$controlID,$state)
		Return $This.Return(GUICtrlSetState($controlID,$state),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetStyle($This,$controlID,$style,$exStyle = Default)
		Return $This.Return(GUICtrlSetStyle($controlID,$style,$exStyle),@error,@extended)
	EndFunc
	Func JS_GUICtrlSetTip($This,$controlID,$tiptext,$title = Default,$icon = Default,$options = Default)
		Return $This.Return(GUICtrlSetTip($controlID,$tiptext,$title,$icon,$options),@error,@extended)
	EndFunc
	Func JS_GUIDelete($This,$winhandle = Default)
		Return $This.Return(GUIDelete($winhandle),@error,@extended)
	EndFunc
	Func JS_GUIGetCursorInfo($This,$winhandle = Default)
		Return $This.Return(GUIGetCursorInfo($winhandle),@error,@extended)
	EndFunc
	Func JS_GUIGetMsg($This,$advanced = 0)
		Return $This.Return(GUIGetMsg($advanced),@error,@extended)
	EndFunc
	Func JS_GUIGetStyle($This,$winhandle = Default)
		Return $This.Return(GUIGetStyle($winhandle),@error,@extended)
	EndFunc
	Func JS_GUIRegisterMsg($This,$msgID,$function)
		Return $This.Return(GUIRegisterMsg($msgID,$function),@error,@extended)
	EndFunc
	Func JS_GUISetAccelerators($This,$accelerators,$winhandle = Default)
		Return $This.Return(GUISetAccelerators($accelerators,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUISetBkColor($This,$background,$winhandle = Default)
		Return $This.Return(GUISetBkColor($background,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUISetCoord($This,$left,$top,$width = Default,$height = Default,$winhandle = Default)
		Return $This.Return(GUISetCoord($left,$top,$width,$height,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUISetCursor($This,$cursorID = Default,$override = 0,$winhandle = 0)
		Return $This.Return(GUISetCursor($cursorID,$override,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUISetFont($This,$size,$weight = Default,$attribute = Default,$fontname = Default,$winhandle = Default,$quality = Default)
		Return $This.Return(GUISetFont($size,$weight,$attribute,$fontname,$winhandle,$quality),@error,@extended)
	EndFunc
	Func JS_GUISetHelp($This,$helpfile,$winhandle = Default)
		Return $This.Return(GUISetHelp($helpfile,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUISetIcon($This,$iconfile,$iconID = Default,$winhandle = Default)
		Return $This.Return(GUISetIcon($iconfile,$iconID,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUISetOnEvent($This,$specialID,$function,$winhandle = Default)
		Return $This.Return(GUISetOnEvent($specialID,$function,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUISetState($This,$flag,$winhandle = Default)
		Return $This.Return(GUISetState($flag,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUISetStyle($This,$Style,$ExStyle = Default,$winhandle = Default)
		Return $This.Return(GUISetStyle($Style,$ExStyle,$winhandle),@error,@extended)
	EndFunc
	Func JS_GUIStartGroup($This,$winhandle = Default)
		Return $This.Return(GUIStartGroup($winhandle),@error,@extended)
	EndFunc
	Func JS_GUISwitch($This,$winhandle,$tabitemID = Default)
		Return $This.Return(GUISwitch($winhandle,$tabitemID),@error,@extended)
	EndFunc