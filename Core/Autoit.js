function Autoit() {
	_Autoit_ = AutoItObject(Obj_Autoit)
}
Autoit.prototype.AdlibRegister = function($function,$time ){
	return _Autoit_.AdlibRegister($function,$time || 250)
}
Autoit.prototype.AdlibUnRegister = function($function ){
	return _Autoit_.AdlibUnRegister($function || null)
}
Autoit.prototype.Asc = function($char){
	return _Autoit_.Asc($char)
}
Autoit.prototype.AscW = function($char){
	return _Autoit_.AscW($char)
}
Autoit.prototype.Assign = function($varname,$data,$flag ){
	return _Autoit_.Assign($varname,$data,$flag || 0)
}
Autoit.prototype.AutoItSetOption = function($option,$param ){
	return _Autoit_.AutoItSetOption($option,$param || null)
}
Autoit.prototype.AutoItWinGetTitle = function(){
	return _Autoit_.AutoItWinGetTitle()
}
Autoit.prototype.AutoItWinSetTitle = function($newtitle){
	return _Autoit_.AutoItWinSetTitle($newtitle)
}
Autoit.prototype.Beep = function($Frequency ,$Duration ){
	return _Autoit_.Beep($Frequency || 500,$Duration || 1000)
}
Autoit.prototype.Binary = function($expression){
	return _Autoit_.Binary($expression)
}
Autoit.prototype.BinaryLen = function($binary){
	return _Autoit_.BinaryLen($binary)
}
Autoit.prototype.BinaryMid = function($binary,$start,$count ){
	return _Autoit_.BinaryMid($binary,$start,$count || null)
}
Autoit.prototype.BinaryToString = function($expression,$flag ){
	return _Autoit_.BinaryToString($expression,$flag || 1)
}
Autoit.prototype.BlockInput = function($flag){
	return _Autoit_.BlockInput($flag)
}
Autoit.prototype.Break = function($mode){
	return _Autoit_.Break($mode)
}
Autoit.prototype.Call = function($function,$Array){
	return _Autoit_.Call($function,$Array.toArray())
}
Autoit.prototype.Chr = function($ASCIIcode){
	return _Autoit_.Chr($ASCIIcode)
}
Autoit.prototype.ChrW = function($UNICODEcode){
	return _Autoit_.ChrW($UNICODEcode)
}
Autoit.prototype.Dec = function($hex,$flag ){
	return _Autoit_.Dec($hex,$flag || 0)
}
Autoit.prototype.Eval = function($string){
	return _Autoit_.Eval($string)
}
Autoit.prototype.Execute = function($string){
	return _Autoit_.Execute($string)
}
Autoit.prototype.FuncName = function($Functionvariable){
	return _Autoit_.FuncName($Functionvariable)
}
Autoit.prototype.Hex = function($expression,$length ){
	return _Autoit_.Hex($expression,$length || null)
}
Autoit.prototype.HotKeySet = function($key,$function ){
	return _Autoit_.HotKeySet($key,$function || null)
}
Autoit.prototype.HWnd = function($expression){
	return _Autoit_.HWnd($expression)
}
Autoit.prototype.InputBox = function($title,$prompt,$default ,$password_char ,$width ,$height ,$left ,$top ,$timeout ,$hwnd ){
	return _Autoit_.InputBox($title,$prompt,$null || "",$password_char || "*",$width || -1,$height || -1,$left || null,$top || null,$timeout || 0,$hwnd || 0)
}
Autoit.prototype.Int = function($expression,$flag ){
	return _Autoit_.Int($expression,$flag || 0)
}
Autoit.prototype.IsAdmin = function(){
	return _Autoit_.IsAdmin()
}
Autoit.prototype.IsArray = function($variable){
	return _Autoit_.IsArray($variable)
}
Autoit.prototype.IsBinary = function($expression){
	return _Autoit_.IsBinary($expression)
}
Autoit.prototype.IsBool = function($variable){
	return _Autoit_.IsBool($variable)
}
Autoit.prototype.IsDeclared = function($expression){
	return _Autoit_.IsDeclared($expression)
}
Autoit.prototype.IsDllStruct = function($variable){
	return _Autoit_.IsDllStruct($variable)
}
Autoit.prototype.IsFloat = function($variable){
	return _Autoit_.IsFloat($variable)
}
Autoit.prototype.IsFunc = function($expression){
	return _Autoit_.IsFunc($expression)
}
Autoit.prototype.IsHWnd = function($variable){
	return _Autoit_.IsHWnd($variable)
}
Autoit.prototype.IsInt = function($variable){
	return _Autoit_.IsInt($variable)
}
Autoit.prototype.IsKeyword = function($variable){
	return _Autoit_.IsKeyword($variable)
}
Autoit.prototype.IsMap = function($variable){
	return _Autoit_.IsMap($variable)
}
Autoit.prototype.IsNumber = function($variable){
	return _Autoit_.IsNumber($variable)
}
Autoit.prototype.IsObj = function($variable){
	return _Autoit_.IsObj($variable)
}
Autoit.prototype.IsPtr = function($variable){
	return _Autoit_.IsPtr($variable)
}
Autoit.prototype.IsString = function($variable){
	return _Autoit_.IsString($variable)
}
Autoit.prototype.MapAppend = function($map,$value){
	return _Autoit_.MapAppend($map,$value)
}
Autoit.prototype.MapExists = function($map,$key){
	return _Autoit_.MapExists($map,$key)
}
Autoit.prototype.MapKeys = function($map){
	return _Autoit_.MapKeys($map)
}
Autoit.prototype.MapRemove = function($map,$key){
	return _Autoit_.MapRemove($map,$key)
}
Autoit.prototype.MsgBox = function($flag,$title,$text,$timeout ,$hwnd ){
	return _Autoit_.MsgBox($flag,$title,$text,$timeout || 0,$hwnd || 0)
}
Autoit.prototype.Number = function($expression,$flag ){
	return _Autoit_.Number($expression,$flag || 0)
}
Autoit.prototype.OnAutoItExitRegister = function($function){
	return _Autoit_.OnAutoItExitRegister($function)
}
Autoit.prototype.OnAutoItExitUnRegister = function($function){
	return _Autoit_.OnAutoItExitUnRegister($function)
}
Autoit.prototype.PixelChecksum = function($left,$top,$right,$bottom,$step ,$hwnd ,$mode ){
	return _Autoit_.PixelChecksum($left,$top,$right,$bottom,$step || 1,$hwnd || 0,$mode || 0)
}
Autoit.prototype.PixelGetColor = function($x ,$y,$hwnd ){
	return _Autoit_.PixelGetColor($x ,$y,$hwnd || null)
}
Autoit.prototype.PixelSearch = function($left,$top,$right,$bottom,$color,$shade_variation ,$step ,$hwnd ){
	return _Autoit_.PixelSearch($left,$top,$right,$bottom,$color,$shade_variation || 0,$step || 1,$hwnd || 0)
}
Autoit.prototype.ProgressOff = function(){
	return _Autoit_.ProgressOff()
}
Autoit.prototype.ProgressOn = function($title,$maintext,$subtext,$x_pos ,$y_pos ,$opt ){
	return _Autoit_.ProgressOn($title,$maintext,$subtext,$x_pos || null,$y_pos || null,$opt || null)
}
Autoit.prototype.ProgressSet = function($percent,$subtext ,$maintext ){
	return _Autoit_.ProgressSet($percent,$subtext || null,$maintext || null)
}
Autoit.prototype.Ptr = function($expression){
	return _Autoit_.Ptr($expression)
}
Autoit.prototype.Round = function($expression,$decimalplaces ){
	return _Autoit_.Round($expression,$decimalplaces || null)
}
Autoit.prototype.Send = function($keys,$flag ){
	return _Autoit_.Send($keys,$flag || 0)
}
Autoit.prototype.SendKeepActive = function($title,$text ){
	return _Autoit_.SendKeepActive($title,$text || null)
}
Autoit.prototype.SoundPlay = function($filename,$wait ){
	return _Autoit_.SoundPlay($filename,$wait || 0)
}
Autoit.prototype.SoundSetWaveVolume = function($percent){
	return _Autoit_.SoundSetWaveVolume($percent)
}
Autoit.prototype.SplashImageOn = function($title,$file,$width ,$height ,$x_pos ,$y_pos ,$opt ){
	return _Autoit_.SplashImageOn($title,$file,$width || null,$height || null,$x_pos || null,$y_pos || null,$opt || null)
}
Autoit.prototype.SplashOff = function(){
	return _Autoit_.SplashOff()
}
Autoit.prototype.SplashTextOn = function($title,$text,$w ,$h ,$x_pos ,$y_pos ,$opt ,$fontname ,$fontsz ,$fontwt ){
	return _Autoit_.SplashTextOn($title,$text,$w || 500,$h || 400,$x_pos || null,$y_pos || null,$opt || 0,$fontname || null,$fontsz || 12,$fontwt || null)
}
Autoit.prototype.StatusbarGetText = function($title,$text ,$part ){
	return _Autoit_.StatusbarGetText($title,$text || null,$part || 1)
}
Autoit.prototype.TimerDiff = function($handle){
	return _Autoit_.TimerDiff($handle)
}
Autoit.prototype.TimerInit = function(){
	return _Autoit_.TimerInit()
}
Autoit.prototype.ToolTip = function($text,$x ,$y ,$title ,$icon ,$options ){
	return _Autoit_.ToolTip($text,$x || null,$y || null,$title || null,$icon || 0,$options || 0)
}
Autoit.prototype.UBound = function($Variable,$Dimension ){
	return _Autoit_.UBound($Variable,$Dimension || 1)
}
Autoit.prototype.VarGetType = function($expression){
	return _Autoit_.VarGetType($expression)
}

module.exports = Autoit;
return Autoit