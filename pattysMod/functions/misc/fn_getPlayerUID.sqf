/*
This function is here to facilitate testing with bots, it is unecesary in a production build.
*/
params[
	["_player", nil,     [objNull]]
];
private _uid = getPlayerUID _player;

if(_uid isNotEqualTo "")exitWith{_uid};

_uid = name _player;

_uid;