private["_owner"];

_plate = _this select 0;
_officer = _this select 1;

_checkstr = format ["existLicense:%1", _plate];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
_booli = (_check select 0) select 0;


diag_log format ["license check police: %1 %2", _officer, _plate];

if(_booli) then {

	_fetchstr = format ["getLicense:%1", _plate];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	diag_log format["%1",str(_fetch)];

	_fetch = call compile format["%1",(_fetch select 0)];

	_owner = (_fetch select 3);

	_owner = _owner call BIS_fnc_getUnitByUid;

	[format["Rejestracja: %1 - Pojazd: %2 - Właścicel: %3",toUpper(_fetch select 0),getText(configFile >> "cfgVehicles" >> (_fetch select 1) >> "displayName"),name _owner], true] remoteexec ["domsg",_officer];
} else {
	["Ten numer rejestracyjny nie zwrócił żadnego wynniku z bazy pojazdów", true] remoteexec ["domsg",_officer];
};