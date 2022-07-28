Func Process($This)
		Local $oObj = _AutoItObject_Create($This)
        _AutoItObject_AddMethod($oObj, 'ProcessClose', JS_ProcessClose)
        _AutoItObject_AddMethod($oObj, 'ProcessExists', JS_ProcessExists)
        _AutoItObject_AddMethod($oObj, 'ProcessGetStats', JS_ProcessGetStats)
        _AutoItObject_AddMethod($oObj, 'ProcessList', JS_ProcessList)
        _AutoItObject_AddMethod($oObj, 'ProcessSetPriority', JS_ProcessSetPriority)
        _AutoItObject_AddMethod($oObj, 'ProcessWait', JS_ProcessWait)
        _AutoItObject_AddMethod($oObj, 'ProcessWaitClose', JS_ProcessWaitClose)

		_AutoItObject_AddMethod($oObj, 'Run', JS_Run)
		_AutoItObject_AddMethod($oObj, 'RunAs', JS_RunAs)
		_AutoItObject_AddMethod($oObj, 'RunAsWait', JS_RunAsWait)
		_AutoItObject_AddMethod($oObj, 'RunWait', JS_RunWait)

		_AutoItObject_AddMethod($oObj, 'ShellExecute', JS_ShellExecute)
		_AutoItObject_AddMethod($oObj, 'ShellExecuteWait', JS_ShellExecuteWait)
		_AutoItObject_AddMethod($oObj, 'Shutdown', JS_Shutdown)

		_AutoItObject_AddMethod($oObj, 'StderrRead', JS_StderrRead)
		_AutoItObject_AddMethod($oObj, 'StdinWrite', JS_StdinWrite)
		_AutoItObject_AddMethod($oObj, 'StdioClose', JS_StdioClose)
		_AutoItObject_AddMethod($oObj, 'StdoutRead', JS_StdoutRead)
		Return $oObj
EndFunc
    Func JS_ProcessClose($This,$process)
		Return $This.Return(ProcessClose($process),@error,@extended)
	EndFunc
	Func JS_ProcessExists($This,$process)
		Return $This.Return(ProcessExists($process),@error,@extended)
	EndFunc
	Func JS_ProcessGetStats($This,$process = -1,$type = 0)
		Return $This.Return(ProcessGetStats($process,$type),@error,@extended)
	EndFunc
	Func JS_ProcessList($This,$name = Default)
		Return $This.Return(ProcessList($name),@error,@extended)
	EndFunc
	Func JS_ProcessSetPriority($This,$process,$priority)
		Return $This.Return(ProcessSetPriority($process,$priority),@error,@extended)
	EndFunc
	Func JS_ProcessWait($This,$process,$timeout = 0)
		Return $This.Return(ProcessWait($process,$timeout),@error,@extended)
	EndFunc
	Func JS_ProcessWaitClose($This,$process,$timeout = 0)
		Return $This.Return(ProcessWaitClose($process,$timeout),@error,@extended)
	EndFunc

	Func JS_Run($This,$program,$workingdir = "",$show_flag = @SW_HIDE,$opt_flag = Default)
		Return $This.Return(Run($program,$workingdir,$show_flag,$opt_flag),@error,@extended)
	EndFunc
	Func JS_RunAs($This,$username,$domain,$password,$logon_flag,$program,$workingdir = "",$show_flag = @SW_HIDE,$opt_flag = Default)
		Return $This.Return(RunAs($username,$domain,$password,$logon_flag,$program,$workingdir,$show_flag,$opt_flag),@error,@extended)
	EndFunc
	Func JS_RunAsWait($This,$username,$domain,$password,$logon_flag,$program,$workingdir = "",$show_flag = @SW_HIDE,$opt_flag = Default)
		Return $This.Return(RunAsWait($username,$domain,$password,$logon_flag,$program,$workingdir,$show_flag,$opt_flag),@error,@extended)
	EndFunc
	Func JS_RunWait($This,$program,$workingdir = "",$show_flag = @SW_HIDE,$opt_flag = Default)
		Return $This.Return(RunWait($program,$workingdir,$show_flag,$opt_flag),@error,@extended)
	EndFunc

	Func JS_ShellExecute($This,$filename,$parameters = "",$workingdir = "",$verb = Default,$showflag = @SW_SHOW)
		Return $This.Return(ShellExecute($filename,$parameters,$workingdir,$verb,$showflag),@error,@extended)
	EndFunc
	Func JS_ShellExecuteWait($This,$filename,$parameters = "",$workingdir = "",$verb = Default,$showflag = @SW_SHOW)
		Return $This.Return(ShellExecuteWait($filename,$parameters,$workingdir,$verb,$showflag),@error,@extended)
	EndFunc

	Func JS_StderrRead($This,$process_id,$peek = False,$binary = False)
		Return $This.Return(StderrRead($process_id,$peek,$binary),@error,@extended)
	EndFunc
	Func JS_StdinWrite($This,$process_id,$data = Default)
		Return $This.Return(StdinWrite($process_id,$data),@error,@extended)
	EndFunc
	Func JS_StdioClose($This,$process_id)
		Return $This.Return(StdioClose($process_id),@error,@extended)
	EndFunc
	Func JS_StdoutRead($This,$process_id,$peek = False,$binary = False)
		Return $This.Return(StdoutRead($process_id,$peek,$binary),@error,@extended)
	EndFunc

	Func JS_Shutdown($This,$code)
		Return $This.Return(Shutdown($code),@error,@extended)
	EndFunc