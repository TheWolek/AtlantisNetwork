_currentitemindex = lbCurSel 1120;
if (_currentitemindex == -1) exitWith { ["Musisz wybrać osobę.", true] spawn domsg; };
_status2 = lbData [1120, _currentitemindex];
[player] remoteexec ["client_fnc_licenseReturn",_status2];