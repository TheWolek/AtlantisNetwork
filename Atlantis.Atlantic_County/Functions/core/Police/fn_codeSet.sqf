//file: codeSet
_list = (findDisplay 1111) displayCtrl 1113;
_code = lbCurSel _list;

[format["Ustanowiłeś kod %1",_code],true] spawn domsg;
CurrentCode = format["%1",_code];
publicVariable "CurrentCode";
_str = format["Aktualny kod na wyspie - %1",currentCode];
[_str, true] remoteExec ["domsg",-2];
[_str, true] remoteExec ["domsg",-2];
format["ActionLog: %1 (%2) ustanowił kod %3",name player, getPlayerUID player, currentcode] remoteExec ["diag_log",2];