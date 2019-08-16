//file: fn_panicbutton
params [
	["_player", objnull, [objnull]],
	["_deleteTime", 60, [0]]
];

if(isNull _player) exitWith {};

_backupmsg = createMarkerLocal [(name _player), getPos _player];
_backupmsg setMarkerTypeLocal "mil_warning";	
_backupmsg setMarkerColorLocal "colorRed";
_backupmsg setMarkerTextLocal format["panic button %1",name _player];

playsound "dpanic";
uiSleep _deleteTime;
deleteMarkerLocal _backupmsg;