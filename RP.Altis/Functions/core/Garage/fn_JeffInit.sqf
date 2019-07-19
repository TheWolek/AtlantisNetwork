/*
	USAGE:
	Params:
	1: vehicle object
	2: array
		1. string: what color do you want on vehicle
		2. string: what material do you want on vehicle
	3: array
		1. boolean: set license or not
		2. string: licence plate
	4. number - windows

	EXAMPLE:
	[_vehicle, ["rgb",[0,0,0]], "metallic", [true, "ABC1234"], 0] call ClientModules_VehicleInits_fnc_JeffInit;
*/

params [
	["_car", objNull, [objNull]],
	["_colorArr", ["", ""], [[]]],
	["_material", "", [""]],
	["_plateArr", [false, ""], [[]]],
	["_windows", 0, [0]]
];
private _colorType = _colorArr select 0;
private _colorBodyTexture = _colorArr select 1;
switch (_colorType) do {
	case "rgb": {
		_colorBodyTexture = parseSimpleArray _colorBodyTexture;
		private _r = _colorBodyTexture select 0;
		private _g = _colorBodyTexture select 1;
		private _b = _colorBodyTexture select 2;

		private _color = format ["#(argb,8,8,3)color(%1,%2,%3,1,ca)", (_r/255), (_g/255), (_b/255)];
		_car setObjectTexture [0,_color];
	};
	case "texture": {
		if (_colorBodyTexture != "") then {_colorBodyTexture = getText(configfile >> "CfgCarTextures" >> _colorBodyTexture >> "texture");};
		_car setObjectTextureGlobal [0, _colorBodyTexture];
	};
};

if (_material != "") then {_material = getText(configfile >> "CfgCarMaterials" >> _material >> "material");};
_car setObjectMaterialGlobal [0, _material];

_windows = _windows * 0.1;

if (_windows < 0.1) then { _windows = 0.1 };
if (_windows > 0.9) then { _windows = 0.9 };

_car setObjectTextureGlobal [8,"#(argb,8,8,3)color(0,0,0," + str _windows + ",ca)"];

private _plateSet = _plateArr select 0;
private _plate = _plateArr select 1;

if (_plateSet) then {
	private _plateAlphaArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
	private _plateNumericArray = ["0","1","2","3","4","5","6","7","8","9"];

	private _plateSelections = [1,2,3,4,5,6,7];

	if (_plate isEqualTo "") then 
	{
		{
			_plateRandom = _plateAlphaArray;
			if (_forEachIndex > 3) then { _plateRandom = _plateNumericArray; };
			
			_plateRandom = selectRandom _plateRandom;
			_car setObjectTextureGlobal [_x, format["jf_vehicles_common\plates\%1.paa", _plateRandom]];
			
			_plate = _plate + _plateRandom;
		} forEach _plateSelections;
	} else {
		_plateArr = _plate splitString "";
		_plateArr resize 7;
		{
			_plateChar = _plateArr select _forEachIndex;
			if(isNil{_plateChar}) then { _plateChar = ""; };
			_plateChar = [_plateChar] call KRON_StrLower;
			
			if (_plateChar IN _plateAlphaArray OR _plateChar IN _plateNumericArray) then
			{
				_car setObjectTextureGlobal[_x, format["jf_vehicles_common\plates\%1.paa", _plateChar]];
			} else {
				_car setObjectTextureGlobal[_x, ""];
			};
		} forEach _plateSelections;
	};
};