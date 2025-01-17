/**
 * ExileClient_gui_toaster_addToast
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
disableSerialization;
private _rawText = _this select 0;
private _stripeColor = _this select 1;
private _display = uiNameSpace getVariable ["RscExileToastArea", displayNull]; 
private _toastControl = _display ctrlCreate ["RscExileToast", -1]; 
private _toastPosition = ctrlPosition _toastControl;
private _textControl = _toastControl controlsGroupCtrl 102;  
_textControl ctrlSetStructuredText (parseText _rawText); 
private _textHeight = ctrlTextHeight _textControl;
private _textPosition = ctrlPosition _textControl;  
_textPosition set [3, _textHeight];  
if (_textHeight < ((_toastPosition select 3) - 14 * pixelH)) then 
{
	_textPosition set [1, (_toastPosition select 1) + ((_toastPosition select 3) - _textHeight) * 0.5];  
}
else 
{
	_toastPosition set [3, _textHeight + 14 * pixelH];
	_textPosition set [1, 7 * pixelH];
};
_textControl ctrlSetPosition _textPosition;
_textControl ctrlCommit 0;
_backgroundControl = _toastControl controlsGroupCtrl 100;  
_backgroundPosition = ctrlPosition _backgroundControl;
_backgroundPosition set [3, _toastPosition select 3];
_backgroundControl ctrlSetPosition _backgroundPosition;
_backgroundControl ctrlCommit 0;
_stripeControl = _toastControl controlsGroupCtrl 101;  
_stripeControl ctrlSetBackGroundColor _stripeColor;
_stripePosition = ctrlPosition _stripeControl;
_stripePosition set [3, _toastPosition select 3];
_stripeControl ctrlSetPosition _stripePosition;
_stripeControl ctrlCommit 0;
_toastPosition set [0, safeZoneX + 300 * pixelW];
_toastPosition set [1, safeZoneY + (60 - 10) * pixelH - (_toastPosition select 3)];
_toastControl ctrlSetPosition _toastPosition;
_toastControl ctrlSetFade 1;
_toastControl ctrlCommit 0;
reverse ExileClientToasts;
ExileClientToasts pushBack [_toastControl, 0, diag_tickTime + 5];
reverse ExileClientToasts;
playsound "sl_notification_slideout";
[] call ClientModules_Toasts_fnc_pushToBottom;