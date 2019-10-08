@if (@CodeSection == @Batch) @then

@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"

set /p id="Enter wait period: "
set /p word="Enter word: "

PING localhost -n 6 >NUL

:EOF

%SendKeys% "%word%{ENTER}"
PING localhost -n %id% >NUL

goto EOF

@end

// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));

