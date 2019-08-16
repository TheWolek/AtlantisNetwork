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

	/*
	{
		_marker12 = createMarkerLocal [format["tempmarker_%1",random 10000], _x];
		_marker12 setMarkerShapeLocal "ICON";
		_marker12 setMarkerTypeLocal "hd_dot";
		_marker12 setMarkerColorLocal "ColorGreen";
		_marker12 setMarkerText "Boat";

	} forEach [[9910.15,5076.94,-2.38744]];
	*/

	//cementownia
	if (player IN currentMarshals || player IN currentDetectives) then {
		_marker23 = createMarkerLocal [format["tempmarker_%1",random 10000],[3638.11,3524.14,0.00183105]];
		_marker23 setMarkerShapeLocal "ICON";
		_marker23 setMarkerTypeLocal "hd_dot";
		_marker23 setMarkerColorLocal "ColorGreen";
		_marker23 setMarkerText "Stare magazyny";
	};

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
/*
if(_type == "Shop") then {
    _marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1",(getPlayerUID player)]];
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "hd_dot";
    _marker setMarkerColorLocal "ColorGreen";
    _marker setMarkerTextLocal (markerText format["%1",(getPlayerUID player)]);

};
*/

if(_type == "Office") then {
    if(myoffice isEqualTo [0,0,0]) exitWith {};

    _marker = createMarkerLocal [format["tempmarker_%1",random 10000], getMarkerPos format["%1OFFICE",(getPlayerUID player)]];
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "hd_dot";
    _marker setMarkerColorLocal "ColorGreen";
    _marker setMarkerTextLocal (markerText format["%1OFFICE",(getPlayerUID player)]);

};

/*

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
*/

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

waitUntil { sleep 1; !visibleMap };

{ deleteMarkerLocal _x; } forEach (allmapmarkers select { _x find "tempmarker" > -1});