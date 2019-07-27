_data = lbData[911,lbCurSel (911)];
_rank = call compile format["%1", _data];
if(isNil "_rank") exitwith {}; // error check
[myjob,CurrentCursorTarget,_rank] remoteExec ["server_fnc_promote",2];

format["PromotionLog: %1 (%2) changed %3 (%4) to rank %5.", name player, getplayeruid player, name cursorObject, getplayeruid cursorObject, _rank] remoteExecCall["diag_log",2];
