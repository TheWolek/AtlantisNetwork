//player select

//[8832.93,1567.56,0.00088501]
//cam pos [8832.93,1566.48,0.000883102]
//[8832.93,1565.37,0.000883102]
disableSerialization;
private["_male","_female","_dummy"];

//client_kcCamera  = "CAMERA" camCreate [7613.42,1927.02,61.3689];
client_kcCamera  = "CAMERA" camCreate [3272.97,3389.38,21.4395];
showCinemaBorder true;   
client_kcCamera cameraEffect ["EXTERNAL", "BACK"];                             
client_kcCamera camSetPos [3269.83,3452.69,2.83995];  
client_kcCamera camSetFOV 0.85;  

lastsync = time - 3;

charselection = true;
//playMusic  "npIntro";
uisleep 5;

[
	[
		["Jest rok 2053.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>",5],	
		["Przybyłeś do stanu Atlantis.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>",7]
	],
	0, 0.75
] spawn BIS_fnc_typeText;



_dummy = "C_man_polo_2_F" createVehicleLocal [3259.66,3509.55,0.00143433];
_dummy hideobject true;
_dummy setpos [3269.4,3463.97,0.00143433];
_dummy setdir 174;
_dummy setFace (face player);
client_kcCamera camSettarget _dummy; 
client_kcCamera camCommit 30;

uisleep 10;


_script = [
	[
		["Stwórz od nowa swoje życie!","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>",5],
		["Poznaj gagsterską stronę tego stanu, zarabiaj gruby szmal robiąc nielegalne rzeczy,","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>",5],
		["Albo stań po stronie prawa i zacznij pracę jako policjant, ratownik lub prawnik!","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>",8]
	],
	0, 0.75
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };


_male = "C_man_polo_2_F" createVehicleLocal [3270.4,3463.81,0.00143433];
removeuniform w;
_male allowdamage false;
_male forceAdduniform "TRYK_shirts_DENIM_WH";
_male setdir 174;  
_male setpos [3270.4,3463.81,0.00143433];

_female = "C_man_polo_2_F" createVehicleLocal [3268,3463.58,0.00143433];
_female allowdamage false;
_female forceAdduniform "EF_FEM_3_77R2";
_female setdir 174;  
_female setpos [3268,3463.58,0.00143433];
_female setFace ("Fem_8");
uisleep 5;

_script = [
	[
		["Wybierz swoją płeć","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>",5],
		["Pamiętaj, zmiana płci wymaga operacji.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>",7]
	],
	0, 0.75
] spawn BIS_fnc_typeText;


createdialog "charselect";
while{charselection} do { uisleep 0.05; _male setdir ((getdir _male) + 15); _female setdir ((getdir _female) - 15); };

deletevehicle _female;
deletevehicle _male;
deletevehicle _dummy;

waitUntil { scriptDone _script };

_script = [
	[
		["Witaj na AtlantisNetwork!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>",5],
		["Używaj przycisku windows w celu interakcji ze wszystkim.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>",7]
	],
	0, 0.75
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };

_script = [
	[
		["Zacznij od interakcji z przyczepą. Masz tam listy, garaż, schowek i crafting.","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>",5],
		["Zajrzyj do skrzynki na listy, znajdziesz tam krótki opis gry.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>",5],
		["W razie problemów nasza administracja chętnie ci pomoże. Baw się dobrze!","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>",10]
	],
	0, 0.75
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
player addBackpack "B_AssaultPack_cbr";

["Add","license",0] call client_fnc_sustain;

player setvariable ["loaded",4,false];