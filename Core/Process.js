function Process() {
	_Autoit_ = AutoItObject(Obj_Process)
}
Process.prototype.ProcessClose = function($process){
	return _Autoit_.ProcessClose($process)
}
Process.prototype.ProcessExists = function($process){
	return _Autoit_.ProcessExists($process)
}
Process.prototype.ProcessGetStats = function($process ,$type ){
	return _Autoit_.ProcessGetStats($process || -1,$type || 0)
}
Process.prototype.ProcessList = function($name ){
	return _Autoit_.ProcessList($name || null)
}
Process.prototype.ProcessSetPriority = function($process,$priority){
	return _Autoit_.ProcessSetPriority($process,$priority)
}
Process.prototype.ProcessWait = function($process,$timeout ){
	return _Autoit_.ProcessWait($process,$timeout || 0)
}
Process.prototype.ProcessWaitClose = function($process,$timeout ){
	return _Autoit_.ProcessWaitClose($process,$timeout || 0)
}
Process.prototype.Run = function($program,$workingdir ,$show_flag ,$opt_flag ){
	return _Autoit_.Run($program,$workingdir || "",$show_flag || 0,$opt_flag || null)
}
Process.prototype.RunAs = function($username,$domain,$password,$logon_flag,$program,$workingdir ,$show_flag ,$opt_flag ){
	return _Autoit_.RunAs($username,$domain,$password,$logon_flag,$program,$workingdir || "",$show_flag || 0,$opt_flag || null)
}
Process.prototype.RunAsWait = function($username,$domain,$password,$logon_flag,$program,$workingdir ,$show_flag ,$opt_flag ){
	return _Autoit_.RunAsWait($username,$domain,$password,$logon_flag,$program,$workingdir || "",$show_flag || 0,$opt_flag || null)
}
Process.prototype.RunWait = function($program,$workingdir ,$show_flag ,$opt_flag ){
	return _Autoit_.RunWait($program,$workingdir || "",$show_flag || 0,$opt_flag || null)
}
Process.prototype.ShellExecute = function($filename,$parameters ,$workingdir ,$verb ,$showflag ){
	return _Autoit_.ShellExecute($filename,$parameters || "",$workingdir || "",$verb || null,$showflag || 5)
}
Process.prototype.ShellExecuteWait = function($filename,$parameters ,$workingdir ,$verb ,$showflag ){
	return _Autoit_.ShellExecuteWait($filename,$parameters || "",$workingdir || "",$verb || null,$showflag || 5)
}
Process.prototype.Shutdown = function($code){
	return _Autoit_.Shutdown($code)
}
Process.prototype.StderrRead = function($process_id,$peek ,$binary ){
	return _Autoit_.StderrRead($process_id,$peek || False,$binary || False)
}
Process.prototype.StdinWrite = function($process_id,$data ){
	return _Autoit_.StdinWrite($process_id,$data || null)
}
Process.prototype.StdioClose = function($process_id){
	return _Autoit_.StdioClose($process_id)
}
Process.prototype.StdoutRead = function($process_id,$peek ,$binary ){
	return _Autoit_.StdoutRead($process_id,$peek || False,$binary || False)
}

module.exports = Process;
return Process