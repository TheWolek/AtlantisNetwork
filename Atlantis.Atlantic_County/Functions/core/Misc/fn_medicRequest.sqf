/*
Handle Health Changes by Koil
*/
params [["_caller", objNull, [objNull]], ["_callerName", "Unknown Player", [""]]];

if(isNull _caller) exitWith {}; //Bad data

_caller setVariable["mapVisible",true,true];
["MedicalRequestEmerg",[format["%1 wymaga pomocy medycznej!",_callerName]]] call BIS_fnc_showNotification;