disableSerialization;
if(!dialog) then {	createdialog "job_update"; };
uisleep 0.05;
_display = findDisplay 9999;
_list = _display displayCtrl 9001;
lbClear _list;
//_jobs = _this select 0;

_jobs = [];

if(count currentMailmen < 3) then {
_Jobs pushback "Kurier"; 
};

if(count currentSecurity < 2) then {
_Jobs pushback "Security"; 
};

if(count currentTrashman < 3) then {
_Jobs pushback "Śmieciarz"; 
};

/*
if(count currentNewsMan < 3) then {
_Jobs pushback "News Reporter"; 
};
*/

if(count currentRepairmen < 7) then {
_Jobs pushback "Mechanik"; 
};

if(count currentBusDrivers < 4) then {
_Jobs pushback "Kierowca Autobusu"; 
};


if(count currentTaxiDrivers < 7) then {
_Jobs pushback "Taksówkarz"; 
};

/*
if(count currentTowTruckDrivers < 5) then {
_Jobs pushback "Tow Truck Driver"; 
};
*/

_FUCKYOU = FALSE;
{
	if( isnull _x ) then { _FUCKYOU = TRUE; };
}foreach serverRadioPlayers;
/*
IF(_FUCKYOU) THEN {	
	_jobs pushback "Radio Presenter";
};
*/

if(_jobs isequalto []) then { _jobs = ["Brak dostęponych prac"]; };

{
	_list lbAdd format["Praca: %1",_x];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach _jobs;

_list lbAdd "Praca: Drwal";
_job = "Wood Logging";
_list lbSetdata [(lbSize _list)-1,str(_job)];

["Pamiętaj, prace polegające na zbieraniu wymagają plecaka. Możesz wypożyczyć pojazdu klikając windows na centrelinku.", true] spawn domsg;

