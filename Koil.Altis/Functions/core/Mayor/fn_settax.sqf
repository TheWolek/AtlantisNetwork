disableSerialization;
_quantity = ctrlText 9339;
_quantity = call compile format["%1", _quantity];
if(_quantity > 50) then { _quantity = 50; };
if(_quantity < 0) then { _quantity = 0; };
[format["Burmistrz %1 ustawił stawkę podatku na %2%3.", name player, _quantity, "%"], true] remoteexec ["domsg",-2];

["taxRate", _quantity, "None", true] remoteExec["server_fnc_setValue",2];

closeDialog 0;