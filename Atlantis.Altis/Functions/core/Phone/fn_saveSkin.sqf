disableSerialization;

if (typeof currentcursortarget != "Land_Market_DED_Market_03_F") exitwith { ["Musisz to zrobić w sklepie Verizon!", false] spawn domsg;  };
_selectedBG = lbData[912,lbCurSel (912)];
_selectedBG = call compile format["%1", _selectedBG];

if(isNil "trackedby") then { trackedby = []; };
if(count trackedby > 0) then {
	["Zostałeś obciążony 50,00 $! W telefonie znaleziono urządzenie do śledzenia telefonu.", true] spawn domsg; 
} else {
	["Za nowy telefon zapłacono 50,00 USD!", true] spawn domsg; 
};
trackedby = [];

phoneSkin = _selectedBG;

if(isNil "phoneSkin") exitwith { ["Error saving", true] spawn domsg; };

[player, "phoneBackground", [phoneBackground,phoneskin]] remoteExec ["Server_fnc_setVariable",2];

[50] call Client_fnc_removeBank;
