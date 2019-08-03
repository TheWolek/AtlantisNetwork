
_response = currentcursortarget getvariable "sale";
_vehiclelol = currentcursortarget;
if (isNil "_response") exitwith { ["Nie na sprzedaż lub już sprzedany!", true] spawn domsg; };

_amount = (currentcursortarget getvariable "sale") select 0;
_seller = (currentcursortarget getvariable "sale") select 1;
_licensePlate = (currentcursortarget getvariable "sale") select 2;
_information = (currentcursortarget getvariable "sale") select 3;      
if (isNull _seller) exitwith { ["Gracz wylogował się!", true] spawn domsg; _response setvariable ["sale",nil,true]; _response setvariable ["salecheck",nil,true]; };


_enoughCash = [1, _amount] call Client_fnc_checkMoney;
if (_enoughCash) then
{
    if( ((player getvariable "cashinhand") - _amount) < (client_level_array select 16) ) exitWith {
        [format["Nie możesz zakupić tego pojazdu za %1 brudnych pieniędzy.", (client_level_array select 16) call client_fnc_numberText], true] spawn domsg;
    };
    current_cars pushback _vehiclelol;

    [_amount, true] call Client_fnc_removeCash;
    ["Kupiony - możesz nim jeździć, ale nie schowa się w garażu, jeśli nie zrobisz reloga", true] spawn domsg;
    [_amount, name player,_information,_vehiclelol] remoteexec ["Client_fnc_AuctionSellerFinish", _seller];
    [_licensePlate,getplayeruid player] remoteexec ["server_fnc_updateCarOwner",2];
    _vehiclelol setvariable ["sale",nil,true];
    _vehiclelol setvariable ["salecheck",nil,true];
    _garage = player getvariable "garage";
    _garage pushback _information;
    player setvariable ["garage",_garage,false];
} else {
    [format["%1 - Masz za mało pieniędzy, aby to kupić!",_amount call client_fnc_numberText], true] spawn domsg;
};