disableSerialization;

createdialog "PayTicket_Menu";

uisleep 0.05;
_display = findDisplay 1111;
_list = _display displayCtrl 1113;
lbClear _list;
{

    if(_x select 1 == getplayeruid player && _x select 7 == 1) then {
        _list lbAdd format["%1 - %2", _x select 4, (_x select 8) call client_fnc_numberText];
        //_list lbSetdata [(lbSize _list)-1,str([_x select 0, _x select 8])];
        _list lbSetData [_x select 0, _x select 1, _x select 2, _x select 3, _x select 4, _x select 5, _x select 6, _x select 7, _x select 8, _x select 9,, _x select 10, _x select 11, _x select 12];
    };

} foreach LatestWanted;