//[_location] remoteExec ["client_fnc_startSecurity",_player];
//[getpos player,] remoteExec ["client_fnc_startGarbage",_player];
// use lexus with directionals only.
if(myjob != "none") exitwith { ["Masz już pracę!", true] spawn domsg; };

if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Legal";
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
[] call client_fnc_hudwork;
private ["_warning","_JobBase"];
if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		while{taskrunning && myjob == "Legal"} do {
			uisleep 180;
			paycheck = paycheck + 22;
		};
		[0] call client_fnc_jobEnd;
	};
};