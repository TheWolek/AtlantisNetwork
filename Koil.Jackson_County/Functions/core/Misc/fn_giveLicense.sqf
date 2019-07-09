params["_type"];

if(_type == 1) then {

    disableSerialization;
    createdialog "showLicenseMenu";

    if(count licenseArray == 0 && !(myJob IN ["Cop","doc","EMS"])) exitWith { ["Wydaje się, że nie masz żadnych licencji.", true] spawn domsg; };

    _message = [];

    if(myJob IN ['Cop']) then {
        _message pushBack format["PD Odznaka [%1]", player getVariable "badgeNumber"];
    };

    if(myJob IN ['EMS']) then {
        _message pushBack format["FD Odznaka [%1]", player getVariable "badgeNumber"];
    };

    if(myJob IN ['doc']) then {
        _message pushBack format["DoC Odznaka [%1]", player getVariable "badgeNumber"];
    };

    if(0 IN licenseArray) then {
        _message pushBack "Prawo jazdy";
    };

    if(1 IN licenseArray) then {
        _message pushBack "Licencja na broń klasy I";
    };

    if(2 IN licenseArray) then {
        _message pushBack "Licencja górnicza";
    };

    if(3 IN licenseArray) then {
        _message pushBack "Logging License";
    };

    if(4 IN licenseArray) then {
        _message pushBack "Licencja wędkarska";
    };

    if(5 IN licenseArray) then {
        _message pushBack "Licencja na ciężarówkę";
    };

    if(6 IN licenseArray) then {
        _message pushBack "Licencja pilota";
    };

    if(7 IN licenseArray) then {
        _message pushBack "Licencja na handel olejem";
    };

    if(8 IN licenseArray) then {
        _message pushBack "PD SWAT Leader Certification";
    };

    if(9 IN licenseArray) then {
        _message pushBack "PD SWAT Certification";
    };

    if(10 IN licenseArray) then {
        _message pushBack "PD Scuba Leader Certification";
    };

    if(11 IN licenseArray) then {
        _message pushBack "PD Scuba Certification";
    };

    if(12 IN licenseArray) then {
        _message pushBack "PD Air Leader Certification";
    };

    if(13 IN licenseArray) then {
        _message pushBack "PD Air Certification";
    };

    if(14 IN licenseArray) then {
        _message pushBack "DoC CRT Leader Certification";
    };

    if(15 IN licenseArray) then {
        _message pushBack "DoC CRT Certification";
    };

    if(16 IN licenseArray) then {
        _message pushBack "DoC Air Leader Certification";
    };

    if(17 IN licenseArray) then {
        _message pushBack "DoC Air Certification";
    };

    if(18 IN licenseArray) then {
        _message pushBack "Boating License";
    };

    if(19 IN licenseArray) then {
        _message pushBack "Casino Membership";
    };

    if(20 IN licenseArray) then {
        _message pushBack "Bar Certification";
    };

    if(21 IN licenseArray) then {
        _message pushBack "Licencja Kierowcy autobusa";
    };

    if(22 IN licenseArray) then {
        _message pushBack "Class 2 Weapons License";
    };

    if(23 IN licenseArray) then {
        _message pushBack "FD Air Leader Certification";
    };

    if(24 IN licenseArray) then {
        _message pushBack "FD Air Certification";
    };

    if(25 IN licenseArray) then {
        _message pushBack "FD Scuba Leader Certification";
    };

    if(26 IN licenseArray) then {
        _message pushBack "FD Scuba Certification";
    };

    if(27 IN licenseArray) then {
        _message pushBack "Paralegal License";
    };

    uisleep 0.05;
    _display = findDisplay 1111;
    _list = _display displayCtrl 1113;
    lbClear _list;

    {
        _list lbAdd format ["%1", _x];
        _list lbSetdata [ (lbSize _list)-1, _x ];
    } foreach _message;

};

if(_type == 2) then {

    _license = lbData[1113, (lbCurSel 1113)];

    ["You were handed an identification.", false] remoteExec ["domsg", CurrentCursorTarget];
    [missionNamespace, ["getLicensePerson", format["The name on the %1 says %2.", _license, name player]]] remoteExec ["setVariable", CurrentCursorTarget];

    closeDialog 0;

};