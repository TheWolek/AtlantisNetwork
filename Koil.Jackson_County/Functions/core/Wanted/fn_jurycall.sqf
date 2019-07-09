// remove jail / restrained / dead / 
// send this to 7 random people - some might show, some might not.
// 
// [name player, getpos player, player] spawn client_fnc_jurycall;




private["_location","_policeOfficerName","_failed"];

_policeOfficerName = _this select 0;
_location = _this select 1;
_officer = _this select 2;

if(isNil "JuryDuty") then { JuryDuty = false; };
	
if( clientarrested || imRestrained || ( driver ( vehicle player ) == player && vehicle player != player ) || myJob != "None" || JuryDuty ) exitwith {};


["Zostałeś wezwany do Jury Duty, otrzymasz 2 000,00 $ po zakończeniu, czy zgadzasz się?"] call client_fnc_questionPlayer;

uisleep 30;
closedialog 0;
_failed = true;

if(JuryDuty) then { 

	[_location] call client_fnc_jobMarker;
	["Zostałeś wezwany do Jury Duty, Lokalizacja jest zaznaczona na mapie!", false] spawn domsg;
	[format["Twoja nazwa oficera to %1, otrzymasz 2 000,00 $",_policeOfficerName], false] spawn domsg;	
	[format["%1 będzie uczestniczyć w obradach Jury.",name player]] remoteexec ["domsg",_officer];

};
_n = 0;
while{JuryDuty} do {

	if( clientarrested || imRestrained || myJob != "None" ) exitwith {};

	if(player distance _location < 20) exitwith { _failed = false; ["Przybyłeś do sądu", false] spawn doquickmsg; }; 
	uisleep 1;
	_n = _n + 1;
	if(_n > 600) exitwith { [format["%1 nie wziął udziału w obradach Jury po przyjęciu.",name player]] remoteexec ["domsg",_officer]; };
};

if(!_failed) then {
	
	[getpos _officer] call client_fnc_jobMarker;

	[format["Your Officer Name is %1, find him for $2,000.00.",_policeOfficerName], false] spawn domsg;
	while{JuryDuty} do {
		if( clientarrested || imRestrained || myJob != "None" ) exitwith {};
		if(player distance _officer < 5) exitwith { ["Przybyłeś do sądu", false] spawn doquickmsg; [2000,true,true] call Client_fnc_addMoneyToPlayer; }; 
		uisleep 1;
		mypositionJob = getpos _officer;
		[getpos _officer] call client_fnc_jobMarker;
	};

	["Obowiązek Jury powinien rozpocząć się wkrótce, poproś swojego oficera o wskazówki.", false] spawn doquickmsg;
	[0] call client_fnc_jobEnd;

} else {

	["Opuściłeś jury.", false] spawn doquickmsg;
	
};

