Func AutoIt($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'AdlibRegister', JS_AdlibRegister)
		_AutoItObject_AddMethod($oObj, 'AdlibUnRegister', JS_AdlibUnRegister)
		_AutoItObject_AddMethod($oObj, 'Asc', JS_Asc)
		_AutoItObject_AddMethod($oObj, 'AscW', JS_AscW)
		_AutoItObject_AddMethod($oObj, 'Assign', JS_Assign)
		_AutoItObject_AddMethod($oObj, 'AutoItSetOption', JS_AutoItSetOption)
		_AutoItObject_AddMethod($oObj, 'AutoItWinGetTitle', JS_AutoItWinGetTitle)
		_AutoItObject_AddMethod($oObj, 'AutoItWinSetTitle', JS_AutoItWinSetTitle)
		_AutoItObject_AddMethod($oObj, 'Beep', JS_Beep)
		_AutoItObject_AddMethod($oObj, 'Binary', JS_Binary)
		_AutoItObject_AddMethod($oObj, 'BinaryLen', JS_BinaryLen)
		_AutoItObject_AddMethod($oObj, 'BinaryMid', JS_BinaryMid)
		_AutoItObject_AddMethod($oObj, 'BinaryToString', JS_BinaryToString)
		_AutoItObject_AddMethod($oObj, 'BlockInput', JS_BlockInput)
		_AutoItObject_AddMethod($oObj, 'Break', JS_Break)
		_AutoItObject_AddMethod($oObj, 'Call', JS_Call)
		_AutoItObject_AddMethod($oObj, 'Chr', JS_Chr)
		_AutoItObject_AddMethod($oObj, 'ChrW', JS_ChrW)
		_AutoItObject_AddMethod($oObj, 'Dec', JS_Dec)
		_AutoItObject_AddMethod($oObj, 'Eval', JS_Eval)
		_AutoItObject_AddMethod($oObj, 'Execute', JS_Execute)
		_AutoItObject_AddMethod($oObj, 'FuncName', JS_FuncName)
		_AutoItObject_AddMethod($oObj, 'Hex', JS_Hex)
		_AutoItObject_AddMethod($oObj, 'HotKeySet', JS_HotKeySet)
		_AutoItObject_AddMethod($oObj, 'HWnd', JS_HWnd)
		_AutoItObject_AddMethod($oObj, 'InputBox', JS_InputBox)
		_AutoItObject_AddMethod($oObj, 'Int', JS_Int)
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
		_AutoItObject_AddMethod($oObj, 'MapAppend', JS_MapAppend)
		_AutoItObject_AddMethod($oObj, 'MapExists', JS_MapExists)
		_AutoItObject_AddMethod($oObj, 'MapKeys', JS_MapKeys)
		_AutoItObject_AddMethod($oObj, 'MapRemove', JS_MapRemove)
		_AutoItObject_AddMethod($oObj, 'MsgBox', JS_MsgBox)
		_AutoItObject_AddMethod($oObj, 'Number', JS_Number)
		_AutoItObject_AddMethod($oObj, 'OnAutoItExitRegister', JS_OnAutoItExitRegister)
		_AutoItObject_AddMethod($oObj, 'OnAutoItExitUnRegister', JS_OnAutoItExitUnRegister)
		_AutoItObject_AddMethod($oObj, 'PixelChecksum', JS_PixelChecksum)
		_AutoItObject_AddMethod($oObj, 'PixelGetColor', JS_PixelGetColor)
		_AutoItObject_AddMethod($oObj, 'PixelSearch', JS_PixelSearch)
		_AutoItObject_AddMethod($oObj, 'ProgressOff', JS_ProgressOff)
		_AutoItObject_AddMethod($oObj, 'ProgressOn', JS_ProgressOn)
		_AutoItObject_AddMethod($oObj, 'ProgressSet', JS_ProgressSet)
		_AutoItObject_AddMethod($oObj, 'Ptr', JS_Ptr)
		_AutoItObject_AddMethod($oObj, 'Round', JS_Round)
		_AutoItObject_AddMethod($oObj, 'Send', JS_Send)
		_AutoItObject_AddMethod($oObj, 'SendKeepActive', JS_SendKeepActive)
		_AutoItObject_AddMethod($oObj, 'SoundPlay', JS_SoundPlay)
		_AutoItObject_AddMethod($oObj, 'SoundSetWaveVolume', JS_SoundSetWaveVolume)
		_AutoItObject_AddMethod($oObj, 'SplashImageOn', JS_SplashImageOn)
		_AutoItObject_AddMethod($oObj, 'SplashOff', JS_SplashOff)
		_AutoItObject_AddMethod($oObj, 'SplashTextOn', JS_SplashTextOn)
		_AutoItObject_AddMethod($oObj, 'StatusbarGetText', JS_StatusbarGetText)
		_AutoItObject_AddMethod($oObj, 'TimerDiff', JS_TimerDiff)
		_AutoItObject_AddMethod($oObj, 'TimerInit', JS_TimerInit)
		_AutoItObject_AddMethod($oObj, 'ToolTip', JS_ToolTip)
		_AutoItObject_AddMethod($oObj, 'UBound', JS_UBound)
		_AutoItObject_AddMethod($oObj, 'VarGetType', JS_VarGetType)

		Return $oObj
EndFunc

	Func JS_Dec($This,$hex,$flag = 0)
		Return $This.Return(Dec($hex,$flag),@error,@extended)
	EndFunc

	Func JS_AdlibRegister($This,$function,$time = 250)
		Return $This.Return(AdlibRegister($function,$time ? $time : 250),@error,@extended)
	EndFunc
	Func JS_AdlibUnRegister($This,$function = Default)
		Return $This.Return(AdlibUnRegister($function ? $function : Default),@error,@extended)
	EndFunc
	Func JS_Asc($This,$char)
		Return $This.Return(Asc($char),@error,@extended)
	EndFunc
	Func JS_AscW($This,$char)
		Return $This.Return(AscW($char),@error,@extended)
	EndFunc

	Func JS_Assign($This,$varname,$data,$flag = 0)
		Return $This.Return(Assign($varname,$data,$flag ? $flag : 0),@error,@extended)
	EndFunc
	Func JS_Eval($This,$string)
		Return $This.Return(Eval($string),@error,@extended)
	EndFunc
	Func JS_AutoItSetOption($This,$option,$param = Default)
		Return $This.Return(AutoItSetOption($option,$param ? $param : Default),@error,@extended)
	EndFunc
	Func JS_AutoItWinGetTitle($This)
		Return $This.Return(AutoItWinGetTitle(),@error,@extended)
	EndFunc
	Func JS_AutoItWinSetTitle($This,$newtitle)
		Return $This.Return(AutoItWinSetTitle($newtitle),@error,@extended)
	EndFunc
	Func JS_Beep($This,$Frequency = 500,$Duration = 1000)
		Return $This.Return(Beep($Frequency ? $Frequency : 500,$Duration ? $Duration : 1000),@error,@extended)
	EndFunc
	Func JS_Binary($This,$expression)
		Return $This.Return(Binary($expression),@error,@extended)
	EndFunc
	Func JS_BinaryLen($This,$binary)
		Return $This.Return(BinaryLen($binary),@error,@extended)
	EndFunc
	Func JS_BinaryMid($This,$binary,$start,$count = Default)
		Return $This.Return(BinaryMid($binary,$start,$count ? $count : Default),@error,@extended)
	EndFunc
	Func JS_BinaryToString($This,$expression,$flag = 1)
		Return $This.Return(BinaryToString($expression,$flag ? $flag : 1),@error,@extended)
	EndFunc

	Func JS_BlockInput($This,$flag)
		Return $This.Return(BlockInput($flag),@error,@extended)
	EndFunc
	Func JS_Break($This,$mode)
		Return $This.Return(Break($mode),@error,@extended)
	EndFunc
	Func JS_Call($This,$function,$Array) ; <=========
		Local $PreArray[1 + $Array.length] = ["CallArgArray"],$len = $Array.length
		For $i = 1 to $len
			$PreArray[$i] = $Array.item($i-1)
		Next
		Return $This.Return(Call($function,$PreArray),@error,@extended)
	EndFunc


	Func JS_Chr($This,$ASCIIcode)
		Return $This.Return(Chr($ASCIIcode),@error,@extended)
	EndFunc
	Func JS_ChrW($This,$UNICODEcode)
		Return $This.Return(ChrW($UNICODEcode),@error,@extended)
	EndFunc

	Func JS_ConsoleRead($This,$peek = False,$binary = False)
		Return $This.Return(ConsoleRead($peek ? $peek : False,$binary ? $binary : False),@error,@extended)
	EndFunc
	Func JS_ConsoleWrite($This,$data)
		Return $This.Return(ConsoleWrite($data),@error,@extended)
	EndFunc
	Func JS_ConsoleWriteError($This,$data)
		Return $This.Return(ConsoleWriteError($data),@error,@extended)
	EndFunc


	Func JS_Execute($This,$string)
		Return $This.Return(Execute($string),@error,@extended)
	EndFunc


	Func JS_FuncName($This,$Functionvariable)
		Return $This.Return(FuncName($Functionvariable),@error,@extended)
	EndFunc
	Func JS_Hex($This,$expression,$length = Default)
		Return $This.Return(Hex($expression,$length ? $length : Default),@error,@extended)
	EndFunc
	Func JS_HotKeySet($This,$key,$function = Default)
		Return $This.Return(HotKeySet($key,$function ? $function : Default),@error,@extended)
	EndFunc
	Func JS_HWnd($This,$expression)
		Return $This.Return(HWnd($expression),@error,@extended)
	EndFunc

	Func JS_InputBox($This,$title,$prompt,$default = "",$password_char = "*",$width = -1,$height = -1,$left = Default,$top = Default,$timeout = 0,$hwnd = 0)
		Return $This.Return(InputBox($title,$prompt,$default,$password_char ? $password_char : Default,$width ? $width : -1,$height ? $height : -1,$left ? $left : Default,$top ? $top : Default,$timeout ? $timeout : 0,$hwnd ? $hwnd : Default),@error,@extended)
	EndFunc
	Func JS_Int($This,$expression,$flag = 0)
		Return $This.Return(Int($expression,$flag ? $flag : 0),@error,@extended)
	EndFunc
	Func JS_IsAdmin($This)
		Return $This.Return(IsAdmin(),@error,@extended)
	EndFunc
	Func JS_IsArray($This,$variable)
		Return $This.Return(IsArray($variable),@error,@extended)
	EndFunc
	Func JS_IsBinary($This,$expression)
		Return $This.Return(IsBinary($expression),@error,@extended)
	EndFunc
	Func JS_IsBool($This,$variable)
		Return $This.Return(IsBool($variable),@error,@extended)
	EndFunc
	Func JS_IsDeclared($This,$expression)
		Return $This.Return(IsDeclared($expression),@error,@extended)
	EndFunc
	Func JS_IsDllStruct($This,$variable)
		Return $This.Return(IsDllStruct($variable),@error,@extended)
	EndFunc
	Func JS_IsFloat($This,$variable)
		Return $This.Return(IsFloat($variable),@error,@extended)
	EndFunc
	Func JS_IsFunc($This,$expression)
		Return $This.Return(IsFunc($expression),@error,@extended)
	EndFunc
	Func JS_IsHWnd($This,$variable)
		Return $This.Return(IsHWnd($variable),@error,@extended)
	EndFunc
	Func JS_IsInt($This,$variable)
		Return $This.Return(IsInt($variable),@error,@extended)
	EndFunc
	Func JS_IsKeyword($This,$variable)
		Return $This.Return(IsKeyword($variable),@error,@extended)
	EndFunc
	Func JS_IsMap($This,$variable)
		Return $This.Return(IsMap($variable),@error,@extended)
	EndFunc
	Func JS_IsNumber($This,$variable)
		Return $This.Return(IsNumber($variable),@error,@extended)
	EndFunc
	Func JS_IsObj($This,$variable)
		Return $This.Return(IsObj($variable),@error,@extended)
	EndFunc
	Func JS_IsPtr($This,$variable)
		Return $This.Return(IsPtr($variable),@error,@extended)
	EndFunc
	Func JS_IsString($This,$variable)
		Return $This.Return(IsString($variable),@error,@extended)
	EndFunc

	Func JS_MapAppend($This,$map,$value)
		Return $This.Return(MapAppend($map,$value),@error,@extended)
	EndFunc
	Func JS_MapExists($This,$map,$key)
		Return $This.Return(MapExists($map,$key),@error,@extended)
	EndFunc
	Func JS_MapKeys($This,$map)
		Return $This.Return(MapKeys($map),@error,@extended)
	EndFunc
	Func JS_MapRemove($This,$map,$key)
		Return $This.Return(MapRemove($map,$key),@error,@extended)
	EndFunc


	Func JS_MsgBox($This,$flag,$title,$text,$timeout = 0,$hwnd = 0)
		Return $This.Return(MsgBox($flag,$title,$text,$timeout ? $timeout : 0,$hwnd ? $hwnd : 0),@error,@extended)
	EndFunc
	Func JS_Number($This,$expression,$flag = 0)
		Return $This.Return(Number($expression,$flag ? $flag : 0),@error,@extended)
	EndFunc
	Func JS_OnAutoItExitRegister($This,$function)
		Return $This.Return(OnAutoItExitRegister($function),@error,@extended)
	EndFunc
	Func JS_OnAutoItExitUnRegister($This,$function)
		Return $This.Return(OnAutoItExitUnRegister($function),@error,@extended)
	EndFunc

	Func JS_PixelChecksum($This,$left,$top,$right,$bottom,$step = 1,$hwnd = 0,$mode = 0)
		Return $This.Return(PixelChecksum($left,$top,$right,$bottom,$step ? $step : 1,$hwnd ? $hwnd : 0,$mode ? $mode : 0),@error,@extended)
	EndFunc
	Func JS_PixelGetColor($This,$x ,$y,$hwnd = Default)
		Return $This.Return(PixelGetColor($x,$y,$hwnd ? $hwnd : Default),@error,@extended)
	EndFunc
	Func JS_PixelSearch($This,$left,$top,$right,$bottom,$color,$shade_variation = 0,$step = 1,$hwnd = 0)
		Return $This.Return(PixelSearch($left,$top,$right,$bottom,$color,$shade_variation,$step,$hwnd),@error,@extended)
	EndFunc
	Func JS_ProgressOff($This)
		Return $This.Return(ProgressOff(),@error,@extended)
	EndFunc
	Func JS_ProgressOn($This,$title,$maintext,$subtext,$x_pos = Default,$y_pos = Default,$opt = Default)
		Return $This.Return(ProgressOn($title,$maintext,$subtext,$x_pos ? $x_pos : Default,$y_pos ? $y_pos : Default,$opt ? $opt : Default),@error,@extended)
	EndFunc
	Func JS_ProgressSet($This,$percent,$subtext = Default,$maintext = Default)
		Return $This.Return(ProgressSet($percent,$subtext ? $subtext : Default,$maintext ? $maintext : Default),@error,@extended)
	EndFunc
	Func JS_Ptr($This,$expression)
		Return $This.Return(Ptr($expression),@error,@extended)
	EndFunc

	Func JS_Round($This,$expression,$decimalplaces = Default)
		Return $This.Return(Round($expression,$decimalplaces ? $decimalplaces : Default),@error,@extended)
	EndFunc

	Func JS_Send($This,$keys,$flag = 0)
		Return $This.Return(Send($keys,$flag ? $flag : 0),@error,@extended)
	EndFunc
	Func JS_SendKeepActive($This,$title,$text = Default)
		Return $This.Return(SendKeepActive($title,$text ? $text : Default),@error,@extended)
	EndFunc


	Func JS_Sleep($This,$delay)
		Return $This.Return(Sleep($delay),@error,@extended)
	EndFunc
	Func JS_SoundPlay($This,$filename,$wait = 0)
		Return $This.Return(SoundPlay($filename,$wait ? $wait : 0),@error,@extended)
	EndFunc
	Func JS_SoundSetWaveVolume($This,$percent)
		Return $This.Return(SoundSetWaveVolume($percent),@error,@extended)
	EndFunc
	Func JS_SplashImageOn($This,$title,$file,$width = Default,$height = Default,$x_pos = Default,$y_pos = Default,$opt = Default)
		Return $This.Return(SplashImageOn($title,$file,$width,$height,$x_pos,$y_pos,$opt ? $opt : Default),@error,@extended)
	EndFunc
	Func JS_SplashOff($This)
		Return $This.Return(SplashOff(),@error,@extended)
	EndFunc
	Func JS_SplashTextOn($This,$title,$text,$w = 500,$h = 400,$x_pos = Default,$y_pos = Default,$opt = 0,$fontname = Default,$fontsz = 12,$fontwt = Default)
		Return $This.Return(SplashTextOn($title,$text,$w,$h,$x_pos,$y_pos,$opt,$fontname,$fontsz,$fontwt),@error,@extended)
	EndFunc

	Func JS_StatusbarGetText($This,$title,$text = Default,$part = 1)
		Return $This.Return(StatusbarGetText($title,$text ? $text : Default,$part ? $part : 1),@error,@extended)
	EndFunc
	Func JS_TimerDiff($This,$handle)
		Return $This.Return(TimerDiff($handle),@error,@extended)
	EndFunc
	Func JS_TimerInit($This)
		Return $This.Return(TimerInit(),@error,@extended)
	EndFunc
	Func JS_ToolTip($This,$text,$x = Default,$y = Default,$title = Default,$icon = 0,$options = 0)
		Return $This.Return(ToolTip($text,$x,$y,$title,$icon,$options),@error,@extended)
	EndFunc
	Func JS_UBound($This,$Variable,$Dimension = 1)
		Return $This.Return(UBound($Variable,$Dimension),@error,@extended)
	EndFunc
	Func JS_VarGetType($This,$expression)
		Return $This.Return(VarGetType($expression),@error,@extended)
	EndFunc
	Func JS_DllCall($This,$dll,$ReturnType,$function,$Array) ; <=========
			Local $PreArray[4 + $Array.length] = ["CallArgArray",$dll,$ReturnType,$function],$len = $Array.length
			For $i = 4 to $len+3
				$PreArray[$i] = $Array.item($i-4)
			Next
		Return $This.Return(Call("DllCall",$PreArray),@error,@extended)
	EndFunc
	Func JS_DllCallAddress($This,$ReturnType,$address,$Array)
		Local $PreArray[3 + $Array.length] = ["CallArgArray",$ReturnType,$address],$len = $Array.length
		For $i = 3 to $len-2
			$PreArray[$i] = $Array.item($i-4)
		Next
		Return $This.Return(Call("DllCallAddress",$PreArray),@error,@extended)
	EndFunc
	Func JS_DllCallbackFree($This,$handle)
		Return $This.Return(DllCallbackFree($handle),@error,@extended)
	EndFunc
	Func JS_DllCallbackGetPtr($This,$handle)
		Return $This.Return(DllCallbackGetPtr($handle),@error,@extended)
	EndFunc
	Func JS_DllCallbackRegister($This,$function,$return_type,$params)
		Return $This.Return(DllCallbackRegister($function,$return_type,$params),@error,@extended)
	EndFunc
	Func JS_DllClose($This,$dllhandle)
		Return $This.Return(DllClose($dllhandle),@error,@extended)
	EndFunc
	Func JS_DllOpen($This,$filename)
		Return $This.Return(DllOpen($filename),@error,@extended)
	EndFunc
	Func JS_DllStructCreate($This,$Struct,$Pointer = Default)
		If $Pointer Then
			Return $This.Return(DllStructCreate($Struct,$Pointer),@error,@extended)
		Else
			Return $This.Return(DllStructCreate($Struct),@error,@extended)
		EndIf
	EndFunc
	Func JS_DllStructGetData($This,$Struct,$Element,$index = Default)
		If $index Then
			Return $This.Return(DllStructGetData($Struct,$Element,$index),@error,@extended)
		Else
			Return $This.Return(DllStructGetData($Struct,$Element),@error,@extended)
		EndIf
	EndFunc
	Func JS_DllStructGetPtr($This,$Struct,$Element = Default)
		If $Element Then
			Return $This.Return(DllStructGetPtr($Struct,$Element),@error,@extended)
		Else
			Return $This.Return(DllStructGetPtr($Struct),@error,@extended)
		EndIf
	EndFunc
	Func JS_DllStructGetSize($This,$Struct)
		Return $This.Return(DllStructGetSize($Struct),@error,@extended)
	EndFunc
	Func JS_DllStructSetData($This,$Struct,$Element,$value,$index = Default)
		If $index Then
			Return $This.Return(DllStructSetData($Struct,$Element,$value,$index),@error,@extended)
		Else
			Return $This.Return(DllStructSetData($Struct,$Element,$value),@error,@extended)
		EndIf
	EndFunc