/*
	File: fn_crashtackled.sqf
	
	
	Description:
	Starts and monitors the knocked out state.
*/

params [["_target", ObjNull,[ObjNull]], ["_who", "", [""]], "_obj"];


if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(_who isEqualTo "") exitWith {};

["Zostales powalony.", false] spawn domsg;

player playMoveNow "Incapacitated";
player setVariable ["tf_voiceVolume", 0, true];
player setVariable ["knockedOut",true,true];
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
[_obj] spawn {
	params ["_obj"];
		"colorCorrections" ppEffectEnable true;			
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.011],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 0.3;
		uiSleep 8;
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 3;
		uiSleep 2;

	if(!(player getVariable["restrained",false])) then {
		player playMoveNow "amovppnemstpsraswrfldnon";
	};

	if(!(player getVariable ["escorting", false])) then {
		detach player;
	};
	
	deleteVehicle _obj;
	player setVariable["robbed",FALSE,TRUE];
	player setVariable ["tf_voiceVolume", 1, true];	
	player setVariable ["knockedOut",false,true];
};