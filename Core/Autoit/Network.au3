Func Network($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'FtpSetProxy', JS_FtpSetProxy)
		_AutoItObject_AddMethod($oObj, 'HttpSetProxy', JS_HttpSetProxy)
		_AutoItObject_AddMethod($oObj, 'HttpSetUserAgent', JS_HttpSetUserAgent)
		_AutoItObject_AddMethod($oObj, 'Ping', JS_Ping)
		_AutoItObject_AddMethod($oObj, 'InetClose', JS_InetClose)
		_AutoItObject_AddMethod($oObj, 'InetGet', JS_InetGet)
		_AutoItObject_AddMethod($oObj, 'InetGetInfo', JS_InetGetInfo)
		_AutoItObject_AddMethod($oObj, 'InetGetSize', JS_InetGetSize)
		_AutoItObject_AddMethod($oObj, 'InetRead', JS_InetRead)
		_AutoItObject_AddMethod($oObj, 'TCPStartup',JS_TCPStartup)
		_AutoItObject_AddMethod($oObj, 'UDPStartup',JS_UDPStartup)

		_AutoItObject_AddMethod($oObj, 'TCPShutdown',JS_TCPShutdown)
		_AutoItObject_AddMethod($oObj, 'UDPShutdown',JS_UDPShutdown)

		_AutoItObject_AddMethod($oObj, 'TCPAccept', JS_TCPAccept)
		_AutoItObject_AddMethod($oObj, 'TCPCloseSocket', JS_TCPCloseSocket)
		_AutoItObject_AddMethod($oObj, 'TCPConnect', JS_TCPConnect)
		_AutoItObject_AddMethod($oObj, 'TCPListen', JS_TCPListen)
		_AutoItObject_AddMethod($oObj, 'TCPNameToIP', JS_TCPNameToIP)
		_AutoItObject_AddMethod($oObj, 'TCPRecv', JS_TCPRecv)
		_AutoItObject_AddMethod($oObj, 'TCPSend', JS_TCPSend)
		_AutoItObject_AddMethod($oObj, 'UDPBind', JS_UDPBind)
		_AutoItObject_AddMethod($oObj, 'UDPCloseSocket', JS_UDPCloseSocket)
		_AutoItObject_AddMethod($oObj, 'UDPOpen', JS_UDPOpen)
		_AutoItObject_AddMethod($oObj, 'UDPRecv', JS_UDPRecv)
		_AutoItObject_AddMethod($oObj, 'UDPSend', JS_UDPSend)
		Return $oObj
EndFunc
	Func JS_TCPStartup($This)
		TCPStartup()
		Return $This
	EndFunc
	Func JS_TCPShutdown($This)
		TCPShutdown()
		Return $This
	EndFunc
	Func JS_UDPStartup($This)
		UDPStartup()
		Return $This
	EndFunc
	Func JS_UDPShutdown($This)
		UDPShutdown()
		Return $This
	EndFunc
	Func JS_FtpSetProxy($This,$mode = 0,$proxy_port = 8080,$username = "",$password = "")
		Return $This.Return(FtpSetProxy($mode,$proxy_port,$username,$password),@error,@extended)
	EndFunc
	Func JS_HttpSetProxy($This,$mode = 0,$proxy_port = 8080,$username = Default,$password = Default)
		Return $This.Return(HttpSetProxy($mode,$proxy_port,$username,$password),@error,@extended)
	EndFunc
	Func JS_HttpSetUserAgent($This,$useragent)
		Return $This.Return(HttpSetUserAgent($useragent),@error,@extended)
	EndFunc
	Func JS_Ping($This,$address,$timeout = 4000)
		Return $This.Return(Ping($address,$timeout),@error,@extended)
	EndFunc
	Func JS_InetClose($This,$handle)
		Return $This.Return(InetClose($handle),@error,@extended)
	EndFunc
	Func JS_InetGet($This,$URL,$filename,$options = 0,$background = 0)
		Return $This.Return(InetGet($URL,$filename,$options,$background),@error,@extended)
	EndFunc
	Func JS_InetGetInfo($This,$handle,$index = -1)
		Return $This.Return(InetGetInfo($handle,$index),@error,@extended)
	EndFunc
	Func JS_InetGetSize($This,$URL,$options = 0)
		Return $This.Return(InetGetSize($URL,$options),@error,@extended)
	EndFunc
	Func JS_InetRead($This,$URL,$options = 0)
		Return $This.Return(InetRead($URL,$options),@error,@extended)
	EndFunc
	Func JS_TCPAccept($This,$mainsocket)
		Return $This.Return(TCPAccept($mainsocket),@error,@extended)
	EndFunc
	Func JS_TCPCloseSocket($This,$socket)
		Return $This.Return(TCPCloseSocket($socket),@error,@extended)
	EndFunc
	Func JS_TCPConnect($This,$IPAddr,$port)
		Return $This.Return(TCPConnect($IPAddr,$port),@error,@extended)
	EndFunc
	Func JS_TCPListen($This,$IPAddr,$port,$MaxPendingConnection = Default)
		Return $This.Return(TCPListen($IPAddr,$port,$MaxPendingConnection),@error,@extended)
	EndFunc
	Func JS_TCPNameToIP($This,$name)
		Return $This.Return(TCPNameToIP($name),@error,@extended)
	EndFunc
	Func JS_TCPRecv($This,$mainsocket,$maxlen,$flag = 0)
		Return $This.Return(TCPRecv($mainsocket,$maxlen,$flag),@error,@extended)
	EndFunc
	Func JS_TCPSend($This,$mainsocket,$data)
		Return $This.Return(TCPSend($mainsocket,$data),@error,@extended)
	EndFunc
	Func JS_UDPBind($This,$IPAddr,$port)
		Return $This.Return(UDPBind($IPAddr,$port),@error,@extended)
	EndFunc
	Func JS_UDPCloseSocket($This,$socketarray)
		Return $This.Return(UDPCloseSocket($socketarray),@error,@extended)
	EndFunc
	Func JS_UDPOpen($This,$IPAddr,$port,$flag = 0)
		Return $This.Return(UDPOpen($IPAddr,$port,$flag),@error,@extended)
	EndFunc
	Func JS_UDPRecv($This,$socketarray,$maxlen,$flag = 0)
		Return $This.Return(UDPRecv($socketarray,$maxlen,$flag),@error,@extended)
	EndFunc
	Func JS_UDPSend($This,$socketarray,$data)
		Return $This.Return(UDPSend($socketarray,$data),@error,@extended)
	EndFunc
