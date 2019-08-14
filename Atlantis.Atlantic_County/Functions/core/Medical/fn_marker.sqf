params["_type"];

{ deleteMarkerLocal _x; } forEach (allmapmarkers select { _x find "tempmarker" > -1});
if (_type == "ALL") then {
    _marker1 = createMarkerLocal [format["tempmarker_%1",random 10000], myhouse];
    _marker1 setMarkerShapeLocal "ICON";
    _marker1 setMarkerTypeLocal "RMarkers_Home";
    _marker1 setMarkerTextLocal "Mój dom";
    _marker2 = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1",(getPlayerUID player)]];
    _marker2 setMarkerShapeLocal "ICON";
    _marker2 setMarkerTypeLocal "hd_dot";
    _marker2 setMarkerColorLocal "ColorGreen";
    _marker2 setMarkerTextLocal (markerText format["%1",(getPlayerUID player)]);

	//BANKS
	{
		_marker3 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker3 setMarkerShapeLocal "ICON";
		_marker3 setMarkerTypeLocal "HRP_icon_Bank";

	} forEach [[5492.83,3907.13,0.00143814],[3355.36,3639.47,0.00143433],[3346.1,3733.35,0.00141907],[859.244,1173.77,0.00143862]];

	//DONUTS
	{
		_marker4 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker4 setMarkerShapeLocal "ICON";
		_marker4 setMarkerTypeLocal "RMarkers_Shop";
		_marker4 setMarkerText "Donuts";

	} forEach [[794.617,1275.35,0.00143814],[5578.88,3920.1,0.00143909]];

	//VERIZON
	{
		_marker5 = createMarkerLocal [format["tempmarker_%1",random 10000],  _x];
		_marker5 setMarkerShapeLocal "ICON";
		_marker5 setMarkerTypeLocal "hd_dot";
		_marker5 setMarkerColorLocal "ColorGreen";
		_marker5 setMarkerText "Verizon";

	} forEach [[794.718,1551.04,0.00143957]];

	//CPN
	//_gasStations = [[5864.81,3135.14,0.00143862],[7358.25,4043.26,0.00143814],[5370.65,5831.23,0.00143814],[1583.29,1080.06,0.00144005]];
	{
		_marker6 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker6 setMarkerShapeLocal "ICON";
		_marker6 setMarkerTypeLocal "hd_dot";
		_marker6 setMarkerColorLocal "ColorGreen";
		_marker6 setMarkerTextLocal "CPN";

	} forEach [[5374.86,5838.67,0.00143814],[7361.37,4045.69,0.00143814],[5864.06,3137.55,0.00143862],[1870.8,4355.55,0.00143433],[1582.14,1079.35,0.00144005]];

	//GUNSTORE
	{
		_marker7 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker7 setMarkerShapeLocal "ICON";
		_marker7 setMarkerTypeLocal "RMarkers_Pistolet";
	} forEach [[922.439,1506.12,0.00143814],[5394.43,4037.82,0.00143814]];

	//GENERAL
	{
		_marker8 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker8 setMarkerShapeLocal "ICON";
		_marker8 setMarkerTypeLocal "RMarkers_Shop";
		_marker8 setMarkerTextLocal "General";

	} forEach [[5554.41,3915.97,0.00143814],[5569.7,3958.99,0.00143814],[3441.74,3581.4,0.00144958],[857.062,1228.33,0.00143957]];	

	//KIESTA	
	{
		_marker9 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker9 setMarkerShapeLocal "ICON";
		_marker9 setMarkerTypeLocal "RMarkers_Sedan";

	} forEach [[869.699,1451.75,0.00143862],[5477.5,3964.33,0.00143814]];

	//GARAZ
	{
		_marker10 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker10 setMarkerShapeLocal "ICON";
		_marker10 setMarkerTypeLocal "RMarkers_garage";

	} forEach [[938.832,1207.01,0.00143862],[5455.6,4086.16,0.00144005]];

	//AIRSHOP
	{
		_marker11 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker11 setMarkerShapeLocal "ICON";
		_marker11 setMarkerTypeLocal "RMarkers_Helicopter";

	} forEach [[1108.94,4223.37,0.00144005],[1108.03,4170.69,0.00143814],[1108.03,4125.28,0.00143909],[1109.3,3512.81,0.00144005],[1106.58,3463.76,0.00143814],[1105.67,3419.26,0.00143909]];
	/*
	{
		_marker12 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker12 setMarkerShapeLocal "ICON";
		_marker12 setMarkerTypeLocal "hd_dot";
		_marker12 setMarkerColorLocal "ColorGreen";
		_marker12 setMarkerText "Boat";

	} forEach [[9910.15,5076.94,-2.38744]];
	*/

	//PIZZA
	{
		_marker13 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker13 setMarkerShapeLocal "ICON";
		_marker13 setMarkerTypeLocal "RMarkers_Shop";
		_marker13 setMarkerText "Pizza";	

	} forEach [[915.637,1391.86,0.00143862]];

	//BAR
	{
		_marker14 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker14 setMarkerShapeLocal "ICON";
		_marker14 setMarkerTypeLocal "RMarkers_Bar";
		_marker14 setMarkerTextLocal "Bar";

	} forEach [[854.291,1374.47,0.00143814],[5526.98,4027.84,0.00143623]];

	//BARBER
	{
		_marker16 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker16 setMarkerShapeLocal "ICON";
		_marker16 setMarkerTypeLocal "hd_dot";
		_marker16 setMarkerText "Barber";

	} forEach [[918.697,1519.69,0.00143862],[918.15,1492.06,0.00143862],[5524.86,3880.39,0.00144005]];


	//cementownia
	if (player IN currentMarshals || player IN currentDetectives) then {
		_marker23 = createMarkerLocal [format["tempmarker_%1",random 10000],[3638.11,3524.14,0.00183105]];
		_marker23 setMarkerShapeLocal "ICON";
		_marker23 setMarkerTypeLocal "hd_dot";
		_marker23 setMarkerColorLocal "ColorGreen";
		_marker23 setMarkerText "Stare magazyny";
	};

	//CENTRELINK
	{
		_marker17 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker17 setMarkerShapeLocal "ICON";
		_marker17 setMarkerTypeLocal "hd_dot";
		_marker17 setMarkerColorLocal "ColorGreen";
		_marker17 setMarkerText "Centrelink";

	} forEach [[5482.53,3902.5,0.00144005],[3403.58,3611.93,0.00143433],[858.608,1160.79,0.00143909]];
	/*
	{

        if((getMarkerColor format["%1",(getPlayerUID _x)] IN ["ColorBlack"])) then {

			_marker18 = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1",(getPlayerUID _x)]];
			_marker18 setMarkerShapeLocal "ICON";
			_marker18 setMarkerTypeLocal "hd_dot";
			_marker18 setMarkerColorLocal "ColorGreen";
			_marker18 setMarkerTextLocal (markerText format["%1",(getPlayerUID _x)]);
		};

	} forEach playableUnits;
	*/
	{
		
        if((getMarkerColor format["%1OFFICE",(getPlayerUID _x)] IN ["ColorBlack"])) then {

			_marker19 = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1OFFICE",(getPlayerUID _x)]];
			_marker19 setMarkerShapeLocal "ICON";
			_marker19 setMarkerTypeLocal "hd_dot";
			_marker19 setMarkerColorLocal "ColorGreen";
			_marker19 setMarkerTextLocal (markerText format["%1OFFICE",(getPlayerUID _x)]);
		};
	} forEach playableUnits;							
    _arr = [
        ["Przetwarzanie",[5576.34,3327.53,0],"RMarkers_usine"],
        ["Oczyszczanie skór",[4805.48,909.664,0],"RMarkers_usine"],
        ["Skup dóbr",[3159.32,2470.09,0],"HRP_icon_Trade"],
        ["Przetwarzanie ryb",[7463.44,1864,0],"RMarkers_usine"],
        ["Skup rzadkich przedmiotów", [1733.81,3723.2,0.00170898],"HRP_icon_Trade"],
        ["Skup ryb", [3174.16,2281.33,0.00141549],"HRP_icon_Trade"],
        ["Ulepszanie domów",[855.632,1092.4,0.00143909],"RMarkers_Building"]
    ];

	{
		_marker20 = createMarkerLocal [format["tempmarker_%1",random 10000], _x select 1];
		_marker20 setMarkerShapeLocal "ICON";
		_marker20 setMarkerTypeLocal (_x select 2);
		_marker20 setMarkerTextLocal (_x select 0);

	} forEach _arr;
    _arr = [
		["Kasyno",[933.723,1289.9,0.00143957],"BanqueEuro"],
        ["Sąd stanowy", [817.614,1637.97,0.00143766],"HRP_icon_court"],
        ["Nightclub", [800.329,1389.63,0.00143814],"RMarkers_Bar"],
        ["", [3263.96,3608.9,0.00143433],"RMarkers_Hospital"], //Hospital
        ["", [1340.53,985.628,0.00143909],"RMarkers_Police_Station"] //PD
    ];

	{
		_marker21 = createMarkerLocal [format["tempmarker_%1",random 10000], _x select 1];
		_marker21 setMarkerShapeLocal "ICON";
		_marker21 setMarkerTypeLocal (_x select 2);
		//_marker21 setMarkerColorLocal "ColorGreen";
		_marker21 setMarkerTextLocal (_x select 0);

	} forEach _arr;	
	if(myoffice isEqualTo [0,0,0]) exitWith {};
    _marker22 = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1OFFICE",(getPlayerUID player)]];
    _marker22 setMarkerShapeLocal "ICON";
    _marker22 setMarkerTypeLocal "hd_dot";
    _marker22 setMarkerColorLocal "ColorGreen";
	_marker22 setMarkerTextLocal (markerText format["%1OFFICE",(getPlayerUID player)]);	
};

if(_type == "Home") then {
    _marker1 = createMarkerLocal [format["tempmarker_%1",random 10000], myhouse];
    _marker1 setMarkerShapeLocal "ICON";
    _marker1 setMarkerTypeLocal "RMarkers_Home";
    _marker1 setMarkerTextLocal "Mój dom";

};

if(_type == "Shop") then {
    _marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1",(getPlayerUID player)]];
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "hd_dot";
    _marker setMarkerColorLocal "ColorGreen";
    _marker setMarkerTextLocal (markerText format["%1",(getPlayerUID player)]);

};

if(_type == "Office") then {
    if(myoffice isEqualTo [0,0,0]) exitWith {};

    _marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1OFFICE",(getPlayerUID player)]];
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "hd_dot";
    _marker setMarkerColorLocal "ColorGreen";
    _marker setMarkerTextLocal (markerText format["%1OFFICE",(getPlayerUID player)]);

};

if(_type == "Bank") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000],  _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "HRP_icon_Bank";

	} forEach [[5492.83,3907.13,0.00143814],[3355.36,3639.47,0.00143433],[3346.1,3733.35,0.00141907],[859.244,1173.77,0.00143862]];
};

if(_type == "Dunkin") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000],  _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "RMarkers_Shop";
		_marker setMarkerText "Donuts";

	} forEach [[794.617,1275.35,0.00143814],[5578.88,3920.1,0.00143909]];
};

if(_type == "Verizon") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000],  _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerText "Verizon";

	} forEach [[794.718,1551.04,0.00143957]];
};

if(_type == "Gas") then {
	_gasStations = [[5374.86,5838.67,0.00143814],[7361.37,4045.69,0.00143814],[5864.06,3137.55,0.00143862],[1870.8,4355.55,0.00143433],[1582.14,1079.35,0.00144005]];
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerText "CPN";

	} forEach _gasStations;
};

if(_type == "Gun") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "RMarkers_Pistolet";
	} forEach [[922.439,1506.12,0.00143814],[5394.43,4037.82,0.00143814]];
};

if(_type == "General") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "RMarkers_Shop";
		_marker setMarkerText "General Store";

	} forEach [[5554.41,3915.97,0.00143814],[5569.7,3958.99,0.00143814],[3441.74,3581.4,0.00144958],[857.062,1228.33,0.00143957]];
};

if(_type == "Carshop") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "RMarkers_Sedan";
		_marker setMarkerText "Car Shop";

	} forEach [[869.699,1451.75,0.00143862],[5477.5,3964.33,0.00143814]];
};

if(_type == "Garage") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "RMarkers_garage";
		_marker setMarkerText "Garage";

	} forEach [[938.832,1207.01,0.00143862],[5455.6,4086.16,0.00144005]];
};

if(_type == "Airshop") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "RMarkers_Helicopter";
		_marker setMarkerText "Airshop";

	} forEach [[1108.94,4223.37,0.00144005],[1108.03,4170.69,0.00143814],[1108.03,4125.28,0.00143909],[1109.3,3512.81,0.00144005],[1106.58,3463.76,0.00143814],[1105.67,3419.26,0.00143909]];
};

if(_type == "Boatshop") then {
	/*
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerText "BoatShop";

	} forEach [[9910.15,5076.94,-2.38744]];
	*/
};

if(_type == "Pizzaria") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerText "Pizza";

	} forEach [[915.637,1391.86,0.00143862]];
};

if(_type == "Bar") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerText "Bar";

	} forEach [[854.291,1374.47,0.00143814],[5526.98,4027.84,0.00143623]];
};

/*
if(_type == "McDildos") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000],  _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerText "McDildos";

	} forEach (nearestobjects[player,["Land_Market_DED_Market_01_F"],30000]);
};
*/

if(_type == "Barber") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerText "Barber";

	} forEach [[918.697,1519.69,0.00143862],[918.15,1492.06,0.00143862],[5524.86,3880.39,0.00144005]];
};

if(_type == "Centrelink") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000],  _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerText "Cenrelink";

	} forEach [[5482.53,3902.5,0.00144005],[3403.58,3611.93,0.00143433],[858.608,1160.79,0.00143909]];
};

if(_type == "Shops") then {
	{

        if((getMarkerColor format["%1",(getPlayerUID _x)] IN ["ColorBlack"])) then {

			_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1",(getPlayerUID _x)]];
			_marker setMarkerShapeLocal "ICON";
			_marker setMarkerTypeLocal "hd_dot";
			_marker setMarkerColorLocal "ColorGreen";
			_marker setMarkerTextLocal (markerText format["%1",(getPlayerUID _x)]);
		};

	} forEach playableUnits;
};

if(_type == "Offices") then {
	{
		
        if((getMarkerColor format["%1OFFICE",(getPlayerUID _x)] IN ["ColorBlack"])) then {

			_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1OFFICE",(getPlayerUID _x)]];
			_marker setMarkerShapeLocal "ICON";
			_marker setMarkerTypeLocal "hd_dot";
			_marker setMarkerColorLocal "ColorGreen";
			_marker setMarkerTextLocal (markerText format["%1OFFICE",(getPlayerUID _x)]);
		};
	} forEach playableUnits;
};

if(_type == "Processing") then {
    _arr = [
        ["Przetwarzanie",[5576.34,3327.53,0],"RMarkers_usine"],
        ["Oczyszczanie skór",[4805.48,909.664,0],"RMarkers_usine"],
        ["Skup dóbr",[3159.32,2470.09,0],"HRP_icon_Trade"],
        ["Przetwarzanie ryb",[7463.44,1864,0],"RMarkers_usine"],
        ["Skup rzadkich przedmiotów", [1733.81,3723.2,0.00170898],"HRP_icon_Trade"],
        ["Skup ryb", [3174.16,2281.33,0.00141549],"HRP_icon_Trade"],
        ["Ulepszanie domów",[855.632,1092.4,0.00143909],"RMarkers_Building"]
    ];

	{
		_marker20 = createMarkerLocal [format["tempmarker_%1",random 10000], _x select 1];
		_marker20 setMarkerShapeLocal "ICON";
		_marker20 setMarkerTypeLocal (_x select 2);
		_marker20 setMarkerTextLocal (_x select 0);

	} forEach _arr;
};

if(_type == "Misc") then {
    _arr = [
		["Kasyno",[933.723,1289.9,0.00143957],"BanqueEuro"],
        ["Sąd stanowy", [817.614,1637.97,0.00143766],"HRP_icon_court"],
        ["Nightclub", [800.329,1389.63,0.00143814],"RMarkers_Bar"],
        ["", [3263.96,3608.9,0.00143433],"RMarkers_Hospital"], //Hospital
        ["", [1340.53,985.628,0.00143909],"RMarkers_Police_Station"] //PD
    ];

	{
		_marker21 = createMarkerLocal [format["tempmarker_%1",random 10000], _x select 1];
		_marker21 setMarkerShapeLocal "ICON";
		_marker21 setMarkerTypeLocal _x select 2;
		//_marker21 setMarkerColorLocal "ColorGreen";
		_marker21 setMarkerTextLocal (_x select 0);

	} forEach _arr;	
};

waitUntil { sleep 1; !visibleMap };

{ deleteMarkerLocal _x; } forEach (allmapmarkers select { _x find "tempmarker" > -1});