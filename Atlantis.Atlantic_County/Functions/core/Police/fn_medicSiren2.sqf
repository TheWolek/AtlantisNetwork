private ["_vehicle"];
_vehicle = param [0,objNull,[objNull]];

if (isNull _vehicle) exitWith {};
if (isNil {_vehicle getVariable "siren2"}) exitWith {};

for "_i" from 0 to 1 step 0 do {
    if (!(_vehicle getVariable "siren2")) exitWith {};
    if (count crew _vehicle isEqualTo 0) then {_vehicle setVariable ["siren2",false,true]};
    if (!alive _vehicle) exitWith {};
    if (isNull _vehicle) exitWith {};
    _vehicle say3D "ems_siren_warning";//Class name specified in description.ext
    sleep 0.946;//Exactly matches the length of the audio file.
    if (!(_vehicle getVariable "siren2")) exitWith {};
};