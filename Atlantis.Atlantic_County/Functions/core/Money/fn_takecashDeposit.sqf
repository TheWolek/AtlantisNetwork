//file: takecashDeposit
//[1] spawn client_fnc_takecashDeposit
_ct = _this select 0;
if(!vaultOpen) exitWith {};
switch (_ct) do {
	case 1: { 
		if(!deposit1Open) exitWith {};
		_random = round(random(100));
		if(_random > 80) then {
			MoneyPile1 = MoneyPile1 + (count currentcop) * 200;
		};
		if(_random < 20) then {
			MoneyPile1 = round(random(MoneyPile1));
		};
		_stolen = MoneyPile1;
		MoneyPile1 = 0;
		publicVariable "MoneyPile1";
	};
	case 2: { 
		if(!deposit2Open) exitWith {};
		_random = round(random(100));
		if(_random > 80) then {
			MoneyPile2 = MoneyPile2 + (count currentcop) * 200;
		};
		if(_random < 20) then {
			MoneyPile2 = round(random(MoneyPile2));
		};
		_stolen = MoneyPile2;
		MoneyPile2 = 0;
		publicVariable "MoneyPile2";
	};
	case 3: { 
		if(!deposit3Open) exitWith {};
		_random = round(random(100));
		if(_random > 80) then {
			MoneyPile3 = MoneyPile3 + (count currentcop) * 200;
		};
		if(_random < 20) then {
			MoneyPile3 = round(random(MoneyPile3));
		};
		_stolen = MoneyPile3;
		MoneyPile3 = 0;
		publicVariable "MoneyPile3";
	};
	case 4: { 
		if(!deposit4Open) exitWith {};
		_random = round(random(100));
		if(_random > 80) then {
			MoneyPile4 = MoneyPile4 + (count currentcop) * 200;
		};
		if(_random < 20) then {
			MoneyPile4 = round(random(MoneyPile4));
		};
		_stolen = MoneyPile4;
		MoneyPile4 = 0;
		publicVariable "MoneyPile4";
	};
};