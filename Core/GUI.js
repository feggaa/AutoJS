function GUI() {
	_Autoit_ = AutoItObject(Obj_GUI)
}
GUI.prototype.GUICreate = function($title,$width ,$height ,$left ,$top ,$style ,$exStyle ,$parent ){
	return _Autoit_.GUICreate($title,$width || null,$height || null,$left || -1,$top || -1,$style || -1,$exStyle || -1,$parent || 0)
}
GUI.prototype.GUICtrlCreateAvi = function($filename,$subfileid,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateAvi($filename,$subfileid,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateButton = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateButton($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateCheckbox = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateCheckbox($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateCombo = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateCombo($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateContextMenu = function($controlID ){
	return _Autoit_.GUICtrlCreateContextMenu($controlID || null)
}
GUI.prototype.GUICtrlCreateDate = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateDate($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateDummy = function(){
	return _Autoit_.GUICtrlCreateDummy()
}
GUI.prototype.GUICtrlCreateEdit = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateEdit($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateGraphic = function($left,$top,$width ,$height ,$style ){
	return _Autoit_.GUICtrlCreateGraphic($left,$top,$width || null,$height || null,$style || null)
}
GUI.prototype.GUICtrlCreateGroup = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateGroup($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateIcon = function($filename,$iconName,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateIcon($filename,$iconName,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateInput = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateInput($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateLabel = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateLabel($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateList = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateList($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateListView = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateListView($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateListViewItem = function($text,$listviewID){
	return _Autoit_.GUICtrlCreateListViewItem($text,$listviewID)
}
GUI.prototype.GUICtrlCreateMenu = function($submenutext,$menuID ,$menuentry ){
	return _Autoit_.GUICtrlCreateMenu($submenutext,$menuID || -1,$menuentry || -1)
}
GUI.prototype.GUICtrlCreateMenuItem = function($text,$menuID,$menuentry ,$menuradioitem ){
	return _Autoit_.GUICtrlCreateMenuItem($text,$menuID,$menuentry || -1,$menuradioitem || 0)
}
GUI.prototype.GUICtrlCreateMonthCal = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateMonthCal($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateObj = function($ObjectVar,$left,$top,$width ,$height ){
	return _Autoit_.GUICtrlCreateObj($ObjectVar,$left,$top,$width || null,$height || null)
}
GUI.prototype.GUICtrlCreatePic = function($filename,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreatePic($filename,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateProgress = function($left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateProgress($left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateRadio = function($text,$left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateRadio($text,$left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateSlider = function($left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateSlider($left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateTab = function($left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateTab($left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateTabItem = function($text){
	return _Autoit_.GUICtrlCreateTabItem($text)
}
GUI.prototype.GUICtrlCreateTreeView = function($left,$top,$width ,$height ,$style ,$exStyle ){
	return _Autoit_.GUICtrlCreateTreeView($left,$top,$width || null,$height || null,$style || -1,$exStyle || -1)
}
GUI.prototype.GUICtrlCreateTreeViewItem = function($text,$treeviewID){
	return _Autoit_.GUICtrlCreateTreeViewItem($text,$treeviewID)
}
GUI.prototype.GUICtrlCreateUpdown = function($inputcontrolID,$style ){
	return _Autoit_.GUICtrlCreateUpdown($inputcontrolID,$style || -1)
}
GUI.prototype.GUICtrlDelete = function($controlID){
	return _Autoit_.GUICtrlDelete($controlID)
}
GUI.prototype.GUICtrlGetHandle = function($controlID){
	return _Autoit_.GUICtrlGetHandle($controlID)
}
GUI.prototype.GUICtrlGetState = function($controlID){
	return _Autoit_.GUICtrlGetState($controlID)
}
GUI.prototype.GUICtrlRead = function($controlID,$advanced ){
	return _Autoit_.GUICtrlRead($controlID,$advanced || 0)
}
GUI.prototype.GUICtrlRecvMsg = function($controlID ,$msg,$wParam ,$lParamType ){
	return _Autoit_.GUICtrlRecvMsg($controlID ,$msg,$wParam || null,$lParamType || null)
}
GUI.prototype.GUICtrlRegisterListViewSort = function($controlID,$function){
	return _Autoit_.GUICtrlRegisterListViewSort($controlID,$function)
}
GUI.prototype.GUICtrlSendMsg = function($controlID,$msg ,$wParam,$lParam){
	return _Autoit_.GUICtrlSendMsg($controlID,$msg ,$wParam,$lParam)
}
GUI.prototype.GUICtrlSendToDummy = function($controlID,$state ){
	return _Autoit_.GUICtrlSendToDummy($controlID,$state || null)
}
GUI.prototype.GUICtrlSetBkColor = function($controlID,$backgroundcolor){
	return _Autoit_.GUICtrlSetBkColor($controlID,$backgroundcolor)
}
GUI.prototype.GUICtrlSetColor = function($controlID,$textcolor){
	return _Autoit_.GUICtrlSetColor($controlID,$textcolor)
}
GUI.prototype.GUICtrlSetCursor = function($controlID,$cursorID){
	return _Autoit_.GUICtrlSetCursor($controlID,$cursorID)
}
GUI.prototype.GUICtrlSetData = function($controlID,$data,$default ){
	return _Autoit_.GUICtrlSetData($controlID,$data,$null || null)
}
GUI.prototype.GUICtrlSetDefBkColor = function($defbkcolor,$winhandle ){
	return _Autoit_.GUICtrlSetDefBkColor($defbkcolor,$winhandle || null)
}
GUI.prototype.GUICtrlSetDefColor = function($deftextcolor,$winhandle ){
	return _Autoit_.GUICtrlSetDefColor($deftextcolor,$winhandle || null)
}
GUI.prototype.GUICtrlSetFont = function($controlID,$size,$weight,$attribute ,$fontname ,$quality ){
	return _Autoit_.GUICtrlSetFont($controlID,$size,$weight,$attribute || null,$fontname || null,$quality || null)
}
GUI.prototype.GUICtrlSetGraphic = function($controlID,$type,$par1,$par2,$par3,$par4,$par5,$par6){
	return _Autoit_.GUICtrlSetGraphic($controlID,$type,$par1,$par2|| null,$par3|| null,$par4|| null,$par5|| null,$par6|| null)
}
GUI.prototype.GUICtrlSetImage = function($controlID,$filename,$iconname ,$icontype ){
	return _Autoit_.GUICtrlSetImage($controlID,$filename,$iconname || null,$icontype || null)
}
GUI.prototype.GUICtrlSetLimit = function($controlID,$max,$min ){
	return _Autoit_.GUICtrlSetLimit($controlID,$max,$min || 0)
}
GUI.prototype.GUICtrlSetOnEvent = function($controlID,$function){
	return _Autoit_.GUICtrlSetOnEvent($controlID,$function)
}
GUI.prototype.GUICtrlSetPos = function($controlID,$left,$top ,$width ,$height ){
	return _Autoit_.GUICtrlSetPos($controlID,$left,$top || null,$width || null,$height || null)
}
GUI.prototype.GUICtrlSetResizing = function($controlID,$resizing){
	return _Autoit_.GUICtrlSetResizing($controlID,$resizing)
}
GUI.prototype.GUICtrlSetState = function($controlID,$state){
	return _Autoit_.GUICtrlSetState($controlID,$state)
}
GUI.prototype.GUICtrlSetStyle = function($controlID,$style,$exStyle ){
	return _Autoit_.GUICtrlSetStyle($controlID,$style,$exStyle || null)
}
GUI.prototype.GUICtrlSetTip = function($controlID,$tiptext,$title ,$icon ,$options ){
	return _Autoit_.GUICtrlSetTip($controlID,$tiptext,$title || null,$icon || null,$options || null)
}
GUI.prototype.GUIDelete = function($winhandle ){
	return _Autoit_.GUIDelete($winhandle || null)
}
GUI.prototype.GUIGetCursorInfo = function($winhandle ){
	return _Autoit_.GUIGetCursorInfo($winhandle || null)
}
GUI.prototype.GUIGetMsg = function($advanced ){
	return _Autoit_.GUIGetMsg($advanced || 0)
}
GUI.prototype.GUIGetStyle = function($winhandle ){
	return _Autoit_.GUIGetStyle($winhandle || null)
}
GUI.prototype.GUIRegisterMsg = function($msgID,$function){
	return _Autoit_.GUIRegisterMsg($msgID,$function)
}
GUI.prototype.GUISetAccelerators = function($accelerators,$winhandle ){
	return _Autoit_.GUISetAccelerators($accelerators,$winhandle || null)
}
GUI.prototype.GUISetBkColor = function($background,$winhandle ){
	return _Autoit_.GUISetBkColor($background,$winhandle || null)
}
GUI.prototype.GUISetCoord = function($left,$top,$width ,$height ,$winhandle ){
	return _Autoit_.GUISetCoord($left,$top,$width || null,$height || null,$winhandle || null)
}
GUI.prototype.GUISetCursor = function($cursorID ,$override ,$winhandle ){
	return _Autoit_.GUISetCursor($cursorID || null,$override || 0,$winhandle || 0)
}
GUI.prototype.GUISetFont = function($size,$weight ,$attribute ,$fontname ,$winhandle ,$quality ){
	return _Autoit_.GUISetFont($size,$weight || null,$attribute || null,$fontname || null,$winhandle || null,$quality || null)
}
GUI.prototype.GUISetHelp = function($helpfile,$winhandle ){
	return _Autoit_.GUISetHelp($helpfile,$winhandle || null)
}
GUI.prototype.GUISetIcon = function($iconfile,$iconID ,$winhandle ){
	return _Autoit_.GUISetIcon($iconfile,$iconID || null,$winhandle || null)
}
GUI.prototype.GUISetOnEvent = function($specialID,$function,$winhandle ){
	return _Autoit_.GUISetOnEvent($specialID,$function,$winhandle || null)
}
GUI.prototype.GUISetState = function($flag,$winhandle ){
	return _Autoit_.GUISetState($flag,$winhandle || null)
}
GUI.prototype.GUISetStyle = function($Style,$ExStyle ,$winhandle ){
	return _Autoit_.GUISetStyle($Style,$ExStyle || null,$winhandle || null)
}
GUI.prototype.GUIStartGroup = function($winhandle ){
	return _Autoit_.GUIStartGroup($winhandle || null)
}
GUI.prototype.GUISwitch = function($winhandle,$tabitemID ){
	return _Autoit_.GUISwitch($winhandle,$tabitemID || null)
}

module.exports = GUI;
return GUI