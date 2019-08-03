params["_player"];

if(count BJgamePlayers > 4) exitwith { ["Osoba próbowała dołączyć do twojego stołu BJ.", true] spawn domsg; };
BJgamePlayers pushback _player;

["Osoba dołączyła do twojego stołu BJ", true] spawn domsg;

[player] remoteexec ["client_fnc_blackjackGameJoined",_player];