if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Biker";
taskrunning = true;
[] call client_fnc_hudwork;
format ["Job_Log: %1 started working as %2",player,myjob] remoteExecCall["diag_log",2];
//[0] call client_fnc_jobEnd;