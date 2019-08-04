private["_licenseName"];

_remove = call compile format["%1",(lbData[9001,(lbCurSel 9001)])];
["Remove","license",_remove] remoteexec ["client_fnc_sustain",currentcursortarget];
closedialog 0;

if(_remove == 0) then {
	_licenseName = "Prawo Jazdy";
};

if(_remove == 3) then {
	_licenseName = "Class 1 Weapons License";
};

if(_remove == 2) then {
	_licenseName = "Licencja górnika";
};

if(_remove == 3) then {
	_licenseName = "Licencja drwala";
};

if(_remove == 4) then {
	_licenseName = "Licencja rybaka";
};

if(_remove == 5) then {
	_licenseName = "Prawo Jazdy na ciężarówki";
};

if(_remove == 6) then {
	_licenseName = "Licencja pilota";
};

if(_remove == 7) then {
	_licenseName = "Licencja handlarza oleju";
};

if(_remove == 8) then {
	_licenseName = "Licencja Dowódcy SWAT";
};

if(_remove == 9) then {
	_licenseName = "Licencja SWAT";
};

if(_remove == 10) then {
	_licenseName = "Licencja Dowódcy nurków PD";
};

if(_remove == 11) then {
	_licenseName = "Licencja nurka PD";
};

if(_remove == 12) then {
	_licenseName = "Licencja Dowódcy AIR PD";
};

if(_remove == 13) then {
	_licenseName = "Licencja AIR PD";
};

if(_remove == 14) then {
	_licenseName = "DoC CRT Leader Certification";
};

if(_remove == 15) then {
	_licenseName = "DoC CRT Certification";
};

if(_remove == 16) then {
	_licenseName = "DoC Air Leader Certification";
};

if(_remove == 17) then {
	_licenseName = "DoC Air Certification";
};

if(_remove == 18) then {
	_licenseName = "Patent motorowodny";
};

if(_remove == 19) then {
	_licenseName = "Członkostwo Kasyna";
};

if(_remove == 20) then {
	_licenseName = "Bar Certification";
};

if(_remove == 21) then {
	_licenseName = "Bus License";
};

if(_remove == 22) then {
	_licenseName = "Class 2 Weapons License";
};

if(_remove == 23) then {
	_licenseName = "Licencja Dowódcy AIR FD";
};

if(_remove == 24) then {
	_licenseName = "Licencja AIR FD";
};

if(_remove == 25) then {
	_licenseName = "FD Scuba Leader Certification";
};

if(_remove == 26) then {
	_licenseName = "Licencja Nurka FD";
};

if(_remove == 27) then {
	_licenseName = "Licencja prawnika";
};

format["LicenseLog: %1 (%2) revoked a(n) %3 from %4 (%5).", name player, getplayeruid player, _licenseName, name cursorObject, getPlayerUID cursorObject] remoteExecCall["diag_log",2];
//["license", format["%1 (%2) revoked a(n) %3 from %4 (%5).", name player, getplayeruid player, _licenseName, name currentcursortarget, getplayeruid currentcursortarget]] remoteExec ["server_fnc_log",2];