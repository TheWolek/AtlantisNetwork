//file: checkLicensePlate
params["_car"];
_plate = _car getVariable ["information",false] select 0;
if(_plate != "") then {
	[format["Rejestracja pojazdu: %1",_plate],true] spawn domsg;
};