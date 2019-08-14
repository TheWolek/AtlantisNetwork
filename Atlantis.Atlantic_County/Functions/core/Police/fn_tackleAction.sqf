/*
	File: fn_knockoutAction.sqf
	
	
	Description:
	Knocks out the target.
*/

params [["_target", ObjNull, [ObjNull]]];

_pos = (getPosASL player);;
if(surfaceIsWater _pos) exitwith {};
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 3) exitWith {};
if(player getVariable["knockedOut",false]) exitWith {};

_degrees = getDir player; 
_degreesu = getDir _target;
_totald = _degrees - _degreesu;

if(_totald >= -90 && _totald < 1 || _totald <= 90 && _totald > -1 || _totald >= 270 || _totald <= -270) then {

	life_knockout = true;

	player attachTo [_target, [0, -0.4, 0.1] ]; 
	detach player; 
	_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player); 
	player switchmove "AmovPpneMstpSnonWnonDnon";
	_obj setPosATL (getPosATL player);  
	player attachTo [_obj,[0,-0.3,0.7]]; 
	detach player;
	[player,"knockhit"] spawn client_fnc_nearestSound;	
	[_target,profileName] remoteExecCall ["client_fnc_crashTackled",_target];
	uiSleep 3;
	life_knockout = false;
	deleteVehicle _obj;

} else {
	["Musisz byc za Twoim celem aby go powalic!", false] spawn domsg;
};






