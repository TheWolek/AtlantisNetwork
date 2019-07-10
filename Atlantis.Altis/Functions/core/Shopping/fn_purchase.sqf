// this is where we open the shop that we are looking at
disableSerialization;
_index = lbCurSel (9001);
if (_index == -1) exitWith {};
_status = lbData[9001, _index];
_status = call compile format["%1", _status];
_quantity = ctrlText 9339;
_quantity = call compile format["%1", _quantity];
closedialog 0;

if(isNil "_status") exitwith {};
if(isNil "_quantity") exitwith {};

if(_quantity < 0) exitwith {};
 
_cost = call compile format["%1", (_status select 2)];
_availableQuantity = call compile format["%1", (_status select 1)];

_totalprice = _cost * _Quantity;

_cashcheck = [1,_totalprice] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz dość pieniędzy, aby za to zapłacić!",_totalprice call client_fnc_numberText], true] spawn domsg; };	

if(_quantity > _availableQuantity) exitwith { ["Wybierz odpowiednią kwotę.", true] spawn domsg; };
if(_totalprice == 0 || _totalprice < 0) exitwith { ["Nie możesz kupić przedmiotu, który kosztuje $0.00", true] spawn domsg; };

if( ((player getvariable "cashinhand") - _totalprice) < (client_level_array select 16) ) exitWith {
	[format["Nie możesz kupić rzeczy z tego sklepu ze swoim %1 w brudnych pieniądzach.", (client_level_array select 16) call client_fnc_numberText], true] spawn domsg;
};

_status = (_status select 0);
[player,_status,_quantity] remoteexec ["server_fnc_shopPurchase",2];

//remote exec the purhcase to handle on the server.