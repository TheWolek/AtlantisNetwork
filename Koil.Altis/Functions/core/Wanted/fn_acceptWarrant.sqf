//SUSPECTID / OFFICERID / CHARGES / STATUS / EVIDENCE / activate

private["_caseID"];

_currentitemindex = lbCurSel 911;

if (_currentitemindex == -1) exitWith { ["Musisz wybrać rekord.", true] spawn domsg; };

_status2 = (call compile lbData [911, _currentitemindex]);
_caseID = _status2 select 0;

if!(_status2 select 6 IN [1,3]) exitWith { ["Musi być nakazem aresztowania lub nakazem rewizji.", true] spawn domsg; };
if (_status2 select 7 == 1) exitWith { ["Ten nakaz został już podpisany.", true] spawn domsg; };
if (_status2 select 8 == 0) exitWith { ["Ten nakaz jest archiwizowany.", true] spawn domsg; };

[_caseID, name player, getplayeruid player] remoteExec ["server_fnc_acceptWarrant",2];

[_status2 select 2, "Zostałeś wydany nakaz aresztowania. Poddaj się policjantowi lub napotkaj konsekwencje prawne.", "Atlantis County", "Nakaz aresztowania"] remoteExec ["server_fnc_sendMail",2];

closeDialog 0;