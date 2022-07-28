//var GUI =  require("./GUI.js")
function WebUI(html,AutoShow) {
  
    this.GUI = new GUI()
    this.hCall = 0
    this.oPage
    this.hGUI
    this.UI = html
    this.AutoShow = AutoShow

}
//title, width, height, left = null, top = null, Drag = true

WebUI.prototype.create = function(title,width,height,left,top,Drag){
    hGUI = this.hGUI
    _GUI = this.GUI
    Drag = Drag || true
    hGUI = _GUI.GUICreate(title, width,height,left || -1,top || -1,-2147483648)[0]
    //RoundCorners(this.hGUI , 15, 15, 0,0)
    if (Drag) _GUI.GUICtrlCreateLabel("", 0, 0, width - 141, 32, -1, 0x00100000)
    _GUI.GUICtrlSetState(0, 128)

    this.oPage = new ActiveXObject ("Shell.Explorer.2");
    //this.oPage = ObjCreate("Shell.Explorer.2")
    _GUI.GUICtrlCreateObj(this.oPage, 0, 0, width, height)
    this.oPage.navigate(this.UI)

    
    JScript.AddObject("document",this.oPage.document,true)
    JScript.AddObject("window",document.parentWindow,true)
    console(document.parentWindow)
    addEventListener("DOMContentLoaded", function(event) { 
        console("loaded")
        window.eval("function SetTimeout(callback,timeout){setTimeout(function(){callback()}, timeout);};"+
                    "function SetInterval(callback,timeout){setInterval(function(){callback()}, timeout);};")
         _GUI.GUISetState(5, hGUI)
    });

    return this
}


WebUI.prototype.LoadUI = function(){

 }

 WebUI.prototype.SetState = function(){
    this.GUI.GUISetState(5, this.hGUI)
}

module.exports = WebUI;
return WebUI