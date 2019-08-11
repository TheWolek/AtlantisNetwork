disableSerialization;
//9001 
_cash = player getVariable "cashinhand";
_bank = player getVariable "cashinbank";
_display = findDisplay 9999; 

_text = _display displayCtrl 9993;

_bank = _bank call client_fnc_numberText;

_text ctrlSetStructuredText parseText format["%1",_bank];

_text = _display displayCtrl 9994;

_cash = _cash call client_fnc_numberText;

_text ctrlSetStructuredText parseText format["%1",_cash];

_list = _display displayCtrl 9001;

_licenses = licenseArray;

if(0 IN _licenses) then {
	_list lbAdd "Prawo Jazdy kat B";
};

if(1 IN _licenses) then {
	_list lbAdd "Licencja na broń klasy 1";
};

if(2 IN _licenses) then {
	_list lbAdd "Licencja górnika";
};

if(3 IN _licenses) then {
	_list lbAdd "Licencja drwala";
};

if(4 IN _licenses) then {
	_list lbAdd "Licencja rybaka";
};

if(5 IN _licenses) then {
	_list lbAdd "Prawo Jazdy kat C";
};

if(6 IN _licenses) then {
	_list lbAdd "Licencja pilota";
};

if(7 IN _licenses) then {
	_list lbAdd "Licencja handlarza oleju";
};

if(8 IN _licenses) then {
	_list lbAdd "Licencja Dowódcy SWAT";
};

if(9 IN _licenses) then {
	_list lbAdd "Licencja SWAT";
};

if(10 IN _licenses) then {
	_list lbAdd "Licencja Dowódcy nurków PD";
};

if(11 IN _licenses) then {
	_list lbAdd "Licencja nurka PD";
};

if(12 IN _licenses) then {
	_list lbAdd "Licencja Dowódcy AIR PD";
};

if(13 IN _licenses) then {
	_list lbAdd "Licencja AIR PD";
};

if(14 IN _licenses) then {
	_list lbAdd "DoC CRT Leader Certification";
};

if(15 IN _licenses) then {
	_list lbAdd "DoC CRT Certification";
};

if(16 IN _licenses) then {
	_list lbAdd "DoC Air Leader Certification";
};

if(17 IN _licenses) then {
	_list lbAdd "DoC Air Certification";
};

if(18 IN _licenses) then {
	_list lbAdd "Patent motorowodny";
};

if(19 IN _licenses) then {
	_list lbAdd "Członkostwo Kasyna";
};

if(20 IN _licenses) then {
	_list lbAdd "Bar Certification";
};

if(21 IN _licenses) then {
	_list lbAdd "Bus License";
};

if(22 IN _licenses) then {
	_list lbAdd "Licencja na broń klasy 2";
};

if(23 IN _licenses) then {
	_list lbAdd "Licencja Dowódcy AIR FD";
};

if(24 IN _licenses) then {
	_list lbAdd "Licencja AIR FD";
};

if(25 IN _licenses) then {
	_list lbAdd "FD Scuba Leader Certification";
};

if(26 IN _licenses) then {
	_list lbAdd "Licencja Nurka FD";
};

if(27 IN _licenses) then {
	_list lbAdd "Licencja prawnika";
};
