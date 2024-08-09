params [
	["_listBox", controlNull, [controlNull]],
	["_index",   -1,                    [0]]
];
private _uid     = _listBox lbData _index;
[player, _uid] call PTTY_fnc_lifeMenuToggleTransferButton;

true;