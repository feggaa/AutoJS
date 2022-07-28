function Registry() {
	this.Autoit = AutoItObject(Obj_Registry)
}
Registry.prototype.RegDelete = function($keyname,$valuename ){
	return this.Autoit.RegDelete($keyname,$valuename || null)
}
Registry.prototype.RegEnumKey = function($keyname,$instance){
	return this.Autoit.RegEnumKey($keyname,$instance)
}
Registry.prototype.RegEnumVal = function($keyname,$instance){
	return this.Autoit.RegEnumVal($keyname,$instance)
}
Registry.prototype.RegRead = function($keyname,$valuename){
	return this.Autoit.RegRead($keyname,$valuename)
}

/**
 * Creates a key or value in the registry.
 * @param keyname The registry key to write to. If no other parameters are specified this key will simply be created.
 * @param [valuename [optional] The valuename to write to.
 * @param [type [optional] Type of key to write: "REG_SZ", "REG_MULTI_SZ", "REG_EXPAND_SZ", "REG_DWORD", "REG_QWORD", or "REG_BINARY".
 * @param [value [optional] The value to write.
 */
Registry.prototype.RegWrite = function($keyname,$valuename ,$type ,$value ){
	return this.Autoit.RegWrite($keyname,$valuename || null,$type || null,$value || null)
}


module.exports = Registry;
return Registry