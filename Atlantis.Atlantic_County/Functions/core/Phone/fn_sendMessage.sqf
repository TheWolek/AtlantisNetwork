_newMessage = [_this];

_newMessage append messages;

messages = _newMessage;

["Nowa wiadomość SMS", false] spawn doquickmsg;

playSound3D ["np_sounds\sounds\smssound.ogg", player, false, getPosasl player, 25, 1, 15];