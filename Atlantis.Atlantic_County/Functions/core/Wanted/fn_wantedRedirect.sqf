//SUSPECTID / OFFICERID / CHARGES / STATUS / EVIDENCE / activate


_currentitemindex = lbCurSel 1120;
currentSuspect = lbData[1120, _currentitemindex];
currentSuspect = call compile currentSuspect;
if (_currentitemindex == -1) exitWith { ["Musisz wybrać osobę.", true] spawn domsg; };
if ( myJob != "DA" && !(myJob == "Cop" && (player IN currentDetectives || (player getVariable "cop") >= 6 )) && !(myJob == "Legal" && ((player getVariable "legal") >= 6)) ) exitWith { ["Musisz być detektywem, prokuratorem, wyższą rangą w PD lub sędzią by wpisać nakaz sądowy.", true] spawn domsg; };

closedialog 0;
sleep 0.15;
createdialog "insertCriminal";