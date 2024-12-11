params[
	["_ctrl",nil,[controlNull]]
];
private _display     = ctrlParent _ctrl;
private _data       = _display getVariable "PTTY_data";
private _actionMenu = _data get "actionMenu";
private _man        = _actionMenu get "currentMan";
private _isAi       = !(_man in allPlayers);

_data call ["updateTVList"];

_data spawn {
	sleep 0.1;

	_this call ["updateTVList"];
	[true] remoteExec ["PTTY_fnc_remoteLifeMenuUpdate",-clientOwner];
};

[_actionMenu, _man, _isAi];