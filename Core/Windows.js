/**
 * @param [title The title/hWnd/class of the window
 * @param [text  `[optional]` The text of the window. Default is an empty string. See Text special definition.
 */
function Windows(title,text) {
	_Autoit_ = AutoItObject(Obj_Windows)
	this.title = title || null
    this.text  = text || ""
}


/**
 * Checks to see if a specified window exists and is currently active.
 * @param [title The title/hWnd/class of the window to check. See Title special definition.
 * @param [text `[optional]` The text of the window to check. Default is an empty string. See Text special definition.
 */

Windows.prototype.Activate = function(){
	return _Autoit_.WinActivate(this.title,this.text)
}


/**
 * Checks to see if a specified window exists and is currently active.
 * @param title The title/hWnd/class of the window to check. See Title special definition.
 * @param [text `[optional]` The text of the window to check. Default is an empty string. See Text special definition.
 */

Windows.prototype.Active = function(){
	return _Autoit_.WinActive(this.title,this.text)
}


Windows.prototype.Close = function(){
	return _Autoit_.WinClose(this.title,this.text)
}
Windows.prototype.Exists = function(){
	return _Autoit_.WinExists(this.title,this.text)[0]
}
Windows.prototype.Flash = function($flashes ,$delay ){
	return _Autoit_.WinFlash(this.title,this.text,$flashes || 4,$delay || 500)
}
Windows.prototype.GetCaretPos = function(){
	return _Autoit_.WinGetCaretPos()
}
Windows.prototype.GetClassList = function( ){
	return _Autoit_.WinGetClassList(this.title,this.text)
}
Windows.prototype.GetClientSize = function(){
	return _Autoit_.WinGetClientSize(this.title,this.text)
}
Windows.prototype.GetHandle = function(){
	return _Autoit_.WinGetHandle(this.title,this.text)
}
Windows.prototype.GetPos = function(){
	return _Autoit_.WinGetPos(this.title,this.text)
}
Windows.prototype.GetProcess = function(){
	return _Autoit_.WinGetProcess(this.title,this.text)
}
Windows.prototype.GetState = function(){
	return _Autoit_.WinGetState(this.title,this.text)
}
Windows.prototype.GetText = function(){
	return _Autoit_.WinGetText(this.title,this.text)
}
Windows.prototype.GetTitle = function( ){
	return _Autoit_.WinGetTitle(this.title,this.text)
}
Windows.prototype.Kill = function(){
	return _Autoit_.WinKill(this.title,this.text)
}
Windows.prototype.List = function(){
	return _Autoit_.WinList(this.title,this.text)
}
Windows.prototype.MenuSelectItem = function($item,$item1 ,$item2 ,$item3 ,$item4 ,$item5 ){
	return _Autoit_.WinMenuSelectItem($item,$item1 || "",$item2 || "",$item3 || "",$item4 || "",$item5 || "")
}
Windows.prototype.MinimizeAll = function(){
	return _Autoit_.WinMinimizeAll()
}
Windows.prototype.MinimizeAllUndo = function(){
	return _Autoit_.WinMinimizeAllUndo()
}
Windows.prototype.Move = function($x, $y, $width , $height , $speed ){
	return _Autoit_.WinMove(this.title,this.text,$x, $y, $width || null, $height || null, $speed || null)
}
Windows.prototype.SetOnTop = function($flag ){
	return _Autoit_.WinSetOnTop(this.title,this.text,$flag )
}
Windows.prototype.SetState = function($flag ){
	return _Autoit_.WinSetState(this.title,this.text,$flag )
}
Windows.prototype.SetTitle = function($newtitle){
	return _Autoit_.WinSetTitle(this.title,this.text,$newtitle)
}
Windows.prototype.SetTrans = function($transparency){
	return _Autoit_.WinSetTrans(this.title,this.text,$transparency)
}
Windows.prototype.Wait = function($timeout ){
	return _Autoit_.WinWait(this.title,this.text,$timeout || 0)
}
Windows.prototype.WaitActive = function($timeout ){
	return _Autoit_.WinWaitActive(this.title,this.text,$timeout || 0)
}
Windows.prototype.WaitClose = function($timeout ){
	return _Autoit_.WinWaitClose(this.title,this.text,$timeout || 0)
}
Windows.prototype.WaitNotActive = function($timeout ){
	return _Autoit_.WinWaitNotActive(this.title,this.text,$timeout || 0)
}
Windows.prototype.ControlClick = function($controlID,$button ,$clicks ,$x ,$y ){
	return _Autoit_.ControlClick(this.title,this.text,$controlID,$button || "left",$clicks || 1,$x || null,$y || null)
}
Windows.prototype.ControlCommand = function($controlID,$command,$option){
	return _Autoit_.ControlCommand(this.title,this.text,$controlID,$command,$option)
}
Windows.prototype.ControlDisable = function($controlID){
	return _Autoit_.ControlDisable(this.title,this.text,$controlID)
}
Windows.prototype.ControlEnable = function($controlID){
	return _Autoit_.ControlEnable(this.title,this.text,$controlID)
}
Windows.prototype.ControlFocus = function($controlID){
	return _Autoit_.ControlFocus(this.title,this.text,$controlID)
}
Windows.prototype.ControlGetFocus = function(){
	return _Autoit_.ControlGetFocus(this.title,this.text)
}
Windows.prototype.ControlGetHandle = function($controlID){
	return _Autoit_.ControlGetHandle(this.title,this.text,$controlID)
}
Windows.prototype.ControlGetPos = function($controlID){
	return _Autoit_.ControlGetPos(this.title,this.text,$controlID)
}
Windows.prototype.ControlGetText = function($controlID){
	return _Autoit_.ControlGetText(this.title,this.text,$controlID)
}
Windows.prototype.ControlHide = function($controlID){
	return _Autoit_.ControlHide(this.title,this.text,$controlID)
}
Windows.prototype.ControlListView = function($controlID,$command,$option1,$option2){
	return _Autoit_.ControlListView(this.title,this.text,$controlID,$command,$option1,$option2)
}
Windows.prototype.ControlMove = function($controlID,$x,$y,$width,$height){
	return _Autoit_.ControlMove(this.title,this.text,$controlID,$x,$y,$width,$height)
}
Windows.prototype.ControlSend = function($controlID,$string,$flag ){
	return _Autoit_.ControlSend(this.title,this.text,$controlID,$string,$flag || 0)
}
Windows.prototype.ControlSetText = function($controlID,$new_text,$flag ){
	return _Autoit_.ControlSetText(this.title,this.text,$controlID,$new_text,$flag || 0)
}
Windows.prototype.ControlShow = function($controlID){
	return _Autoit_.ControlShow(this.title,this.text,$controlID)
}
Windows.prototype.ControlTreeView = function($controlID,$command,$option1){
	return _Autoit_.ControlTreeView(this.title,this.text,$controlID,$command,$option1)
}

module.exports = Windows;

return Windows