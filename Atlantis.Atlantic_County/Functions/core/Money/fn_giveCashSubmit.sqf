params ["_target", "_giver"];

_amount = parseNumber (ctrlText 1401);
closeDialog 0;

if (_amount > 0) then 
{
	_enoughCash = [1, _amount] call Client_fnc_checkMoney;
	if (_enoughCash) then 
	{

		format["MoneyLog: %1 (%2) gave %3 to %4 (%5).", name _giver, getPlayerUID _giver, _amout call client_fnc_numberText, name _target, getPlayerUID _target] remoteExecCall["diag_log",2];

		_DirtyMoneyTotal = (client_level_array select 16); 

		if(_DirtyMoneyTotal > 0) then {
			_cleanMoney = 0;
			_DirtyMoney = 0;

			if( _amount - _DirtyMoneyTotal < 0 ) then {  // 401 - 400 = 1 

				_DirtyMoney = _amount;
				_cleanMoney = 0;

			} else {

				_DirtyMoney = _DirtyMoneyTotal;
				_cleanMoney = _amount - _DirtyMoneyTotal;

			};
				
			[format ["Otrzymałeś %1 w gotówce, razem z %2 w brudnych pieniądzach.",  _amount call client_fnc_numberText, _DirtyMoney call client_fnc_numberText], true] remoteExec ["domsg",_target];
			
			[format ["Dałeś %1 w gotówce, razem z %2 w brudnych pieniądzach.", _amount call client_fnc_numberText, _DirtyMoney call client_fnc_numberText], true] remoteExec ["domsg",_giver];

			[_cleanMoney,true,true] remoteExec ["Client_fnc_addMoneyToPlayer",_target];

			[_DirtyMoney,false,true] remoteExec ["Client_fnc_addMoneyToPlayer",_target];
			
		} else {

			[format ["Otrzymałeś %1 w gotówce.",  _amount call client_fnc_numberText], true] remoteExec ["domsg",_target];
			
			[format ["Dałeś %1 w gotówce.", _amount call client_fnc_numberText], true] remoteExec ["domsg",_giver];

			[_amount,true,true] remoteExec ["Client_fnc_addMoneyToPlayer",_target];

		};


		[_amount] call Client_fnc_removeCash;
		
		IF(PLAYER DISTANCE [6270.86,1359.5,0.00143623] < 15 && _amount > 100) THEN { 
			[] spawn { ALLOWDANCE = TRUE; UISLEEP 20; ALLOWDANCE = FALSE; }; 
		};

	} else {
		["Nie masz tyle gotówki!", true] spawn domsg;
	};
} else {
	["Ilość musi być większa niż $0.00!", true] spawn domsg;
};