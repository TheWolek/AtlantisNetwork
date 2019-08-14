disableSerialization;

createdialog "PayTicket_Menu";

uisleep 0.05;
_display = findDisplay 1111;
_list = _display displayCtrl 1113;
lbClear _list;
{
    _str = _x select 5;
    if(_str == 2) then {
        _list lbAdd format["%1 - %2", _x select 4, str (_x select 8)];
        //_list lbSetdata [(lbSize _list)-1,str([_x select 0, _x select 8])];
        _list lbSetData [(lbSize _list) -1, str([_x select 0, _x select 1, _x select 4, _x select 7,_x select 8])];
        //                                  suspect name, suspect uid, reason,      active,     amount
    };

} foreach LatestWanted;