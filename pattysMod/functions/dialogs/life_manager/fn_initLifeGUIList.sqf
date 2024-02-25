params[
	["_list", nil, [controlNull]]
];
private _players = [] call PTTY_fnc_getPlayers;

for "_i"from 0 to (count _players)-1 do { 
	[
		_players#_i,
		_list

	] call PTTY_fnc_addPlayerTolifeGUIList;
};