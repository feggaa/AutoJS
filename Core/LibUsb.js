//var DLL =  require("./DLL.js")
var dll
var Context = 0
function LibUsb(AutoInit) {
    dll = DllOpen("msys-usb-1.0_32.dll")
    AutoInit ? this.Init() : ""
}

LibUsb.prototype.Init = function Init(bNewhContext) {
    var aCall = DllCall(dll,"int","libusb_init",[bNewhContext ? "ptr*" :"ptr",0])
    Context = aCall[1]
}

LibUsb.prototype.GetVersion = function Init(full) {
 
var aCall = DllCall(dll,"int","libusb_get_version")
full = full || true
var version = DllStructCreate("ushort major;ushort minor;ushort micro;ushort nano;",aCall[0])
var iVersion = {
                  major : DllStructGetData(version,"major"),
                  minor : DllStructGetData(version,"minor"),
                  micro : DllStructGetData(version,"micro"),
                  nano  : DllStructGetData(version,"nano")
                }
return full ? iVersion.major+"."+iVersion.minor+"."+ iVersion.micro +"."+iVersion.nano : iVersion
}

module.exports = LibUsb;
return LibUsb