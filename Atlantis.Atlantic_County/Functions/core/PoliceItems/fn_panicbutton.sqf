//file: fn_panicbutton
params [
	["_player", objnull, [objnull]],
	["_deleteTime", 60, [0]]
];

if(isNull _player) exitWith {};

_backupmsg = createMarkerLocal [("_backupmsg" + (_player getVariable "badgenumber")), getPos _player];
_backupmsg setMarkerTypeLocal = "mil_warning";
_backupmsg setMarkerColorLocal "colorRed";
_backupmsg setMarkerTextLocal format["panic button %1",_player getVariable "badgenumber"];

playsound "dpanic";
uiSleep _deleteTime;
deleteMarkerLocal _backupmsg;