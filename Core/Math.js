function Math() {
	_Autoit_ = AutoItObject(Obj_Math)
}
Math.prototype.Abs = function($expression){
	return _Autoit_.Abs($expression)
}
Math.prototype.ACos = function($expression){
	return _Autoit_.ACos($expression)
}
Math.prototype.ASin = function($expression){
	return _Autoit_.ASin($expression)
}
Math.prototype.ATan = function($expression){
	return _Autoit_.ATan($expression)
}
Math.prototype.BitAND = function($value1,$value2,$value_n){
	return _Autoit_.BitAND($value1,$value2,$value_n)
}
Math.prototype.BitNOT = function($value){
	return _Autoit_.BitNOT($value)
}
Math.prototype.BitOR = function($value1,$value2,$value_n){
	return _Autoit_.BitOR($value1,$value2,$value_n)
}
Math.prototype.BitRotate = function($value,$shift ,$size ){
	return _Autoit_.BitRotate($value,$shift || 1,$size || "W")
}
Math.prototype.BitShift = function($value,$shift){
	return _Autoit_.BitShift($value,$shift)
}
Math.prototype.BitXOR = function($value1,$value2,$value_n){
	return _Autoit_.BitXOR($value1,$value2,$value_n)
}
Math.prototype.Ceiling = function($expression){
	return _Autoit_.Ceiling($expression)
}
Math.prototype.Cos = function($expression){
	return _Autoit_.Cos($expression)
}
Math.prototype.Exp = function($expression){
	return _Autoit_.Exp($expression)
}
Math.prototype.Floor = function($expression){
	return _Autoit_.Floor($expression)
}
Math.prototype.Log = function($expression){
	return _Autoit_.Log($expression)
}
Math.prototype.Mod = function($value1,$value2){
	return _Autoit_.Mod($value1,$value2)
}
Math.prototype.Random = function($Min ,$Max ,$Flag ){
	return _Autoit_.Random($Min || 0,$Max || 1,$Flag || 0)
}
Math.prototype.Sin = function($expression){
	return _Autoit_.Sin($expression)
}
Math.prototype.Sqrt = function($expression){
	return _Autoit_.Sqrt($expression)
}
Math.prototype.SRandom = function($Seed){
	return _Autoit_.SRandom($Seed)
}
Math.prototype.Tan = function($expression){
	return _Autoit_.Tan($expression)
}

module.exports = Math;
return Math