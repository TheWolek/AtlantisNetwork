params["_car"];

if!(_car isKindOf "Car" || _car isKindOf "Air" || _car isKindOf "Boat") exitWith { ["Aby rozpocząć naprawę, musisz być w pojeździe.", true] spawn domsg; };
if(driver _car != player) exitWith { ["Musisz być kierowcą, aby rozpocząć naprawę pojazdu.", true] spawn domsg; };
if(isEngineOn _car) exitWith { ["Pojazd musi być wyłączony, aby wypełnić gaz..", true] spawn domsg; };

_price = 1000;
_cashcheck = [1,_price] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz dość pieniędzy, aby za to zapłacić!", _price call client_fnc_numberText], true] spawn domsg; };

_check = ['Repairing',15,0,getPosATL player,0,player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask;

waitUntil { scriptDone _check };

if (!client_dotask) exitWith {};

_car setDamage 0;

[_price] call Client_fnc_removeCash;

["Twój samochód został w pełni naprawiony.", true] spawn domsg;