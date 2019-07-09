params["_target"];

if ( count(weapons _target) > 0 ) then {
    ["Ta osoba ma jedną lub więcej broni.", true] spawn domsg;
} else {
    ["Ta osoba nie ma broni.", true] spawn domsg;
};