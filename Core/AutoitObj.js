function AutoitObj() {
	_Autoit_ = AutoItObject(Obj_AutoitObj)
}
AutoitObj.prototype.Create = function($classname,$servername ,$username ,$password ){
	return _Autoit_.ObjCreate($classname,$servername || null,$username || null,$password || null)
}
AutoitObj.prototype.CreateInterface = function($CLSID ,$IID,$interface_description ,$flag ){
	return _Autoit_.ObjCreateInterface($CLSID ,$IID,$interface_description || null,$flag || True)
}
AutoitObj.prototype.Event = function($ObjectVar,$functionprefix ,$interface_name ){
	return _Autoit_.ObjEvent($ObjectVar,$functionprefix || null,$interface_name || null)
}
AutoitObj.prototype.Get = function($filename,$classname ,$instance ){
	return _Autoit_.ObjGet($filename,$classname || null,$instance || null)
}
AutoitObj.prototype.Name = function($Objectvariable,$Flag ){
	return _Autoit_.ObjName($Objectvariable,$Flag || 1)
}

module.exports = AutoitObj;

return AutoitObj