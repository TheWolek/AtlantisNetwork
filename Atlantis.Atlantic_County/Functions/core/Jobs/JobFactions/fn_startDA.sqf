if(isnil "taskrunning") then { taskrunning = false; };

myjob = "DA";
taskrunning = true;
[] call client_fnc_hudwork;
diag_log format ["Job_Log: %1 started working as %2",player,myjob];
//[0] call client_fnc_jobEnd;