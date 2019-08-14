//file: startCop
if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Cop";
taskrunning = true;
[] call client_fnc_hudwork;
_cop = player getvariable "cop";
player setVariable["coplevel",_cop,true];
format ["Job_Log: %1 (%2) started working as %3",name player, getPlayerUID player,myjob] remoteExecCall["diag_log",2];
//[] call client_fnc_ChangePolice;
//[0] call client_fnc_jobEnd;
