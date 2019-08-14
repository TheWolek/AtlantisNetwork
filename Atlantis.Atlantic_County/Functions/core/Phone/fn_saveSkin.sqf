disableSerialization;

if (typeof currentcursortarget != "Land_Market_DED_Market_03_F") exitwith { ["Musisz to zrobić w sklepie Verizon!", false] spawn domsg;  };
_selectedBG = lbData[912,lbCurSel (912)];
_selectedBG = call compile format["%1", _selectedBG];

if(isNil "trackedby") then { trackedby = []; };
if(count trackedby > 0) then {
	["Zapłaciłeś $50.00! W twoim telefonie zostało znalezione użącenie śledzące.", true] spawn domsg; 
} else {
	["Zapłaciłeś $50.00 za nowy telefon!", true] spawn domsg; 
};
trackedby = [];

phoneSkin = _selectedBG;

if(isNil "phoneSkin") exitwith { ["Error saving", true] spawn domsg; };

[player, "phoneBackground", [phoneBackground,phoneskin]] remoteExec ["Server_fnc_setVariable",2];

[50] call Client_fnc_removeBank;
