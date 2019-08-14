//file: checkLicensePlate
params["_car"];
_info = _car getVariable ["information",nil]; 
if(!isNil {_info}) then {
	_plate = _info select 0;
 	[format["Rejestracja pojazdu: %1",_plate],true] spawn domsg;
	hint format["%1",_plate]; 
} else {
	if(!isNil {_car getVariable ["pdcar",nil]}) exitWith {
		[format["Jest to pojazd służbowy o numerze: %1",_car getVariable "pdcar"],true] spawn domsg;
		hint format["%1",_car getVariable "pdcar"];
	};
	if(!isNil {_car getVariable ["emscar",nil]}) exitWith {
		[format["Jest to pojazd służbowy o numerze: %1",_car getVariable "emscar"],true] spawn domsg;
		hint format["%1",_car getVariable "emscar"];
	};
	["Rejstracji tego pojazdu nie można sprawdzić",true] spawn domsg;
};