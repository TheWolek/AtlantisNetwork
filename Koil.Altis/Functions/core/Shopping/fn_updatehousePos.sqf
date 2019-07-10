params ["_house"];
["Twój partner się obudził i zmieniła się lokalizacja Twojego domu.", true] spawn domsg;

deletemarkerlocal "myhouse";

player setvariable ["house",_house,false];
myhouse = _house;