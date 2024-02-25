params[
	["_listbox", nil, [controlNull]]
];
[_listbox] call PTTY_fnc_lifeGUIListaddPlayers;

_listbox ctrlAddEventHandler ["LBSelChanged", {_this call PTTY_fnc_lifeMenuLbChange}];

[_listbox, 0] call PTTY_fnc_lifeMenuLbChange;

_listbox ctrlSetBackgroundColor [0,0,0, 0.5];

true;