/*
	File: fn_craftMenu.sqf
	array numbers are:
	["NP_Wood","np_copperbar1","np_ironbar1","np_silverbar1","CG_OilCanister"];
*/
disableSerialization;
private["_cost","_error","_materials","_n","_i","_iMafiaClasses"];

_status = lbData[1113,lbCurSel (1113)];
_status = call compile format["%1", _status];

_mainMenus = ["Pistols","Large Weapons","Items","Foods","Clothing","Quality Clothing"];

_materials = ["NP_Wood","np_copperbar1","np_ironbar1","np_silverbar1","CG_OilCanister"];


_PistolClasses = [
	"RH_python",
	"RH_cz75",
	"RH_uspm",
	"RH_kimber",
	"RH_Deaglem",
	"RH_bull",
	"RH_fn57",
	"RH_Deagleg",
	"RH_Deagles"
];

_PricesPistolClasses = [
	[1,0,5,0,1],
	[1,4,0,1,1],
	[2,3,0,1,1],
	[0,3,0,1,2],
	[0,0,3,1,2],
	[1,1,4,0,3],
	[1,4,0,0,3],
	[1,1,1,0,12],
	[1,1,1,1,12]
];

_PistolMags = [1,1,0,0,0];

	_iMafiaClasses = [
	//small auto
		//"CUP_hgun_MicroUzi",
		//"RH_muzi"		
	];

if(myJob == "Mafia" && player getvariable "Mafia" >= 6) then {

	_iMafiaClasses = [

		"RH_g18",

		"RH_tec9",

		"hlc_rifle_hk53RAS",

		"RH_M4sbr",

		"hlc_rifle_rpk74n",

		"arifle_mas_ww2_ppsh"

	];
};

if(myJob == "Biker" && player getvariable "Biker" >= 6) then {

	_iMafiaClasses = [
		//small auto

		"RH_tec9",

	//
		"arifle_mas_ww2_sten",

		"bnae_M97_virtual"
	];
};

if(myJob == "Mobster" && player getvariable "Mobster" >= 6) then {

	_iMafiaClasses = [

		//"CUP_hgun_SA61",
		"hlc_smg_mp5k",

		"arifle_mas_ww2_mp40",

		//rifle

		"arifle_mas_ww2_mp44"
	];
};

_iPricesMafiaClasses = [
    [3,20,0,0,16],
    [3,20,0,0,16],
    [5,16,10,0,20],
    [5,0,22,0,24],
    [8,0,10,10,25],
    [5,0,10,15,35]

];
_iMafiaMags = [1,1,1,1,1];


_itemList = [
	"NP_DrugTable","NP_GrowingPlot","CG_Dynamite","CG_C4","CG_Engine","CG_wheel","CG_HackingTool","CG_Lockpick","CG_MetalWire","NP_drillitem","np_SatchelCharge","np_goldscanner","np_tequila","murshun_cigs_matches","murshun_cigs_cigpack"
];


_PricesItemList = [
	[1,1,11,1,10],
	[15,1,0,0,10],
	[10,1,0,0,2],
	[0,3,5,5,5],
	[0,5,0,1,2],
	[0,1,0,0,1],
	[0,1,5,5,15],
	[2,5,0,0,2],
	[5,7,1,1,3],
	[1,1,1,1,0],
	[25,0,0,0,50],
	[10,0,0,0,10],
	[1,0,0,0,1],
	[3,0,0,0,0],
	[10,0,0,0,0]	
];

_foodlist = [
	"np_groceries","np_sausage","np_chickensoup","np_peasoup","np_psoup","np_beefsoup","np_lettucesoup","np_tuna","np_water"
];

_clothing1 = [
		"vvv_character_rock1",
		"vvv_character_rock2",
		"vvv_character_rock3",
		"vvv_character_rock4",
		"vvv_ropa_comun_f_1",
		"vvv_ropa_comun_f_2",
		"vvv_ropa_comun_f_3",
		"vvv_ropa_comun_f_4",
		"vvv_ropa_comun_f_5",
		"vvv_ropa_comun_f_6",
		"vvv_ropa_comun_f_7",
		"vvv_ropa_comun_f_8",
		"vvv_ropa_comun_f_9",
		"vvv_ropa_comun_f_10",
		"KAEL_SUITS_BR_F14",
		"KAEL_SUITS_BR_F12",
		"KAEL_SUITS_BR_F3",
		"KAEL_SUITS_BR_F",
		"KAEL_SUITS_BR_F35",
		"KAEL_SUITS_BR_F34",
		"vvv_traje_motox_02",
		"vvv_traje_motox_02_2",
		"vvv_traje_motox_02_3",
		"vvv_traje_motox_02_4",
		"vvv_traje_motox_02_5",
		"vvv_traje_motox_02_6",
		"vvv_traje_motox_02_7",
		"vvv_traje_motox_02_8",
		"vvv_character_sport",
		"vvv_character_sport_2",
		"vvv_character_sport_3",
		"vvv_character_sport_4",
		"vvv_character_sport_5",
		"vvv_character_sport_6",
		"vvv_character_sport_7",
		"vvv_character_sport_8",
		"vvv_character_sport_9",
		"vvv_character_sport_10",
		"vvv_character_sport_11",
		"vvv_character_sport_12",
		"vvv_character_sport_13",
		"TRYK_HRP_USMC",
		"TRYK_HRP_khk",
		"EF_FEM_3",
		"EF_FEM_4",
		"EF_FEM_4_2LPBPS",
		"EF_FEM_4_2LPBP",
		"EF_FEM_4_2LPBR",
		"EF_FEM_4_2LPBW",
		"EF_FEM_4_2LPB",
		"EF_FEM_4_2LPBPS2",
		"EF_FEM_4_2LPBP2",
		"EF_FEM_5",
		"EF_FEM_6",
		"EF_FEM_3_42",
		"I_FEM_AAF_long",
		"O_FEM_CSAT_Long",
		"B_FEM_NATO_long",
		"EF_FEM_3_5B",
		"EF_FEM_3_5BP",
		"EF_FEM_3_5VP",
		"EF_FEM_3_5RC",
		"EF_FEM_3_5W",
		"EF_FEM_3_52B",
		"EF_FEM_3_52BP",
		"EF_FEM_3_52VP",
		"EF_FEM_3_52RC",
		"EF_FEM_3_52W"
];




_clothing2 = [
		"vvv_traje_jackoy",
		"vvv_traje_jackoy2",
		"vvv_traje_jackoy3",
		"vvv_traje_jackoy4",
		"vvv_traje_jackoy5",
		"vvv_traje_jackoy6",
		"vvv_traje_jackoy7",
		"vvv_traje_jackoy8",
		"vvv_character_agente_47",
		"vvv_character_agente_474",
		"vvv_character_agente_475",
		"vvv_elena_fisher",
		"vvv_elena_fisher2",
		"vvv_elena_fisher3",
		"vvv_elena_fisher4",
		"vvv_elena_fisher5",
		"vvv_elena_fisher6",
		"vvv_elena_fisher7",
		"vvv_elena_fisher8",
		"vvv_elena_fisher9",
		"vvv_elena_fisher10",
		"vvv_elena_fisher11",
		"vvv_elena_fisher12",
		"vvv_elena_fisher13",
		"vvv_elena_fisher14",
		"vvv_elena_fisher15",
		"vvv_elena_fisher16",
		"vvv_character_wandelina",
		"vvv_character_jennifer"
];





uisleep 0.05;

_display = findDisplay 1111;

if((_this select 0) == "REFRESH") exitwith {

	if(isNil "_status") exitwith {};

	if(_status IN _pistolClasses) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _PistolClasses;
		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_myArray = _PricesPistolClasses select _mySelect;
		_mags = _PistolMags;
		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Wood: %2 <br/> Copper: %3 <br/> Iron: %4 <br/> Silver: %5 <br/> Oil: %6 <br/><br/><t color='#33CC33'>Magazine Cost <t color='#ffffff'> <br/> Wood: %7 <br/> Copper: %8 <br/> Iron: %9 <br/> Silver: %10 <br/> Oil: %11 ",_selectedWeapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_Mags select 0),(_Mags select 1),(_Mags select 2),(_Mags select 3),(_Mags select 4)];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _iMafiaClasses) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _iMafiaClasses;
		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.
		_myArray = _iPricesMafiaClasses select _mySelect;
		_mags = _iMafiaMags;
		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Wood: %2 <br/> Copper: %3 <br/> Iron: %4 <br/> Silver: %5 <br/> Oil: %6 <br/><br/><t color='#33CC33'>Magazine Cost <t color='#ffffff'> <br/> Wood: %7 <br/> Copper: %8 <br/> Iron: %9 <br/> Silver: %10 <br/> Oil: %11 ",_selectedWeapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_Mags select 0),(_Mags select 1),(_Mags select 2),(_Mags select 3),(_Mags select 4)];
		_btn4 ctrlCommit 0;
	};


	if(_status IN _itemList) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _itemList;

		_selectedWeapon = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_myArray = _PricesItemList select _myselect;

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Wood: %2 <br/> Copper: %3 <br/> Iron: %4 <br/> Silver: %5 <br/> Oil: %6",_selectedweapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4)];
		_btn4 ctrlCommit 0;
	};


	if(_status IN _foodList) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _foodList;

		_selectedWeapon = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.



		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["Groceries 8 Food Parts, all others 2.",_selectedweapon];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _clothing1) then {
		[] spawn client_fnc_clothesUpdate2;
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _clothing1;

		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["Fur Pelt: 5",_selectedweapon];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _clothing2) then {

		[] spawn client_fnc_clothesUpdate2;
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _clothing2;

		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["Fur Pelt: 12",_selectedweapon];
		_btn4 ctrlCommit 0;

	};


};






_Btn2 = _display displayCtrl 1116;
_Btn3 = _display displayCtrl 1117;
_Btn5 = _display displayCtrl 1118;


_btn2 ctrlShow false;
_btn3 ctrlShow false;
_btn5 ctrlShow false;

_list = _display displayCtrl 1113;

lbClear _list;

if((_this select 0) == "FRESH") exitwith {

	_btn3 ctrlShow true;

	{
		_list lbAdd _x;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _mainMenus;


};

if(isNil "_status") exitwith { ["Błąd w wyborze!", true] spawn domsg; };


	_btn2 ctrlShow true;
	_btn5 ctrlShow true;

if(_status == "Pistols") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _pistolClasses;

};

if(_status == "Large Weapons") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _iMafiaClasses;

};

if(_status == "Items") exitwith {

	{
		_selectedweapon = (configfile >> "CfgMagazines" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _ItemList;

};


if(_status == "Foods") exitwith {

	{
		_selectedweapon = (configfile >> "CfgMagazines" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _FoodList;

};


if(_status == "Clothing") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _clothing1;

};

if(_status == "Quality Clothing") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _clothing2;

};


if(isNil "shopholder") then {
	shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);  
};

if((_this select 0) == "CRAFT") exitwith {

	if(_status IN _PistolClasses) then {
		_count = _pistolclasses FIND _status;
		_cost = _PricesPistolClasses select _count;
	};

	if(_status IN _iMafiaClasses) then {
		_count = _iMafiaClasses FIND _status;
		_cost = _iPricesMafiaClasses select _count;
	};
	if(_status IN _itemList) then {
		_count = _itemList FIND _status;
		_cost = _PricesItemList select _count;
	};

	if(_status IN _foodlist) then {
		if(_status == "np_groceries") then { _cost = 8; } else { _cost = 2; };
	};

	if(_status IN _clothing1) then {
		_cost = 5;
	};

	if(_status IN _clothing2) then {
		_cost = 12;
	};

if(_status IN _clothing1 || _status IN _clothing2 || _status IN _foodlist) then {


	if(_status IN _foodlist) then {

		_error = false;

		_checkCost = _cost;

		_amountcurrent = {_x == "NP_FoodPart"} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { ["Za mało zasobów", true] spawn domsg; _error = true; };

		if(_error) exitwith {};

		["Add","Karma",1,"Intellect"] call client_fnc_sustain;

		_i = _Cost;

		while{ _i > 0 } do {
			player removeitem "NP_FoodPart";
			_i = _i - 1;
		};

	}else {

		_error = false;

		_checkCost = _cost;

		_amountcurrent = {_x == "NP_Pelt"} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { ["Za mało zasobów", true] spawn domsg; _error = true; };

		if(_error) exitwith {};

		["Add","Karma",1,"Intellect"] call client_fnc_sustain;
		

		_i = _Cost;

		while{ _i > 0 } do {
			player removeitem "NP_Pelt";
			_i = _i - 1;
		};

	};

 } else {

	_error = false;
	_n = 0;
	{

		_materialCheck = _materials select _n;
		_checkCost = _cost select _n;

		_amountcurrent = {_x == (_materials select _n)} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { ["Za mało zasobów", true] spawn domsg; _error = true; };
		_n = _n + 1;

	} foreach _cost;

	if(_error) exitwith {};

	["Add","Karma",1,"Intellect"] call client_fnc_sustain;

	_n = 0;
	{
		_checkCost = _cost select _n;
		_i = _checkCost;

		while{ _i > 0 } do {
			player removeitem (_materials select _n);
			_i = _i - 1;
		};

		_n = _n + 1;
	} foreach _cost;

};

if(_error) exitwith {};

	playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 4, 1, 15];

	if(_status IN _ItemList || _status IN _foodList || _status IN _clothing1 || _status IN _clothing2 ) then {

		_level_check = (client_level_array select 12);

		if(_status IN _foodList ) then { shopholder additemCargoGlobal [_status,2]; };

		if(_level_check > -1 && _level_check < 300) then { 	shopholder additemCargoGlobal [_status,1]; };
		if(_level_check > 299 && _level_check < 600) then { shopholder additemCargoGlobal [_status,1]; };
		if(_level_check > 599) then { shopholder additemCargoGlobal [_status,1]; };

		if(_status IN _ItemList || _status IN _foodlist) then {

			_status = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;

		} else {
			_status = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;	
		};
	} else {

		_level_check = (client_level_array select 12);
		if(_level_check > -1 && _level_check < 300) then { 	shopholder addWeaponCargoGlobal [_status,1]; };
		if(_level_check > 299 && _level_check < 600) then { shopholder addWeaponCargoGlobal [_status,1]; };
		if(_level_check > 599) then { shopholder addWeaponCargoGlobal [_status,1]; };

		_status = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;	
	};

	player disablecollisionwith shopholder;
	shopholder setpos (getposATL player);	

	[format["Wytworzyłeś %1",_status], true] spawn domsg;
	closedialog 0;
};

if((_this select 0) == "CRAFTMAG") exitwith {

	if(_status IN _PistolClasses) then {
		_count = _pistolclasses FIND _status;
		_cost = _PistolMags;
	};
	if(_status IN _iMafiaClasses) then {
		_count = _iMafiaClasses FIND _status;
		_cost = _iMafiaMags;
	};

	_error = false;
	_n = 0;
	{

		_materialCheck = _materials select _n;
		_checkCost = _cost select _n;

		_amountcurrent = {_x == (_materials select _n)} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { ["Za mało zasobów", true] spawn domsg; _error = true; };
		_n = _n + 1;

	} foreach _cost;

	if(_error) exitwith {};


	_n = 0;
	{
		_checkCost = _cost select _n;
		_i = _checkCost;

		while{ _i > 0 } do {
			player removeitem (_materials select _n);
			_i = _i - 1;
		};

		_n = _n + 1;
	} foreach _cost;


	_magazines = getArray (configFile / "CfgWeapons" / _status / "magazines");
	_magazineClass = _magazines select 0; 
	


	_level_check = (client_level_array select 12);
	if(_level_check > -1 && _level_check < 300) then { 	
		shopholder addmagazineCargoGlobal [_magazineclass,3];
		[format["Wytworzyłeś 3 magazynki do %1",_status], true] spawn domsg; 
	};
	if(_level_check > 299 && _level_check < 600) then { 
		shopholder addmagazineCargoGlobal [_magazineclass,4];
		[format["Wytworzyłeś 4 magazynki do %1",_status], true] spawn domsg; 
	};
	if(_level_check > 599) then { 	
		shopholder addmagazineCargoGlobal [_magazineclass,5];
		[format["Wytworzyłeś 5 magazynki do %1",_status], true] spawn domsg; 
	};

	closedialog 0;
	player disablecollisionwith shopholder;
	shopholder setpos (getpos player);	

};



closedialog 0;
