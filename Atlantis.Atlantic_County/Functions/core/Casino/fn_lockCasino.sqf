_lock = _this select 0;
_casino = cursorObject;

if(_lock == 1) then {
    //main entrance
    _casino animate ["door01",0];
    _casino animate ["door02",0];
    _casino animate ["door03",0];
    _casino animate ["door04",0];
    _casino animate ["door05",0];
    _casino animate ["door06",0];
    _casino animate ["door07",0];
    _casino animate ["door08",0];
    _casino animate ["door09",0];
    _casino animate ["door10",0];
    _casino animate ["door16",0];
    _casino animate ["door17",0];
    _casino animate ["door18",0];
    lockCasino = true;
    format["Action_Log: %1 (%2) zablokowal kasyno",player, getplayeruid player, ] remoteExecCall["diag_log",2];
} else {
    lockCasino = false;
    format["Action_Log: %1 (%2) odblokowal kasyno",player, getplayeruid player, ] remoteExecCall["diag_log",2];
};

publicVariable "lockCasino";