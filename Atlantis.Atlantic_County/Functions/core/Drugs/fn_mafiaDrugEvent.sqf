params ["_vehspawn","_endmission","_mafia","_veh"];
private["_mafiaVehic","_bikerVehicle"];

current_cars pushback _veh;
["Misja została zaktualizowana.", true] spawn domsg;

[_vehspawn,"Pojazd z narkotykami","Location", player] spawn client_fnc_hudHelper;

endOfmission = _endmission;

if(myJob == "Mafia") then {
	mafiaVehicle = _veh;
	publicVariable "mafiaVehicle";
};
if(myJob == "Biker") then {
	bikerVehicle = _veh;
	publicVariable "bikerVehicle";
};

while {true} do {

	if( player distance _vehspawn < 15 || speed _veh > 10 || isNull _veh ) exitwith {
		[_endmission,"Miejsce dostarczenia narkotyków","Location", player] spawn client_fnc_hudHelper;
	};
	sleep 1;
};

while {true} do {
	if( _veh distance _endmission < 15 || isNull _veh ) exitwith {
		if( !(myjob IN ["Mafia","Biker"]) ) exitwith {[getpos player,"text to display","destroy"] spawn client_fnc_hudHelper;};
		[getpos player,"text to display","destroy"] remoteexec ["client_fnc_hudHelper",_mafia];
	};
	sleep 1;
};