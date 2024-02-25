params[
	["_player", nil,     [objNull]],
	["_list",   nil, [controlNull]]
];
private _name   = name _player;
private _uid    = [_player] call PTTY_fnc_getPlayerUID;//getPlayerUID _player;
private _lifes  = [_player] call PTTY_fnc_getLives;
private _index  = _list lbAdd _name;

_list lbSetTextRight [_index, str _lifes];
_list lbSetData      [_index, str _uid];

[_lifes, _player, _list, _index] call PTTY_fnc_lifeGUIListColorAndIcon;

true;