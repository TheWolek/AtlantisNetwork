_room = _this select 0;
_casino = (nearestObjects [player,["Land_buildingsCasino2"],500] select 0);

["Wynająłeś pokój. Stracisz klucze do pokoju w ciągu 60 minut.", true] spawn domsg;

_casino setVariable[format["bis_disabled_Door_%1",_room], 0];

uiSleep 3540;

["Stracisz klucze do pokoju w ciągu 1 minuty.", true] spawn domsg;
uiSleep 60;

_casino setVariable[format["bis_disabled_Door_%1",_room], 1];
_casino animate [format["door%1",_room],0];
