params["_type"];

{ deleteMarkerLocal _x; } forEach (allmapmarkers select { _x find "tempmarker" > -1});

if(_type == "Home" || _type == "All") then {
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
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";

	} forEach (nearestobjects[player,["Land_fs_roof_F"],30000]);
};

if(_type == "Gun") then {
	{
		_marker = createMarkerLocal [format["tempmarker_%1",random 10000], getpos _x];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "hd_dot";
		_marker setMarkerColorLocal "ColorGreen";
;
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

	} forEach [[6828.56,1913.19,0.00144005],[8681.84,7012.18,0.00143814],[8948.54,7528.86,0.00143814]];
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

if(_type == "Shops" || _type == "All") then {
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

if(_type == "Offices" || _type == "All") then {
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

if(_type == "Processing" || _type == "All") then {
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

if(_type == "Misc" || _type == "All") then {
    _arr = [
        ["Silver Lake Court System", [8637.41,5749.44,0.00143814]],
        ["SLPD Silver Lake City", [8297.44,3002.32,0.00143814]],
        ["DoC Silver Lake", [5576.06,6191.3,0.00143433]],
        ["Silver Rush Hotel & Casino", [4821.5,2123.88,0.00143957]],
        ["Silverlake Nightclub", [7481.15,2221.23,0.00143814]],
        ["SLFD Silver Lake North", [9574.12,4165.42,0.00143814]],
        ["Doncaster Hospital", [388.517,7506.98,0.00146198]],
        ["SLFD Colchester", [8524.93,6642.69,-0.269258]],
        ["Silver Lake City Concert Hall", [6736.5,1780.16,0.00144172]],
		["Muscle Beach Gym", [7523.95,2239.83,0.00143814]],
		["Impound Lot", [1049.88,3657.15,0.00143814]],
		["Bank of Silver Lake", [8805.49,7242.14,0.00143814]]
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