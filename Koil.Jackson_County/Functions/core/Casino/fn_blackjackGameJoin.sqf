params["_player"];

if(count BJgamePlayers > 4) exitwith { ["A player tried joining your BJ table, though, it is filled.", true] spawn domsg; };
BJgamePlayers pushback _player;

["Gracz dołączył do twojego stołu BJ", true] spawn domsg;

[player] remoteexec ["client_fnc_blackjackGameJoined",_player];