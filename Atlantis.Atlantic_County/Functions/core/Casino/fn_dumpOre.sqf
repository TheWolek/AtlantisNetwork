if(count currentcop < 3) exitwith { ["Za mało policjantów na służbie", true] spawn domsg; };

_total = 0;

{
	if(_x == "np_goldbar") then { _total = _total + 1; player removeitem _x; };
} forEach magazines player;

[1,_total,player,getpos player] remoteExec ["server_fnc_oreJob",2];