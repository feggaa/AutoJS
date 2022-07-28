/*
    $AutoIt is Autoit Object
*/
function require(file){ 
    ConsoleWrite("\n require-> "+file)
    return $AutoIt.require(file);
}


function module() {
    this.exports = 0
}
Array.prototype.setitem = function(index,value) {
    this[index] = value
   return true
};

String.prototype.replaceAll = function(search, replace){
	return this.replace(new RegExp(search, 'g'), replace)
 }

Object.prototype.item = function(index) { 
    return this[index]
};

Object.prototype.toArray = function() { 
   return $AutoIt.Array(this)
};

Object.prototype.Keys = function(){
	var keys = [];
	for(var key in this) if (typeof this[key] !== "function") keys.push(key);
	return keys;
 } 
 
 /*
 Object.prototype.toObject = function(To){
	return $AutoIt.ToObject(this,To)
 }
 */

 Object.prototype.isArray = function() {
	  return this instanceof Array
 }


function Call($function,$Array){
	return $AutoIt.Call($function,$Array)
}

function InputBox($title,$prompt,$default ,$password_char ,$width ,$height ,$left ,$top ,$timeout ,$hwnd ){
	return $AutoIt.InputBox($title,$prompt,$null || "",$password_char || "*",$width || -1,$height || -1,$left || null,$top || null,$timeout || 0,$hwnd || 0)
}

function DLL(Dll,sTag,$iFlag) {
	return $AutoIt.DLL(Dll,sTag || "",$iFlag || 0)
}

function IsAdmin(){
	return $AutoIt.IsAdmin()
}
function IsArray($variable){
	return $AutoIt.IsArray($variable)
}
function IsBinary($expression){
	return $AutoIt.IsBinary($expression)
}
function IsBool($variable){
	return $AutoIt.IsBool($variable)
}
function IsDeclared($expression){
	return $AutoIt.IsDeclared($expression)
}
function IsDllStruct($variable){
	return $AutoIt.IsDllStruct($variable)
}
function IsFloat($variable){
	return $AutoIt.IsFloat($variable)
}
function IsFunc($expression){
	return $AutoIt.IsFunc($expression)
}
function IsHWnd($variable){
	return $AutoIt.IsHWnd($variable)
}
function IsInt($variable){
	return $AutoIt.IsInt($variable)
}
function IsKeyword($variable){
	return $AutoIt.IsKeyword($variable)
}
function IsMap($variable){
	return $AutoIt.IsMap($variable)
}
function IsNumber($variable){
	return $AutoIt.IsNumber($variable)
}
function IsObj($variable){
	return $AutoIt.IsObj($variable)
}
function IsPtr($variable){
	return $AutoIt.IsPtr($variable)
}
function IsString($variable){
	return $AutoIt.IsString($variable)
}
function MsgBox($flag,$title,$text,$timeout ,$hwnd ){
    
	return $AutoIt.MsgBox($flag,$title,$text,$timeout || 0,$hwnd || 0)
}
function Sleep($delay){
    
	$AutoIt.Sleep($delay)
}

function Exit($code){
	$AutoIt.Exit($code || 0)
}
function console(data) {
    ConsoleWrite(data.toString());
}

function DllCall($dll,$ReturnType,$function,$Array){
	var iReturn =  $AutoIt.DllCall($dll,$ReturnType,$function,$Array || [])
	return iReturn[1] ? false : iReturn[0]
}
function DllCallAddress($ReturnType,$address,$Array){
	var iReturn = $AutoIt.DllCallAddress($ReturnType,$address,$Array)
	return iReturn[1] ? false : iReturn[0]
}
function DllCallbackFree($handle){
	var iReturn = $AutoIt.DllCallbackFree($handle)
	return iReturn[1] ? false : iReturn[0]
}
function DllCallbackGetPtr($handle){
	var iReturn = $AutoIt.DllCallbackGetPtr($handle)
	return iReturn[1] ? false : iReturn[0]
}
function DllCallbackRegister($function,$return_type,$params){
	var iReturn = $AutoIt.DllCallbackRegister($function,$return_type,$params)
	return iReturn[1] ? false : iReturn[0]
}
function DllClose(){
	var iReturn = $AutoIt.DllClose(this.hDll)
	return iReturn[1] ? false : iReturn[0]
}
function DllOpen($filename){
	var iReturn = $AutoIt.DllOpen($filename)
	return iReturn[1] ? false : iReturn[0]
}
function DllStructCreate($Struct,$Pointer){
	var iReturn = $AutoIt.DllStructCreate($Struct,$Pointer || null)
	return iReturn[1] ? false : iReturn[0]
}
function DllStructGetData($Struct,$Element,$index ){
	var iReturn = $AutoIt.DllStructGetData($Struct,$Element,$index || null)
	return iReturn[1] ? false : iReturn[0]
}
function DllStructGetPtr($Struct,$Element ){
	var iReturn = $AutoIt.DllStructGetPtr($Struct,$Element || null)
	return iReturn[1] ? false : iReturn[0]
}
function DllStructGetSize($Struct){
	var iReturn = $AutoIt.DllStructGetSize($Struct)
	return iReturn[1] ? false : iReturn[0]
}
function DllStructSetData($Struct,$Element,$value,$index ){
	var iReturn = $AutoIt.DllStructSetData($Struct,$Element,$value,$index || null)
	return iReturn[1] ? false : iReturn[0]
}