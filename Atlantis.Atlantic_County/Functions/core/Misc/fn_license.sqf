params["_type"];

if(_type == 0) then {

    _licenses = [
        ["Prawo jazdy kat B",1500,0],
        ["Prawo jazdy kat C",5250,5],
        ["Prawo jazdy kat D",700,21],
        ["Patent motorowodny",3850,18],
        ["Licencja pilota",7500,6],
        ["Licencja na broń klasy 1",6250,1],
        //["Class 2 Weapons",125000,22],
        //["Oil Trade",50000,7],
        //["Fishing",3850,4]        
        ["Licencja Górnika",700,2],
        ["Licencja Drwala",700,3]

    ];

    disableSerialization;
    createdialog "licenseMenu";

    uisleep 0.05;
    _display = findDisplay 1111;
    _list = _display displayCtrl 1113;
    lbClear _list;

    {
        if (!((_x select 2) IN licenseArray)) then {
            _list lbAdd format["%1 %2", (_x select 1) call client_fnc_numberText, _x select 0];
            _list lbSetdata [ (lbSize _list)-1, str([_x select 2, _x select 1]) ] ;
        };
    } foreach _licenses;

};


if(_type == 1) then {

    _arr = lbData[1113, (lbCurSel 1113)];
    _arr = call compile format["%1", _arr];

    _arr spawn client_fnc_tryLicense;

    closeDialog 0;

};