if(isnil "taskrunning") then { taskrunning = false; };

myjob = "DMV";
taskrunning = true;
[] call client_fnc_hudwork;
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
//[0] call client_fnc_jobEnd;