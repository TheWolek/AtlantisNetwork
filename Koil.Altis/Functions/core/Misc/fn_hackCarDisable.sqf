_objStr = lbData[1113, (lbCurSel 1113)];
_obj = call compile format["%1", _objStr];

[_obj, 0] remoteExec ["setFuel"]; 

{

    if ( _objStr == _x ) exitWith {
        hackedcars deleteAt _forEachIndex;
    };

} forEach hackedcars;

["Wyłączone!", true] spawn domsg;

closeDialog 0;