Func Files($This)
		Local $oObj = _AutoItObject_Create($This)
		_AutoItObject_AddMethod($oObj, 'DriveGetDrive', JS_DriveGetDrive)
		_AutoItObject_AddMethod($oObj, 'DriveGetFileSystem', JS_DriveGetFileSystem)
		_AutoItObject_AddMethod($oObj, 'DriveGetLabel', JS_DriveGetLabel)
		_AutoItObject_AddMethod($oObj, 'DriveGetSerial', JS_DriveGetSerial)
		_AutoItObject_AddMethod($oObj, 'DriveGetType', JS_DriveGetType)
		_AutoItObject_AddMethod($oObj, 'DriveMapAdd', JS_DriveMapAdd)
		_AutoItObject_AddMethod($oObj, 'DriveMapDel', JS_DriveMapDel)
		_AutoItObject_AddMethod($oObj, 'DriveMapGet', JS_DriveMapGet)
		_AutoItObject_AddMethod($oObj, 'DriveSetLabel', JS_DriveSetLabel)
		_AutoItObject_AddMethod($oObj, 'DriveSpaceFree', JS_DriveSpaceFree)
		_AutoItObject_AddMethod($oObj, 'DriveSpaceTotal', JS_DriveSpaceTotal)
		_AutoItObject_AddMethod($oObj, 'DriveStatus', JS_DriveStatus)
		_AutoItObject_AddMethod($oObj, 'FileChangeDir', JS_FileChangeDir)
		_AutoItObject_AddMethod($oObj, 'FileClose', JS_FileClose)
		_AutoItObject_AddMethod($oObj, 'FileCopy', JS_FileCopy)
		_AutoItObject_AddMethod($oObj, 'FileCreateNTFSLink', JS_FileCreateNTFSLink)
		_AutoItObject_AddMethod($oObj, 'FileCreateShortcut', JS_FileCreateShortcut)
		_AutoItObject_AddMethod($oObj, 'FileDelete', JS_FileDelete)
		_AutoItObject_AddMethod($oObj, 'FileExists', JS_FileExists)
		_AutoItObject_AddMethod($oObj, 'FileFindFirstFile', JS_FileFindFirstFile)
		_AutoItObject_AddMethod($oObj, 'FileFindNextFile', JS_FileFindNextFile)
		_AutoItObject_AddMethod($oObj, 'FileFlush', JS_FileFlush)
		_AutoItObject_AddMethod($oObj, 'FileGetAttrib', JS_FileGetAttrib)
		_AutoItObject_AddMethod($oObj, 'FileGetEncoding', JS_FileGetEncoding)
		_AutoItObject_AddMethod($oObj, 'FileGetLongName', JS_FileGetLongName)
		_AutoItObject_AddMethod($oObj, 'FileGetPos', JS_FileGetPos)
		_AutoItObject_AddMethod($oObj, 'FileGetShortcut', JS_FileGetShortcut)
		_AutoItObject_AddMethod($oObj, 'FileGetShortName', JS_FileGetShortName)
		_AutoItObject_AddMethod($oObj, 'FileGetSize', JS_FileGetSize)
		_AutoItObject_AddMethod($oObj, 'FileGetTime', JS_FileGetTime)
		_AutoItObject_AddMethod($oObj, 'FileGetVersion', JS_FileGetVersion)
;~ 		_AutoItObject_AddMethod($oObj, 'FileInstall', JS_FileInstall)
		_AutoItObject_AddMethod($oObj, 'FileMove', JS_FileMove)
		_AutoItObject_AddMethod($oObj, 'FileOpen', JS_FileOpen)
		_AutoItObject_AddMethod($oObj, 'FileOpenDialog', JS_FileOpenDialog)
		_AutoItObject_AddMethod($oObj, 'FileRead', JS_FileRead)
		_AutoItObject_AddMethod($oObj, 'FileReadLine', JS_FileReadLine)
		_AutoItObject_AddMethod($oObj, 'FileReadToArray', JS_FileReadToArray)
		_AutoItObject_AddMethod($oObj, 'FileRecycle', JS_FileRecycle)
		_AutoItObject_AddMethod($oObj, 'FileRecycleEmpty', JS_FileRecycleEmpty)
		_AutoItObject_AddMethod($oObj, 'FileSaveDialog', JS_FileSaveDialog)
		_AutoItObject_AddMethod($oObj, 'FileSelectFolder', JS_FileSelectFolder)
		_AutoItObject_AddMethod($oObj, 'FileSetAttrib', JS_FileSetAttrib)
		_AutoItObject_AddMethod($oObj, 'FileSetEnd', JS_FileSetEnd)
		_AutoItObject_AddMethod($oObj, 'FileSetPos', JS_FileSetPos)
		_AutoItObject_AddMethod($oObj, 'FileSetTime', JS_FileSetTime)
		_AutoItObject_AddMethod($oObj, 'FileWrite', JS_FileWrite)
		_AutoItObject_AddMethod($oObj, 'FileWriteLine', JS_FileWriteLine)
		_AutoItObject_AddMethod($oObj, 'CDTray', JS_CDTray)
		_AutoItObject_AddMethod($oObj, 'DirCopy', JS_DirCopy)
		_AutoItObject_AddMethod($oObj, 'DirCreate', JS_DirCreate)
		_AutoItObject_AddMethod($oObj, 'DirGetSize', JS_DirGetSize)
		_AutoItObject_AddMethod($oObj, 'DirMove', JS_DirMove)
		_AutoItObject_AddMethod($oObj, 'DirRemove', JS_DirRemove)
		_AutoItObject_AddMethod($oObj, 'IniDelete', JS_IniDelete)
		_AutoItObject_AddMethod($oObj, 'IniRead', JS_IniRead)
		_AutoItObject_AddMethod($oObj, 'IniReadSection', JS_IniReadSection)
		_AutoItObject_AddMethod($oObj, 'IniReadSectionNames', JS_IniReadSectionNames)
		_AutoItObject_AddMethod($oObj, 'IniRenameSection', JS_IniRenameSection)
		_AutoItObject_AddMethod($oObj, 'IniWrite', JS_IniWrite)
		_AutoItObject_AddMethod($oObj, 'IniWriteSection', JS_IniWriteSection)
		Return $oObj
EndFunc

	Func JS_DriveGetDrive($This,$type)
		Return $This.Return(DriveGetDrive($type),@error,@extended)
	EndFunc
	Func JS_DriveGetFileSystem($This,$path)
		Return $This.Return(DriveGetFileSystem($path),@error,@extended)
	EndFunc
	Func JS_DriveGetLabel($This,$path)
		Return $This.Return(DriveGetLabel($path),@error,@extended)
	EndFunc
	Func JS_DriveGetSerial($This,$path)
		Return $This.Return(DriveGetSerial($path),@error,@extended)
	EndFunc
	Func JS_DriveGetType($This,$path,$operation = 1)
		Return $This.Return(DriveGetType($path,$operation),@error,@extended)
	EndFunc
	Func JS_DriveMapAdd($This,$device,$remote_share,$flags = 0,$user = Default,$password = Default)
		Return $This.Return(DriveMapAdd($device,$remote_share,$flags,$user,$password),@error,@extended)
	EndFunc
	Func JS_DriveMapDel($This,$drive)
		Return $This.Return(DriveMapDel($drive),@error,@extended)
	EndFunc
	Func JS_DriveMapGet($This,$device)
		Return $This.Return(DriveMapGet($device),@error,@extended)
	EndFunc
	Func JS_DriveSetLabel($This,$path,$label)
		Return $This.Return(DriveSetLabel($path,$label),@error,@extended)
	EndFunc
	Func JS_DriveSpaceFree($This,$path)
		Return $This.Return(DriveSpaceFree($path),@error,@extended)
	EndFunc
	Func JS_DriveSpaceTotal($This,$path)
		Return $This.Return(DriveSpaceTotal($path),@error,@extended)
	EndFunc
	Func JS_DriveStatus($This,$path)
		Return $This.Return(DriveStatus($path),@error,@extended)
	EndFunc
	Func JS_FileChangeDir($This,$path)
		Return $This.Return(FileChangeDir($path),@error,@extended)
	EndFunc
	Func JS_FileClose($This,$filehandle)
		Return $This.Return(FileClose($filehandle),@error,@extended)
	EndFunc
	Func JS_FileCopy($This,$source,$dest,$flag = 0)
		Return $This.Return(FileCopy($source,$dest,$flag),@error,@extended)
	EndFunc
	Func JS_FileCreateNTFSLink($This,$source,$hardlink,$flag = 0)
		Return $This.Return(FileCreateNTFSLink($source,$hardlink,$flag),@error,@extended)
	EndFunc
	Func JS_FileCreateShortcut($This,$file,$lnk,$workdir = Default,$args = Default,$desc = Default,$icon = Default,$hotkey = Default,$icon_number = Default,$state = Default)
		Return $This.Return(FileCreateShortcut($file,$lnk,$workdir,$args,$desc,$icon,$hotkey,$icon_number,$state),@error,@extended)
	EndFunc
	Func JS_FileDelete($This,$filename)
		Return $This.Return(FileDelete($filename),@error,@extended)
	EndFunc
	Func JS_FileExists($This,$path)
		Return $This.Return(FileExists($path),@error,@extended)
	EndFunc
	Func JS_FileFindFirstFile($This,$filename)
		Return $This.Return(FileFindFirstFile($filename),@error,@extended)
	EndFunc
	Func JS_FileFindNextFile($This,$search,$flag = 0)
		Return $This.Return(FileFindNextFile($search,$flag),@error,@extended)
	EndFunc
	Func JS_FileFlush($This,$filehandle)
		Return $This.Return(FileFlush($filehandle),@error,@extended)
	EndFunc
	Func JS_FileGetAttrib($This,$filename)
		Return $This.Return(FileGetAttrib($filename),@error,@extended)
	EndFunc
	Func JS_FileGetEncoding($This,$file,$mode = 1)
		Return $This.Return(FileGetEncoding($file,$mode),@error,@extended)
	EndFunc
	Func JS_FileGetLongName($This,$filename,$flag = 0)
		Return $This.Return(FileGetLongName($filename,$flag),@error,@extended)
	EndFunc
	Func JS_FileGetPos($This,$filehandle)
		Return $This.Return(FileGetPos($filehandle),@error,@extended)
	EndFunc
	Func JS_FileGetShortcut($This,$lnk)
		Return $This.Return(FileGetShortcut($lnk),@error,@extended)
	EndFunc
	Func JS_FileGetShortName($This,$filename,$flag = 0)
		Return $This.Return(FileGetShortName($filename,$flag),@error,@extended)
	EndFunc
	Func JS_FileGetSize($This,$filename)
		Return $This.Return(FileGetSize($filename),@error,@extended)
	EndFunc
	Func JS_FileGetTime($This,$filename,$option = 0,$format = 0)
		Return $This.Return(FileGetTime($filename,$option,$format),@error,@extended)
	EndFunc
	Func JS_FileGetVersion($This,$filename,$stringname = Default)
		Return $This.Return(FileGetVersion($filename,$stringname),@error,@extended)
	EndFunc
;~ 	Func JS_FileInstall($This,$source,$dest,$flag = 0)
;~ 		Return $This.Return(FileInstall($source,$dest,$flag),@error,@extended)
;~ 	EndFunc
	Func JS_FileMove($This,$source,$dest,$flag = 0)
		Return $This.Return(FileMove($source,$dest,$flag),@error,@extended)
	EndFunc
	Func JS_FileOpen($This,$filename,$mode = 0)
		Return $This.Return(FileOpen($filename,$mode),@error,@extended)
	EndFunc
	Func JS_FileOpenDialog($This,$title,$init_dir,$filter,$options = 0,$default_name = "",$hwnd = 0)
		Return $This.Return(FileOpenDialog($title,$init_dir,$filter,$options,$default_name,$hwnd),@error,@extended)
	EndFunc
	Func JS_FileRead($This,$file,$count = Default)
		Return $This.Return(FileRead($file,$count),@error,@extended)
	EndFunc
	Func JS_FileReadLine($This,$file,$line = 1)
		Return $This.Return(FileReadLine($file,$line),@error,@extended)
	EndFunc
	Func JS_FileReadToArray($This,$file)
		Return $This.Return(FileReadToArray($file),@error,@extended)
	EndFunc
	Func JS_FileRecycle($This,$source)
		Return $This.Return(FileRecycle($source),@error,@extended)
	EndFunc
	Func JS_FileRecycleEmpty($This,$source = Default)
		Return $This.Return(FileRecycleEmpty($source),@error,@extended)
	EndFunc
	Func JS_FileSaveDialog($This,$title,$init_dir,$filter,$options = 0,$default_name = "",$hwnd = 0)
		Return $This.Return(FileSaveDialog($title,$init_dir,$filter,$options,$default_name,$hwnd),@error,@extended)
	EndFunc
	Func JS_FileSelectFolder($This,$dialog_text,$root_dir,$flag = 0,$initial_dir = "",$hwnd = 0)
		Return $This.Return(FileSelectFolder($dialog_text,$root_dir,$flag,$initial_dir,$hwnd),@error,@extended)
	EndFunc
	Func JS_FileSetAttrib($This,$file_pattern,$Attrib,$recurse = 0)
		Return $This.Return(FileSetAttrib($file_pattern,$Attrib,$recurse = 0),@error,@extended)
	EndFunc
	Func JS_FileSetEnd($This,$filehandle)
		Return $This.Return(FileSetEnd($filehandle),@error,@extended)
	EndFunc
	Func JS_FileSetPos($This,$filehandle,$offset,$origin)
		Return $This.Return(FileSetPos($filehandle,$offset,$origin),@error,@extended)
	EndFunc
	Func JS_FileSetTime($This,$file_pattern,$time,$type = 0,$recurse = 0)
		Return $This.Return(FileSetTime($file_pattern,$time,$type,$recurse),@error,@extended)
	EndFunc
	Func JS_FileWrite($This,$file,$data)
		Return $This.Return(FileWrite($file,$data),@error,@extended)
	EndFunc
	Func JS_FileWriteLine($This,$file,$line)
		Return $This.Return(FileWriteLine($file,$line),@error,@extended)
	EndFunc
	Func JS_CDTray($This,$drive,$status)
		Return $This.Return(CDTray($drive,$status),@error,@extended)
	EndFunc

	Func JS_DirCopy($This,$source_dir,$dest_dir,$flag = 0)
		Return $This.Return(DirCopy($source_dir,$dest_dir,$flag),@error,@extended)
	EndFunc

	Func JS_DirCreate($This,$path)
		Return $This.Return(DirCreate($path),@error,@extended)
	EndFunc
	Func JS_DirGetSize($This,$path,$flag = 0)
		Return $This.Return(DirGetSize($path,$flag),@error,@extended)
	EndFunc
	Func JS_DirMove($This,$source_dir,$dest_dir,$flag = 0)
		Return $This.Return(DirMove($source_dir,$dest_dir,$flag),@error,@extended)
	EndFunc
	Func JS_DirRemove($This,$path,$recurse = 0)
		Return $This.Return(DirRemove($path,$recurse),@error,@extended)
	EndFunc
	Func JS_IniDelete($This,$filename,$section,$key = Default)
		Return $This.Return(IniDelete($filename,$section,$key),@error,@extended)
	EndFunc
	Func JS_IniRead($This,$filename,$section,$key,$default)
		Return $This.Return(IniRead($filename,$section,$key,$default),@error,@extended)
	EndFunc
	Func JS_IniReadSection($This,$filename,$section)
		Return $This.Return(IniReadSection($filename,$section),@error,@extended)
	EndFunc
	Func JS_IniReadSectionNames($This,$filename)
		Return $This.Return(IniReadSectionNames($filename),@error,@extended)
	EndFunc
	Func JS_IniRenameSection($This,$filename,$section,$new_section,$flag = 0)
		Return $This.Return(IniRenameSection($filename,$section,$new_section,$flag),@error,@extended)
	EndFunc
	Func JS_IniWrite($This,$filename,$section,$key,$value)
		Return $This.Return(IniWrite($filename,$section,$key,$value),@error,@extended)
	EndFunc
	Func JS_IniWriteSection($This,$filename,$section,$data,$index = 1)
		Return $This.Return(IniWriteSection($filename,$section,$data,$index),@error,@extended)
	EndFunc