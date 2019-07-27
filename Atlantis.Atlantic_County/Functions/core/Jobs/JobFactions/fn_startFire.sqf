if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Fire";
taskrunning = true;
[] call client_fnc_hudwork;

_cop = player getvariable "Fire";
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
//[] call client_fnc_ChangePolice;
//[0] call client_fnc_jobEnd;
