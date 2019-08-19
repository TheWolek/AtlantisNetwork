//file: codeChange
createDialog "selectCode";
_list = (findDisplay 1111) displayCtrl 1113;
_codes = ["Zielony","Żółty","Czerwony","Czarny"];
lbClear _list;

{

	_list lbAdd _x;
	_list lbSetData [(lbsize _list)-1,_x];

} forEach _codes;
_list lbSetCurSel 0;