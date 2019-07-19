params["_key",["_public",false],["_player",ObjNull]];

_fetch = [format["getValue:%1",_key], 2] call ExternalS_fnc_ExtDBasync;
_res = _fetch select 0 select 0;

missionNamespace setVariable [_key, _res];

if(_public) then {
    publicVariable _key;
};

if!(_player isEqualTo ObjNull) then {

    [missionNamespace,[_key,_res]] remoteExec["setVariable",_player];

};