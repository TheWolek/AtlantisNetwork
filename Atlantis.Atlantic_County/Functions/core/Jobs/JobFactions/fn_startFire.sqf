if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Fire";
taskrunning = true;
[] call client_fnc_hudwork;

_cop = player getvariable "Fire";
diag_log format ["Job_Log: %1 started working as %2",player,myjob];
//[] call client_fnc_ChangePolice;
//[0] call client_fnc_jobEnd;
