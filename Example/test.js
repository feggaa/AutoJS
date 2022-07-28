


Test1 = function () {
    $Pipe.Set("hello")
    MsgBox(0,Args,"Test Thread1")
}


Test2 = function () {
    MsgBox(0,Args,"Test Thread2")
}



hRh = $Thread.Run(Test1.toString(),"Test 1")
$Thread.Run(Test2.toString(),"Test 2")
$Thread.Run(Test2.toString(),"Test 3")
$Thread.Run(Test2.toString(),"Test 4")
$Thread.Run(Test2.toString(),"Test 5")
MsgBox(0,5,hRh.Data)

Exit()