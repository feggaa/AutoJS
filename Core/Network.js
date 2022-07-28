function Network() {
	_Autoit_ = AutoItObject(Obj_Network)
	this.Inet = Inet
    this.TCP  = TCP
	//this.UDP  = UDP
	//region Inet
		function Inet() {
			this.handle  = 0
			this.Flag = {
				FORCERELOAD : 1,
				IGNORESSL : 2,
				ASCIITRANSFER : 4,
				BINARYTRANSFER : 8,
				FORCEBYPASS : 16,
				ASCIITRANSFER_FIF : 1+2+4+16,
				BINARYTRANSFER_FIF : 1+2+8+16
			}
			return this
		}
		Inet.prototype.Close  = function(){ 
			return _AutoIt_.InetClose(this.handle)
		}
		Inet.prototype.Get  = function($URL,$filename,$options,$background){ 
			return _AutoIt_.InetGet($URL,$filename,$options || 0,$background || 0)
		}
		Inet.prototype.GetInfo = function($index){ 
			return _AutoIt_.InetGetInfo(this.handle,$index || -1)
		}
		Inet.prototype.GetSize = function($URL,$options){ 
			return _AutoIt_.InetGetSize($URL,$options || 0)
		}
		Inet.prototype.Read  = function($URL,$options){ 
			return _AutoIt_.InetRead($URL,$options || 0)
		}
	//endregion
	//#region 
	function TCP() {
        this.mainsocket
        this.port
        this.ListenAddress
        this.connecion = []
        this.Socket = Socket
		this._Autoit = _Autoit_
		_Autoit_.TCPStartup()
            //#region 
				function Socket(socket) {
					this.socket = socket
					return this
				}

				Socket.prototype.Receive  = function(maxlen, flag){ 
					var iReturn = _AutoIt_.TCPRecv(this.socket,maxlen || 1024,flag || 0)
					return iReturn[1] ? false : iReturn[0]
				}
				
				Socket.prototype.Send  = function(data){ 
					var iReturn = _AutoIt_.TCPSend(this.socket,data)
					return iReturn[1] ? false : iReturn[0]
				}
				Socket.prototype.Close = function(){ 
					var iReturn = _AutoIt_.TCPCloseSocket(this.socket)
					return iReturn[1] ? false : iReturn[0]				
				}
			//#endregion
        	return this
		}
		
		TCP.prototype.Accept = function(){ 
			var iReturn = _AutoIt_.TCPAccept(this.mainsocket)
			if (iReturn[1] || iReturn[0] == -1)
			{
				return false
			}else{
				var socket = new this.Socket(iReturn[0])
				this.connecion.push(socket)
				return socket
			}
		}
		TCP.prototype.Connect = function(IPAddr, port){ 
			var iReturn = _AutoIt_.Connect(IPAddr, port)
			if (iReturn[1] || iReturn[0] == -1)
			{
				return false
			}else{
				this.mainsocket = new this.Socket(caiReturnll[0])
				return this.mainsocket
			}
		}
		TCP.prototype.Listen = function(IPAddr,port,MaxPendingConnection){
			port = port || this.port
			this.ListenAddress = IPAddr
			this.port = port
			var iReturn = _Autoit_.TCPListen(IPAddr, port,MaxPendingConnection || "")
			if (iReturn[1]) { return false } else { 
				this.mainsocket = iReturn[0]
				return true}
		}
		TCP.prototype.NameToIP  = function(name ){ 
			var iReturn = _AutoIt_.TCPNameToIP(name)
			return iReturn[1] ? false : iReturn[0]
		}
		TCP.prototype.Timeout  = function(Time ){ 
			Time = Time || 100
			call = CallAutoit("opt",["TCPTimeout",Time],{Return : 0,Error : 0,Extended : 0,isError : false})
			if (call[1]) { return false } else { return call[0]}
		}
		TCP.prototype.CloseSocket  = function(){ 
			var iReturn = _AutoIt_.TCPCloseSocket(this.mainsocket)
			return iReturn[1] ? false : iReturn[0]
		}
	//endregion

}
	Network.prototype.FtpSetProxy = function($mode ,$proxy_port ,$username ,$password ){
	return _AutoIt_.FtpSetProxy($mode || 0,$proxy_port || 8080,$username || "",$password || "")
	}
	Network.prototype.HttpSetProxy = function($mode ,$proxy_port ,$username ,$password ){
		return _AutoIt_.HttpSetProxy($mode || 0,$proxy_port || 8080,$username || null,$password || null)
	}
	Network.prototype.HttpSetUserAgent = function($useragent){
		return _AutoIt_.HttpSetUserAgent($useragent)
	}
	Network.prototype.Ping = function($address,$timeout ){
		return _AutoIt_.Ping($address,$timeout || 4000)
	}






/*
Network.prototype.UDPBind = function($IPAddr,$port){
	return this._AutoIt_.UDPBind($IPAddr,$port)
}
Network.prototype.UDPCloseSocket = function($socketarray){
	return this._AutoIt_.UDPCloseSocket($socketarray)
}
Network.prototype.UDPOpen = function($IPAddr,$port,$flag ){
	return this._AutoIt_.UDPOpen($IPAddr,$port,$flag || 0)
}
Network.prototype.UDPRecv = function($socketarray,$maxlen,$flag ){
	return this._AutoIt_.UDPRecv($socketarray,$maxlen,$flag || 0)
}
Network.prototype.UDPSend = function($socketarray,$data){
	return this._AutoIt_.UDPSend($socketarray,$data)
}

*/
module.exports = Network;
return Network