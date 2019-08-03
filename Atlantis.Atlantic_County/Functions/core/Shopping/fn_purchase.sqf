// this is where we open the shop that we are looking at
disableSerialization;
_index = lbCurSel (9001);
if (_index == -1) exitWith {};
_status = lbData[9001, _index];
_status = call compile _status;
_quantity = ctrlText 9339;
_quantity = call compile _quantity;
closedialog 0;

if(isNil "_status") exitwith {};
if(isNil "_quantity") exitwith {};

if(_quantity < 0) exitwith {};
 
_cost = call compile (_status select 2);
_availableQuantity = call compile (_status select 1);

_totalprice = _cost * _Quantity;

_cashcheck = [1,_totalprice] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz wystarczająco pieniędzy!",_totalprice call client_fnc_numberText], true] spawn domsg; };	

if(_quantity > _availableQuantity) exitwith { ["Wybierz odpowienią ilość.", true] spawn domsg; };
if(_totalprice == 0 || _totalprice < 0) exitwith { ["Nie możesz kupić przedmiotu za $0.00", true] spawn domsg; };

if( ((player getvariable "cashinhand") - _totalprice) < (client_level_array select 16) ) exitWith {
	[format["You cannot buy stuff from this store with your %1 in dirty money.", (client_level_array select 16) call client_fnc_numberText], true] spawn domsg;
};

_status = (_status select 0);
[player,_status,_quantity] remoteexec ["server_fnc_shopPurchase",2];

//remote exec the purhcase to handle on the server.