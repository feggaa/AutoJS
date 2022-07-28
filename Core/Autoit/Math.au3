Func Math($This)
		Local $oObj = _AutoItObject_Create($This)
        _AutoItObject_AddMethod($oObj, 'Abs', JS_Abs)
		_AutoItObject_AddMethod($oObj, 'ACos', JS_ACos)
        _AutoItObject_AddMethod($oObj, 'ASin', JS_ASin)
        _AutoItObject_AddMethod($oObj, 'ATan', JS_ATan)
        _AutoItObject_AddMethod($oObj, 'BitAND', JS_BitAND)
		_AutoItObject_AddMethod($oObj, 'BitNOT', JS_BitNOT)
		_AutoItObject_AddMethod($oObj, 'BitOR', JS_BitOR)
		_AutoItObject_AddMethod($oObj, 'BitRotate', JS_BitRotate)
		_AutoItObject_AddMethod($oObj, 'BitShift', JS_BitShift)
		_AutoItObject_AddMethod($oObj, 'BitXOR', JS_BitXOR)
        _AutoItObject_AddMethod($oObj, 'Ceiling', JS_Ceiling)
        _AutoItObject_AddMethod($oObj, 'Cos', JS_Cos)
        _AutoItObject_AddMethod($oObj, 'Exp', JS_Exp)
		_AutoItObject_AddMethod($oObj, 'Floor', JS_Floor)
        _AutoItObject_AddMethod($oObj, 'Log', JS_Log)
        _AutoItObject_AddMethod($oObj, 'Mod', JS_Mod)
        _AutoItObject_AddMethod($oObj, 'Random', JS_Random)
        _AutoItObject_AddMethod($oObj, 'Sin', JS_Sin)
        _AutoItObject_AddMethod($oObj, 'Sqrt', JS_Sqrt)
		_AutoItObject_AddMethod($oObj, 'SRandom', JS_SRandom)
        _AutoItObject_AddMethod($oObj, 'Tan', JS_Tan)
		Return $oObj
EndFunc

	Func JS_Abs($This,$expression)
		Return $This.Return(Abs($expression),@error,@extended)
	EndFunc
	Func JS_ACos($This,$expression)
		Return $This.Return(ACos($expression),@error,@extended)
	EndFunc
	Func JS_ASin($This,$expression)
		Return $This.Return(ASin($expression),@error,@extended)
	EndFunc
	Func JS_ATan($This,$expression)
		Return $This.Return(ATan($expression),@error,@extended)
	EndFunc
	Func JS_BitAND($This,$value1,$value2,$value_n) ; <=========
		Return $This.Return(BitAND($value1,$value2,$value_n),@error,@extended)
	EndFunc
	Func JS_BitNOT($This,$value)
		Return $This.Return(BitNOT($value),@error,@extended)
	EndFunc
	Func JS_BitOR($This,$value1,$value2,$value_n) ; <=========
		Return $This.Return(BitOR($value1,$value2,$value_n),@error,@extended)
	EndFunc
	Func JS_BitRotate($This,$value,$shift = 1,$size = "W")
		Return $This.Return(BitRotate($value,$shift,$size),@error,@extended)
	EndFunc
	Func JS_BitShift($This,$value,$shift)
		Return $This.Return(BitShift($value,$shift),@error,@extended)
	EndFunc
	Func JS_BitXOR($This,$value1,$value2,$value_n) ; <=========
		Return $This.Return(BitXOR($value1,$value2,$value_n),@error,@extended)
	EndFunc
	Func JS_Ceiling($This,$expression)
		Return $This.Return(Ceiling($expression),@error,@extended)
	EndFunc

    Func JS_Cos($This,$expression)
		Return $This.Return(Cos($expression),@error,@extended)
	EndFunc


    Func JS_Exp($This,$expression)
		Return $This.Return(Exp($expression),@error,@extended)
	EndFunc
	Func JS_Floor($This,$expression)
		Return $This.Return(Floor($expression),@error,@extended)
	EndFunc

	Func JS_Log($This,$expression)
		Return $This.Return(Log($expression),@error,@extended)
	EndFunc

	Func JS_Mod($This,$value1,$value2)
		Return $This.Return(Mod($value1,$value2),@error,@extended)
	EndFunc

	Func JS_Random($This,$Min = 0,$Max = 1,$Flag = 0)
		Return $This.Return(Random($Min,$Max,$Flag),@error,@extended)
	EndFunc
	Func JS_Sin($This,$expression)
		Return $This.Return(Sin($expression),@error,@extended)
	EndFunc
	Func JS_Sqrt($This,$expression)
		Return $This.Return(Sqrt($expression),@error,@extended)
	EndFunc
	Func JS_SRandom($This,$Seed)
		Return $This.Return(SRandom($Seed),@error,@extended)
	EndFunc

	Func JS_Tan($This,$expression)
		Return $This.Return(Tan($expression),@error,@extended)
	EndFunc