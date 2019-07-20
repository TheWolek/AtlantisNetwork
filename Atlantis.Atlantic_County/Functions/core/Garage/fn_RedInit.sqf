#include "\x\cba\addons\main\script_macros.hpp"
/*
	USAGE:
	Params:
	1: vehicle object
	2: array
		1. int: if 0 then rgb else custom color defined in config
		2. array: colors in rgb format
		3. string: custom color if exists
	3: array
		1. boolean: set license or not
		2. string: licence plate
	4. number - windows

	EXAMPLE:
	[_vehicle, [0,[0,0,0], "black"], "metallic", [true, "ABC1234"], 0] call ClientModules_VehicleInits_fnc_JeffInit;
*/
params [
	["_car", objNull, [objNull]],
	["_colorArr", [0, [0,0,0], "black"], [[]]],
	["_material", "", [""]],
	["_plateArr", [false, ""], [[]]],
	["_windows", 0, [0]]
];

_colorArr params [
	["_isCustomColor", 0, [0]],
	["_colorRGB", [0,0,0], [[]]],
	["_customColor", "black", [""]]
];

if (_isCustomColor isEqualTo 1) then {
	if (_customColor != "") then {_customColor = getText(configfile >> "CfgCarTextures" >> _customColor >> "texture");};
	_car setObjectTextureGlobal [0, _customColor];
} else {
	private _r = _colorRGB select 0;
	private _g = _colorRGB select 1;
	private _b = _colorRGB select 2;

	private _color = format ["#(argb,8,8,3)color(%1,%2,%3,1,ca)", (_r/255), (_g/255), (_b/255)];
	_car setObjectTextureGlobal [0,_color];
};

if (_material != "") then {_material = getText(configfile >> "cfgVehicleMaterials" >> _material >> "material");};
_car setObjectMaterialGlobal [0, _material];

_windows = _windows * 0.1;

if (_windows < 0.1) then { _windows = 0.1 };
if (_windows > 0.9) then { _windows = 0.9 };

_car setObjectTextureGlobal [8,"#(argb,8,8,3)color(0,0,0," + str _windows + ",ca)"];

_plateArr params [
	["_setPlate", false, [false]],
	["_plate", "ABC1234", [""]]
];

if (_setPlate) then {
	private _plateAlphaArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
	private _plateNumericArray = ["0","1","2","3","4","5","6","7","8","9"];

	private _plateSelections = [1,2,3,4,5,6,7];

	if (_plate isEqualTo "") then 
	{
		{
			_plateRandom = _plateAlphaArray;
			if (_forEachIndex > 3) then { _plateRandom = _plateNumericArray; };
			
			_plateRandom = selectRandom _plateRandom;
			_car setObjectTextureGlobal [_x, format["\red_base\textures\licenseplate\letters\%1.paa", _plateRandom]];
			
			ADD(_plate, _plateRandom);
		} forEach _plateSelections;
	} else {
		_plateArr = _plate splitString "";
		_plateArr resize 7;
		{
			_plateChar = _plateArr select _forEachIndex;
			if(isNil "_plateChar") then { _plateChar = ""; };
			_plateChar = [_plateChar] call KRON_StrLower;
			
			if (_plateChar IN _plateAlphaArray OR _plateChar IN _plateNumericArray) then
			{
				_car setObjectTextureGlobal[_x, format["\red_base\textures\licenseplate\letters\%1.paa", _plateChar]];
			} else {
				_car setObjectTextureGlobal[_x, ""];
			};
		} forEach _plateSelections;
	};
};