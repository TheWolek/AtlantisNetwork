/*
petroleo < string to object
*/
private["_n","_i","_localprotection"];

_oreArray = ["np_copperore1", "np_ironOre1", "np_silverOre1"];
_barArray = ["np_copperbar1", "np_ironbar1", "np_silverbar1"];
_farmingVehicles = ["vvv_DOD_RamSRT_civ","VVV_Fortransi_civ","vvv_DOD_RamSRT_civ_1","VVV_Fortransi_civ_1","vvv_DOD_RamSRT_civ_2","VVV_Fortransi_civ_2"];
if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { ["Błąd - w trakcie przetwarzania", true] spawn domsg; };
_localProtection = 0;

_n = 0;
{
	_total = {_x == (_oreArray select _n)} count magazines player;
	_i = _total;

	while{ _i > 0 } do {


		_localProtection = _localprotection + 1;
		globalProtection = globalProtection + 1;
		if(_localProtection != globalProtection) exitwith { [1,"Refine Pelt Script"] spawn client_fnc_anticheat; };


		player removeitem (_oreArray select _n);
		if(2 in licenseArray) then {
			_random = round (random(4)) + 2;
			for "_i" from 0 to _random do {player additem (_barArray select _n);};
		} else {
			player additem (_barArray select _n);
		};
		_i = _i - 1;
		playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
		uisleep 0.25;
		if(dialog) then { closedialog 0; };
		["Przetwarzasz rudy, stój w miejscu", true] spawn domsg;
	};

	_n = _n + 1;

} foreach _oreArray;
if(! (2 in licenseArray)) then {
	["Nie wytworzyłeś więcej sztabek, ponieważ nie posiadasz licencji górnika. Możesz ją zakupić w CentreLinku.",true] spawn domsg;
};

if(_localProtection != globalProtection) exitwith { globalProtection = 0; };


if(typeof (vehicle player) IN _farmingVehicles && driver (vehicle player) == player) then {

	_thecargo = getmagazineCargo (vehicle player);

	clearmagazinecargoGlobal (vehicle player);

	_holder = (vehicle player);

	_process = _thecargo select 0; 
	_ItemCount = _thecargo select 1;


	if(!isnil "_process") then {
		_count = 0;
		{ 

			_localProtection = _localprotection + 1;
			globalProtection = globalProtection + 1;
			if(_localProtection != globalProtection) exitwith { [1,"Refine Pelt Script"] spawn client_fnc_anticheat; };

			_itemNumber = _ItemCount select _count;
			 if !(_x IN _oreArray) then {
				_holder addMagazineCargoGlobal [_x,_itemnumber];
				_count = _count + 1;
				uisleep 0.05;
			} else {
				_n = _oreArray FIND _x;
				_holder addItemCargoGlobal [(_barArray select _n),_itemNumber];
				_count = _count + 1;
				playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
				uisleep 0.25;
				if(dialog) then { closedialog 0; };
			};
		} foreach _process; 
	};
};

globalProtection = 0;