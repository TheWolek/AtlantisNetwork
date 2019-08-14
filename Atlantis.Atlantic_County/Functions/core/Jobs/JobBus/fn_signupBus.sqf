//file: fn_signupBus
if(myjob != "none" && myjob != "bus") exitwith { ["Masz już pracę!", true] spawn domsg; };

if(isnil "taskrunning") then { taskrunning = false; };

myjob = "bus";
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
[] call client_fnc_hudwork; 
[] spawn client_fnc_startBus;