if(isnil "taskrunning") then { taskrunning = false; };

myjob = "doc";
taskrunning = true;
[] call client_fnc_hudwork;
_cop = player getvariable "doc";
format ["Job_Log: %1 started working as %2",player,myjob] remoteExecCall["diag_log",2];
//[] call client_fnc_ChangeDoc;
//[0] call client_fnc_jobEnd;
