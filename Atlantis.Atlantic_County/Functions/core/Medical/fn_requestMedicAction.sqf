//file: requestMedicAction
_medicBtn = (findDisplay 7300) displayCtrl 7303;
_medicBtn ctrlEnable false;
[player] remoteExec ['server_fnc_requestMedic', 2];
uiSleep 60;
if(!deadplayer) exitWith {};
_medicBtn ctrlEnable true;