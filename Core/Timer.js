
function Timer() {
    this.Start = __AutoIt__.TimerInit()
}
Timer.prototype.Diif  = function(){ 
    return __AutoIt__.TimerDiff(this.Start)
}
Timer.prototype.TimeDiif = function(){ 
    dummy = (__AutoIt__.TimerDiff(this.Start)) / 1000
	dummy2 = dummy % 3600
	hours = (dummy - dummy2) / 3600
	dummy = dummy2

	dummy2 = dummy % 60
	minutes = (dummy - dummy2) / 60
    dummy = dummy2
	seconds = dummy.toFixed(0)
	if(minutes < 10) minutes = "0" + minutes
	if(seconds < 10) seconds = "0" + seconds
	if(hours < 10) hours = "0" + hours
	return hours + ":" + minutes + ":" + seconds
}

module.exports = Timer;
return Timer