/*
petroleo < string to object
*/

private["_n","_i","_localProtection"];

_barArray = ["np_copperbar1","np_ironbar1","np_silverbar1","NP_Wood","CG_OilCanister"];
_priceArray = [40,80,150,120,400];

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { ["Błąd - W trakcie przetwarzania", true] spawn domsg; };
_localProtection = 0;


_n = 0;
_cashTotal = 0;
{
	_total = {_x == (_barArray select _n)} count magazines player;
	_i = _total;

	while{ _i > 0 } do {

		_localProtection = _localprotection + 1;
		globalProtection = globalProtection + 1;
		if(_localProtection != globalProtection) exitwith { [1,"Selling Ore Script"] spawn client_fnc_anticheat; };

		player removeitem (_barArray select _n);
		_value = (_priceArray select _n);
		[_value,true,true] call Client_fnc_addMoneyToPlayer;
		_cashTotal = _cashTotal + _value;
		_i = _i - 1;
		playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
		sleep 0.25;
		if(dialog) then { closedialog 0; };
	};

	_n = _n + 1;

} foreach _barArray;

/*
if(myjob == "Wood Logging") then {
	clearMagazineCargo vehspawned;
};
*/


globalProtection = 0;

[format["Zarobiłeś %1",_cashTotal call client_fnc_numberText], true] spawn domsg;
format["Money_Log: %1 (%2) earned %3 from selling ores",name player, getplayeruid player, _cashtotal] remoteExecCall["diag_log",2];