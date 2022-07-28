function Mouse() {
	_Autoit_ = AutoItObject(Obj_Mouse)
}
Mouse.prototype.MouseClick = function($button,$x ,$y ,$clicks ,$speed ){
	return _Autoit_.MouseClick($button,$x || null,$y || null,$clicks || 1,$speed || 10)
}
Mouse.prototype.MouseClickDrag = function($button,$x1,$y1,$x2,$y2,$speed ){
	return _Autoit_.MouseClickDrag($button,$x1,$y1,$x2,$y2,$speed || 10)
}
Mouse.prototype.MouseDown = function($button){
	return _Autoit_.MouseDown($button)
}
Mouse.prototype.MouseGetCursor = function(){
	return _Autoit_.MouseGetCursor()
}
Mouse.prototype.MouseGetPos = function($dimension ){
	return _Autoit_.MouseGetPos($dimension || null)
}
Mouse.prototype.MouseMove = function($x,$y,$speed ){
	return _Autoit_.MouseMove($x,$y,$speed || 10)
}
Mouse.prototype.MouseUp = function($button){
	return _Autoit_.MouseUp($button)
}
Mouse.prototype.MouseWheel = function($direction,$clicks ){
	return _Autoit_.MouseWheel($direction,$clicks || 1)
}

module.exports = Mouse;
return Mouse