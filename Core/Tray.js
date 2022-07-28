function Tray() {
	this.Autoit = AutoItObject(Obj_Tray)
}
Tray.prototype.TrayCreateItem = function($text,$menuID ,$menuentry ,$menuradioitem ){
	return this.Autoit.TrayCreateItem($text,$menuID || -1,$menuentry || -1,$menuradioitem || 0)
}
Tray.prototype.TrayCreateMenu = function($sub_menutext,$menuID ,$menuentry ){
	return this.Autoit.TrayCreateMenu($sub_menutext,$menuID || -1,$menuentry || -1)
}
Tray.prototype.TrayGetMsg = function(){
	return this.Autoit.TrayGetMsg()
}
Tray.prototype.TrayItemDelete = function($controlID){
	return this.Autoit.TrayItemDelete($controlID)
}
Tray.prototype.TrayItemGetHandle = function($controlID){
	return this.Autoit.TrayItemGetHandle($controlID)
}
Tray.prototype.TrayItemGetState = function($controlID){
	return this.Autoit.TrayItemGetState($controlID)
}
Tray.prototype.TrayItemGetText = function($controlID){
	return this.Autoit.TrayItemGetText($controlID)
}
Tray.prototype.TrayItemSetOnEvent = function($itemID,$function){
	return this.Autoit.TrayItemSetOnEvent($itemID,$function)
}
Tray.prototype.TrayItemSetState = function($controlID,$state){
	return this.Autoit.TrayItemSetState($controlID,$state)
}
Tray.prototype.TrayItemSetText = function($controlID,$text){
	return this.Autoit.TrayItemSetText($controlID,$text)
}
Tray.prototype.TraySetClick = function($flag){
	return this.Autoit.TraySetClick($flag)
}
Tray.prototype.TraySetIcon = function($filename,$iconID){
	return this.Autoit.TraySetIcon($filename,$iconID)
}
Tray.prototype.TraySetOnEvent = function($specialID,$function){
	return this.Autoit.TraySetOnEvent($specialID,$function)
}
Tray.prototype.TraySetPauseIcon = function($filename,$iconID){
	return this.Autoit.TraySetPauseIcon($filename,$iconID)
}
Tray.prototype.TraySetState = function($flag ){
	return this.Autoit.TraySetState($flag || 1)
}
Tray.prototype.TraySetToolTip = function($text){
	return this.Autoit.TraySetToolTip($text)
}
Tray.prototype.TrayTip = function($title,$text,$timeout,$option ){
	return this.Autoit.TrayTip($title,$text,$timeout,$option || 0)
}

module.exports = Tray;
return Tray