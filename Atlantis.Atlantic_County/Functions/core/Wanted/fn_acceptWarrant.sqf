//SUSPECTID / OFFICERID / CHARGES / STATUS / EVIDENCE / activate

private["_caseID"];

_currentitemindex = lbCurSel 911;

if (_currentitemindex == -1) exitWith { ["Musisz wybrać rekord.", true] spawn domsg; };

_status2 = (call compile lbData [911, _currentitemindex]);
_caseID = _status2 select 0;

if!(_status2 select 6 IN [1,3]) exitWith { ["Musi to być nakaz aresztowania lub nakaz przeszukania.", true] spawn domsg; };
if (_status2 select 7 == 1) exitWith { ["Ten nakaz został juz podpisany.", true] spawn domsg; };
if (_status2 select 8 == 0) exitWith { ["Ten nakaz jest zarchiwizowany.", true] spawn domsg; };

[_caseID, name player, getplayeruid player] remoteExec ["server_fnc_acceptWarrant",2];

[_status2 select 2, "You have been issued an arrest warrant. Surrender yourself to a police officer or face legal consequences.", "Silver Lake", "Arrest Warrant"] remoteExec ["server_fnc_sendMail",2];

closeDialog 0;