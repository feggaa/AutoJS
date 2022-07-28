function Files() {
	_Autoit_ = AutoItObject(Obj_Files)
}
Files.prototype.DriveGetDrive = function($type){
	return _Autoit_.DriveGetDrive($type)
}
Files.prototype.DriveGetFileSystem = function($path){
	return _Autoit_.DriveGetFileSystem($path)
}
Files.prototype.DriveGetLabel = function($path){
	return _Autoit_.DriveGetLabel($path)
}
Files.prototype.DriveGetSerial = function($path){
	return _Autoit_.DriveGetSerial($path)
}
Files.prototype.DriveGetType = function($path,$operation ){
	return _Autoit_.DriveGetType($path,$operation || 1)
}
Files.prototype.DriveMapAdd = function($device,$remote_share,$flags ,$user ,$password ){
	return _Autoit_.DriveMapAdd($device,$remote_share,$flags || 0,$user || null,$password || null)
}
Files.prototype.DriveMapDel = function($drive){
	return _Autoit_.DriveMapDel($drive)
}
Files.prototype.DriveMapGet = function($device){
	return _Autoit_.DriveMapGet($device)
}
Files.prototype.DriveSetLabel = function($path,$label){
	return _Autoit_.DriveSetLabel($path,$label)
}
Files.prototype.DriveSpaceFree = function($path){
	return _Autoit_.DriveSpaceFree($path)
}
Files.prototype.DriveSpaceTotal = function($path){
	return _Autoit_.DriveSpaceTotal($path)
}
Files.prototype.DriveStatus = function($path){
	return _Autoit_.DriveStatus($path)
}
Files.prototype.FileChangeDir = function($path){
	return _Autoit_.FileChangeDir($path)
}
Files.prototype.FileClose = function($filehandle){
	return _Autoit_.FileClose($filehandle)
}
Files.prototype.FileCopy = function($source,$dest,$flag ){
	return _Autoit_.FileCopy($source,$dest,$flag || 0)
}
Files.prototype.FileCreateNTFSLink = function($source,$hardlink,$flag ){
	return _Autoit_.FileCreateNTFSLink($source,$hardlink,$flag || 0)
}
Files.prototype.FileCreateShortcut = function($file,$lnk,$workdir ,$args ,$desc ,$icon ,$hotkey ,$icon_number ,$state ){
	return _Autoit_.FileCreateShortcut($file,$lnk,$workdir || null,$args || null,$desc || null,$icon || null,$hotkey || null,$icon_number || null,$state || null)
}
Files.prototype.FileDelete = function($filename){
	return _Autoit_.FileDelete($filename)
}
Files.prototype.FileExists = function($path){
	return _Autoit_.FileExists($path)
}
Files.prototype.FileFindFirstFile = function($filename){
	return _Autoit_.FileFindFirstFile($filename)
}
Files.prototype.FileFindNextFile = function($search,$flag ){
	return _Autoit_.FileFindNextFile($search,$flag || 0)
}
Files.prototype.FileFlush = function($filehandle){
	return _Autoit_.FileFlush($filehandle)
}
Files.prototype.FileGetAttrib = function($filename){
	return _Autoit_.FileGetAttrib($filename)
}
Files.prototype.FileGetEncoding = function($file,$mode ){
	return _Autoit_.FileGetEncoding($file,$mode || 1)
}
Files.prototype.FileGetLongName = function($filename,$flag ){
	return _Autoit_.FileGetLongName($filename,$flag || 0)
}
Files.prototype.FileGetPos = function($filehandle){
	return _Autoit_.FileGetPos($filehandle)
}
Files.prototype.FileGetShortcut = function($lnk){
	return _Autoit_.FileGetShortcut($lnk)
}
Files.prototype.FileGetShortName = function($filename,$flag ){
	return _Autoit_.FileGetShortName($filename,$flag || 0)
}
Files.prototype.FileGetSize = function($filename){
	return _Autoit_.FileGetSize($filename)
}
Files.prototype.FileGetTime = function($filename,$option ,$format ){
	return _Autoit_.FileGetTime($filename,$option || 0,$format || 0)
}
Files.prototype.FileGetVersion = function($filename,$stringname ){
	return _Autoit_.FileGetVersion($filename,$stringname || null)
}
Files.prototype.FileInstall = function($source,$dest,$flag ){
	return _Autoit_.FileInstall($source,$dest,$flag || 0)
}
Files.prototype.FileMove = function($source,$dest,$flag ){
	return _Autoit_.FileMove($source,$dest,$flag || 0)
}
Files.prototype.FileOpen = function($filename,$mode ){
	return _Autoit_.FileOpen($filename,$mode || 0)
}
Files.prototype.FileOpenDialog = function($title,$init_dir,$filter,$options ,$default_name ,$hwnd ){
	return _Autoit_.FileOpenDialog($title,$init_dir,$filter,$options || 0,$null_name || "",$hwnd || 0)
}
Files.prototype.FileRead = function($file,$count ){
	return _Autoit_.FileRead($file,$count || null)
}
Files.prototype.FileReadLine = function($file,$line ){
	return _Autoit_.FileReadLine($file,$line || 1)
}
Files.prototype.FileReadToArray = function($file){
	return _Autoit_.FileReadToArray($file)
}
Files.prototype.FileRecycle = function($source){
	return _Autoit_.FileRecycle($source)
}
Files.prototype.FileRecycleEmpty = function($source ){
	return _Autoit_.FileRecycleEmpty($source || null)
}
Files.prototype.FileSaveDialog = function($title,$init_dir,$filter,$options ,$default_name ,$hwnd ){
	return _Autoit_.FileSaveDialog($title,$init_dir,$filter,$options || 0,$null_name || "",$hwnd || 0)
}
Files.prototype.FileSelectFolder = function($dialog_text,$root_dir,$flag ,$initial_dir ,$hwnd ){
	return _Autoit_.FileSelectFolder($dialog_text,$root_dir,$flag || 0,$initial_dir || "",$hwnd || 0)
}
Files.prototype.FileSetAttrib = function($file_pattern,$Attrib,$recurse ){
	return _Autoit_.FileSetAttrib($file_pattern,$Attrib,$recurse || 0)
}
Files.prototype.FileSetEnd = function($filehandle){
	return _Autoit_.FileSetEnd($filehandle)
}
Files.prototype.FileSetPos = function($filehandle,$offset,$origin){
	return _Autoit_.FileSetPos($filehandle,$offset,$origin)
}
Files.prototype.FileSetTime = function($file_pattern,$time,$type ,$recurse ){
	return _Autoit_.FileSetTime($file_pattern,$time,$type || 0,$recurse || 0)
}
Files.prototype.FileWrite = function($file,$data){
	return _Autoit_.FileWrite($file,$data)
}
Files.prototype.FileWriteLine = function($file,$line){
	return _Autoit_.FileWriteLine($file,$line)
}
Files.prototype.CDTray = function($drive,$status){
	return _Autoit_.CDTray($drive,$status)
}
Files.prototype.DirCopy = function($source_dir,$dest_dir,$flag ){
	return _Autoit_.DirCopy($source_dir,$dest_dir,$flag || 0)
}
Files.prototype.DirCreate = function($path){
	return _Autoit_.DirCreate($path)
}
Files.prototype.DirGetSize = function($path,$flag ){
	return _Autoit_.DirGetSize($path,$flag || 0)
}
Files.prototype.DirMove = function($source_dir,$dest_dir,$flag ){
	return _Autoit_.DirMove($source_dir,$dest_dir,$flag || 0)
}
Files.prototype.DirRemove = function($path,$recurse ){
	return _Autoit_.DirRemove($path,$recurse || 0)
}
Files.prototype.IniDelete = function($filename,$section,$key ){
	return _Autoit_.IniDelete($filename,$section,$key || null)
}
Files.prototype.IniRead = function($filename,$section,$key,$default){
	return _Autoit_.IniRead($filename,$section,$key,$null)
}
Files.prototype.IniReadSection = function($filename,$section){
	return _Autoit_.IniReadSection($filename,$section)
}
Files.prototype.IniReadSectionNames = function($filename){
	return _Autoit_.IniReadSectionNames($filename)
}
Files.prototype.IniRenameSection = function($filename,$section,$new_section,$flag ){
	return _Autoit_.IniRenameSection($filename,$section,$new_section,$flag || 0)
}
Files.prototype.IniWrite = function($filename,$section,$key,$value){
	return _Autoit_.IniWrite($filename,$section,$key,$value)
}
Files.prototype.IniWriteSection = function($filename,$section,$data,$index ){
	return _Autoit_.IniWriteSection($filename,$section,$data,$index || 1)
}

module.exports = Files;
return Files