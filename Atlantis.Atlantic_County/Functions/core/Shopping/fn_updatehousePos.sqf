params ["_house"];
["Twój partner obudził się i twój dom się zmienił.", true] spawn domsg;

deletemarkerlocal "myhouse";

player setvariable ["house",_house,false];
myhouse = _house;