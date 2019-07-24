params["_type"];

{ deleteMarkerLocal _x; } forEach (allmapmarkers select { _x find "tempmarker" > -1});
if (_type == "ALL") then {
    _marker = createMarkerLocal [format["tempmarker_%1",random 10000], myhouse];
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "hd_dot";
    _marker setMarkerColorLocal "ColorGreen";
    _marker setMarkerTextLocal "My Home";
    _marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1",(getPlayerUID player)]];
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "hd_dot";
    _marker setMarkerColorLocal "ColorGreen";
    _marker setMarkerTextLocal (markerText format["%1",(getPlayerUID player)]);
    _marker setMarkerTextLocal (markerText format["%1OFFICE",(getPlayerUID player)]);	
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_CommonwealthBank","Land_Bank_DED_House_01_F"],30000]);
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["land_cg_dunkinbronuts"],30000]);
	_gasStations = [[5864.81,3135.14,0.00143862],[7358.25,4043.26,0.00143814],[5370.65,5831.23,0.00143814],[1583.29,1080.06,0.00144005]];
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach _gasStations;
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
	} forEach (nearestobjects[player,["Land_buildingGunStore1"],30000]);
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Coffee_DED_Coffee_02_F","Land_Coffee_DED_Coffee_01_F"],30000]);		
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_ModernShowroom"],30000]);
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach [[938.832,1207.01,0.00143862]];
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach [[938.832,1207.01,0.00143862]];
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Hangar_F"],30000]);
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach [[9910.15,5076.94,-2.38744]];
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["land_cg_dexters"],30000]);
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_buildingBar1"],30000]);
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Market_DED_Market_01_F"],30000]);
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_buildingBarbers1"],30000]);
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Centrelink"],30000]);
	{

        if((getMarkerColor format["%1",(getPlayerUID _x)] IN ["ColorBlack"])) then {

			_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1",(getPlayerUID _x)]];
			_marker setMarkerShapeLocal "ICON";
			_marker setMarkerTypeLocal "hd_dot";
			_marker setMarkerColorLocal "ColorGreen";
			_marker setMarkerTextLocal (markerText format["%1",(getPlayerUID _x)]);
		};

	} forEach playableUnits;
	{
		
        if((getMarkerColor format["%1OFFICE",(getPlayerUID _x)] IN ["ColorBlack"])) then {

			_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1OFFICE",(getPlayerUID _x)]];
			_marker setMarkerShapeLocal "ICON";
			_marker setMarkerTypeLocal "hd_dot";
			_marker setMarkerColorLocal "ColorGreen";
			_marker setMarkerTextLocal (markerText format["%1OFFICE",(getPlayerUID _x)]);
		};
	} forEach playableUnits;							
    _arr = [
        ["Oil Refining",[6326.59,2253.8,0.00143814]],
        ["Ore Refining",[6315.67,2242.35,0.00139236]],
        ["Log Refining",[1237.41,4379.28,0.00143814]],
        ["Pelt Curing",[4215.46,5725.09,0.00120544]],
        ["Bars/Wood/Oil Selling",[8644.31,6861.77,0.00143623]],
        ["Fish Processing",[9803.09,3003,0.00113201]],
		["Open Mining", [4074.46,2447.46,0.00144005]],
        ["Rare Item Trading", [5447.27,5165.15,0.002213]],
        ["Fish Selling", [4734.05,2411.46,0.00143862]],
        ["Housing Upgrading",[7924.76,2724.39,0.00143814]]
    ];

	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x select 1];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTextLocal (_x select 0);

	} forEach _arr;
    _arr = [
		["Casino",[933.723,1289.9,0.00143957]],
        ["Court of Law", [817.614,1637.97,0.00143766]],
        //["Police Station", [8297.44,3002.32,0.00143814]],
        //["DoC Silver Lake", [5576.06,6191.3,0.00143433]],
        //["Silver Rush Hotel & Casino", [4821.5,2123.88,0.00143957]],
        ["Nightclub", [800.329,1389.63,0.00143814]],
        //["SLFD Silver Lake North", [9574.12,4165.42,0.00143814]],
        ["Hospital", [1752.17,2227.06,0.00132751]],
		["Jail", [6884.91,4046.69,0.00143433]],
        //["SLFD Colchester", [8524.93,6642.69,-0.269258]],
        //["Silver Lake City Concert Hall", [6736.5,1780.16,0.00144172]],
		//["Muscle Beach Gym", [7523.95,2239.83,0.00143814]],
		["Impound Lot", [3419.04,4382.06,0.00144196]]
		//["Bank of Silver Lake", [8805.49,7242.14,0.00143814]]
    ];

	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x select 1];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTextLocal (_x select 0);

	} forEach _arr;	
	if(myoffice isEqualTo [0,0,0]) exitWith {};
    _marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1OFFICE",(getPlayerUID player)]];
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "hd_dot";
    _marker setMarkerColorLocal "ColorGreen";
};

if(_type == "Home") then {
    _marker = createMarkerLocal [format["tempmarker_%1",random 10000], myhouse];
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "hd_dot";
    _marker setMarkerColorLocal "ColorGreen";
    _marker setMarkerTextLocal "My Home";

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
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_CommonwealthBank","Land_Bank_DED_House_01_F"],30000]);
};

if(_type == "Dunkin") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["land_cg_dunkinbronuts"],30000]);
};

if(_type == "Verizon") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Market_DED_Market_03_F"],30000]);
};

if(_type == "Gas") then {
	_gasStations = [[5864.81,3135.14,0.00143862],[7358.25,4043.26,0.00143814],[5370.65,5831.23,0.00143814],[1583.29,1080.06,0.00144005]];
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach _gasStations;
};

if(_type == "Gun") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
	} forEach (nearestobjects[player,["Land_buildingGunStore1"],30000]);
};

if(_type == "General") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Coffee_DED_Coffee_02_F","Land_Coffee_DED_Coffee_01_F"],30000]);
};

if(_type == "Carshop") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_ModernShowroom"],30000]);
};

if(_type == "Garage") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach [[938.832,1207.01,0.00143862]];
};

if(_type == "Airshop") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Hangar_F"],30000]);
};

if(_type == "Boatshop") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach [[9910.15,5076.94,-2.38744]];
};

if(_type == "Pizzaria") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["land_cg_dexters"],30000]);
};

if(_type == "Bar") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_buildingBar1"],30000]);
};

if(_type == "McDildos") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Market_DED_Market_01_F"],30000]);
};

if(_type == "Barber") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_buildingBarbers1"],30000]);
};

if(_type == "Centrelink") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_Centrelink"],30000]);
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
        ["Oil Refining",[6326.59,2253.8,0.00143814]],
        ["Ore Refining",[6315.67,2242.35,0.00139236]],
        ["Log Refining",[1237.41,4379.28,0.00143814]],
        ["Pelt Curing",[4215.46,5725.09,0.00120544]],
        ["Bars/Wood/Oil Selling",[8644.31,6861.77,0.00143623]],
        ["Fish Processing",[9803.09,3003,0.00113201]],
		["Open Mining", [4074.46,2447.46,0.00144005]],
        ["Rare Item Trading", [5447.27,5165.15,0.002213]],
        ["Fish Selling", [4734.05,2411.46,0.00143862]],
        ["Housing Upgrading",[7924.76,2724.39,0.00143814]]
    ];

	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x select 1];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTextLocal (_x select 0);

	} forEach _arr;
};

if(_type == "Misc") then {
    _arr = [
		["Casino",[933.723,1289.9,0.00143957]],
        ["Court of Law", [817.614,1637.97,0.00143766]],
        //["Police Station", [8297.44,3002.32,0.00143814]],
        //["DoC Silver Lake", [5576.06,6191.3,0.00143433]],
        //["Silver Rush Hotel & Casino", [4821.5,2123.88,0.00143957]],
        ["Nightclub", [800.329,1389.63,0.00143814]],
        //["SLFD Silver Lake North", [9574.12,4165.42,0.00143814]],
        ["Hospital", [1752.17,2227.06,0.00132751]],
		["Jail", [6884.91,4046.69,0.00143433]],
        //["SLFD Colchester", [8524.93,6642.69,-0.269258]],
        //["Silver Lake City Concert Hall", [6736.5,1780.16,0.00144172]],
		//["Muscle Beach Gym", [7523.95,2239.83,0.00143814]],
		["Impound Lot", [3419.04,4382.06,0.00144196]]
		//["Bank of Silver Lake", [8805.49,7242.14,0.00143814]]
    ];

	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], _x select 1];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTextLocal (_x select 0);

	} forEach _arr;
};

waitUntil { sleep 1; !visibleMap };

{ deleteMarkerLocal _x; } forEach (allmapmarkers select { _x find "tempmarker" > -1});