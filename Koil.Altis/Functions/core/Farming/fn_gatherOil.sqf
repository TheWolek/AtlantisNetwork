/*
Refine Logs trees by koil
*/
if(isNil "client_spam_my_dick") then { client_spam_my_dick = 0; };
	if(client_spam_my_dick == 1) exitWith {};
	OilRigs = nearestObjects [player, ["oilrig_base"], 20];  
	if(count oilRigs > 0) then { 
		client_spam_my_dick = 1;
		_calcT = 0;
		while {true} do {
			_calcT = _calcT + 1;
			if(_calcT > 25) exitwith {};
			uisleep 1;
			hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>Czekam na załadowanie oleju</t><br/> %1 25 sekund.",_calcT];
		};
		myOil = createVehicle ["Land_MetalBarrel_F", getpos player, [], 0, "NONE"];  
		myOil attachTo [vehspawned, [0, 0.8, 0.85] ]; 
		["Otrzymałeś ładunek oleju, zanieś go do trzech żurawi w dokach do transportu.", true] spawn domsg;
	};
	client_spam_my_dick = 0;