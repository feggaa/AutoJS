function Environment() {
	_Autoit_ = AutoItObject(Obj_Environment)
}
Environment.prototype.ClipGet = function(){
	return _Autoit_.ClipGet()[0]
}
Environment.prototype.ClipPut = function($value){
	return _Autoit_.ClipPut($value)
}
Environment.prototype.EnvGet = function($envvariable){
	return _Autoit_.EnvGet($envvariable)
}
Environment.prototype.EnvSet = function($envvariable,$value ){
	return _Autoit_.EnvSet($envvariable,$value || null)
}
Environment.prototype.EnvUpdate = function(){
	return _Autoit_.EnvUpdate()
}
Environment.prototype.MemGetStats = function(){
	return _Autoit_.MemGetStats()
}

module.exports = Environment;
return Environment