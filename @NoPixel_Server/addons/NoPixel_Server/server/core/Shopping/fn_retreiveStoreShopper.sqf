//[cursorobject,player] remoteExec ["client_fnc_retreiveStoreShopper",2];

private ["_shop","_unit","_shopplayer","_shopcontent"]; 

_shop = _this select 0;
_unit = _this select 1;

diag_log format ["Action_log: %1 (%2) open someones store", name _unit, getPlayerUID _unit];


_shop = nearestObjects [_unit, [_shop], 30];
_shop = _shop select 0;

_shopplayer = _shop getVariable "shop";

if(isNil "_ShopPlayer") exitWith { ["Ten sklep nie posiada właścicela.", false] remoteExec ["domsg",_unit]; };

_uid = getPlayerUID _shopplayer;

if(_uid in activeshopcrates) exitwith { ["Ten sklep jest zaopatrywany, proszę spróbować później.", false] remoteExec ["domsg",_unit]; };

_shopcontent = _shopplayer getVariable "shopcontent";
currentshopowner = _shopplayer;
[_shopcontent,_shopplayer] remoteExec ["client_fnc_openShop",_unit];

