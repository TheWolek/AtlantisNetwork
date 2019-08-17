params["_car"];
if(count ( _car getvariable ["information", []] ) > 0) then {

	_targetid = (_car getvariable "information" select 8);
	_targetowner = _targetid call BIS_fnc_getUnitByUid;
	if(isNull(_targetowner)) then {
		_targetowner = "John Doe";
	} else {
		_targetowner = name _targetowner;
	};
	[_targetowner, _targetid, name player, getplayeruid player, "Złe parkowanie", 2, 0, 1, 1000] remoteexec ["server_fnc_addcriminal",2];
	[_targetid, format["Otrzymałeś mandat za złe zaparkowanie %1", getText(configFile >> "cfgVehicles" >> typeOf cursorObject >> "displayName")], "Atlantis County", "Złe parkowanie"] remoteExec ["server_fnc_sendMail",2];	
};