//player select

//[8832.93,1567.56,0.00088501]
//cam pos [8832.93,1566.48,0.000883102]
//[8832.93,1565.37,0.000883102]
disableSerialization;
private["_male","_female","_dummy"];

client_kcCamera  = "CAMERA" camCreate [7613.42,1927.02,61.3689];
showCinemaBorder true;   
client_kcCamera cameraEffect ["EXTERNAL", "BACK"];                             
client_kcCamera camSetPos [7551.71,2121.63,0.00132942];  
client_kcCamera camSetFOV 0.85;  

lastsync = time - 3;

charselection = true;
playMusic  "npIntro";
uisleep 15;

[
	[
		["Jest rok 2053.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
		["Przybyłeś do Atlantis County.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"]
	]
] spawn BIS_fnc_typeText;


_dummy = "C_man_polo_2_F" createVehicleLocal [7751.45,2128.59,0.00131226];
_dummy hideobject true;
_dummy setpos [7551.45,2128.59,0.00131226];
_dummy setdir 162;
_dummy setFace (face player);
client_kcCamera camSettarget _dummy; 
client_kcCamera camCommit 120;

uisleep 10;


_script = [
	[
		["Teraz pora na wybranie swojej ścieżki.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Stwórz swoje zycie!","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };


_male = "C_man_polo_2_F" createVehicleLocal [7550.1,2128.08,0.00133705];
removeuniform _male;
_male allowdamage false;
_male forceAdduniform "U_C_Poloshirt_stripped";
_male setdir 160;  
_male setpos [7550.1,2128.08,0.00133705];

_female = "C_man_polo_2_F" createVehicleLocal [7552.45,2128.59,0.00131226];
_female allowdamage false;
_female forceAdduniform "female_default_1";
_female setdir 158;  
_female setpos [7552.45,2128.59,0.00131226];
_female setFace (face player);
uisleep 15;

_script = [
	[
		["Wybierz swoją płeć","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Może ona być zmieniona później, ale może wymagać operacji.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


createdialog "charselect";
while{charselection} do { uisleep 0.05; _male setdir ((getdir _male) + 15); _female setdir ((getdir _female) - 15); };

deletevehicle _female;
deletevehicle _male;
deletevehicle _dummy;

waitUntil { scriptDone _script };

_script = [
	[
		["Witaj na atlantisnetwork.pl!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Używaj przycisku windows w celu interakcji ze wszystkim.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };

_script = [
	[
		["Zacznij od interakcji z przyczepą.","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Masz tam listy. Baw się dobrze.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;

deadPlayer = false;
godmode = false;

player forceAdduniform "U_C_Poloshirt_stripped";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player additem "cg_tabletd";
player assignitem "cg_tabletd";

["Add","license",0] call client_fnc_sustain;

player setvariable ["loaded",4,false];