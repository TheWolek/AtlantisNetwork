if (currentWeapon player != "bnae_trg42_virtual") exitWith {};

_attachments = player weaponAccessories currentWeapon player;
_cashrifle = 3000;
player removeWeapon "bnae_trg42_virtual";
_attachment1 = _attachments select 0;
_attachment2 = _attachments select 2;
_attachment3 = _attachments select 3;
if (_attachment1 == "bnae_muzzle_blk_virtual") then {
	_cashrifle = _cashrifle + 300;
};
if (_attachment2 == "bnae_scope_blk_virtual") then {
	_cashrifle = _cashrifle + 600;
};
if (_attachment3 == "bnae_bipod_v2_virtual") then {
	_cashrifle = _cashrifle + 300;
};

[_cashrifle,false,true] call Client_fnc_addMoneyToPlayer;

[format["Otrzymałeś %1 $ za zwrócenie karabinu do magazynu!", _cashrifle call client_fnc_numberText], true] spawn domsg;