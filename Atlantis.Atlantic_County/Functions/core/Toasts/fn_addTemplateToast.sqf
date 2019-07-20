/**
 * ExileClient_gui_toaster_addTemplateToast
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
private _template = _this select 0;
if !(isClass (missionconfigFile >> "CfgExileToasts" >> _template)) exitWith 
{
	diag_log format ["UNKNOWN TOAST TEMPLATE: %1", _template];
};
private _placeholders = param [1, [""]];
private _placeholder1 = _placeholders param [0, ""];
private _placeholder2 = _placeholders param [1, ""];
private _placeholder3 = _placeholders param [2, ""];
private _placeholder4 = _placeholders param [3, ""];
private _templateConfig = missionconfigFile >> "CfgExileToasts" >> _template;
private _color = getArray (_templateConfig >> "color");
private _templateText = getText (_templateConfig >> "template");
private _rawText = format [_templateText, _placeholder1, _placeholder2, _placeholder3, _placeholder4];
[_rawText, _color] call ClientModules_Toasts_fnc_addToast;