private["_witnesses"];

_evidence = _this select 0;
_info = _evidence getVariable "evidenceInformation"; 

if(count (_info select 9) > 0) then {
    _witnesses = ((_info select 9) joinString ", ");
} else {
    _witnesses = "nobody";
};

switch(_info select 10) do {

    case 1: {

       [format["Po analizie odkryto, że ktoś zastrzelił kogoś za pomocą (n) %1. Świadek %2.", _info select 6, _witnesses], true] remoteExec ["domsg", player];

    };

    case 2: {

        [format["Po analizie okazało się, że pasmo osób przeszukało kogoś. Świadek %1. ", _witnesses], true] remoteExec ["domsg", player];

    };

    case 3: {

        [format["Po analizie odkryto, że osoba obrabowała sklep za pomocą (n) %1. Świadek %2.", _info select 6, _witnesses], true] remoteExec ["domsg", player];

    };

};

deleteVehicle _evidence;
