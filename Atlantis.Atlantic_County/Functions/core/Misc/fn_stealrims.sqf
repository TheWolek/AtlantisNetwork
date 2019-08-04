params["_object"];

{

    if ( _object getHitPointDamage _x < 0.9 ) exitWith {

        [_object,[_x,1]] remoteExec ["setHitPointDamage"];

        player addItem "Toolkit";

        ["Ukradłeś koła...", true] spawn domsg;

    };

} forEach ["HitLFWheel","HitLF2Wheel","HitRFWheel","HitRF2Wheel"];