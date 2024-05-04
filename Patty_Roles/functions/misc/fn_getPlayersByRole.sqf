params[
	["_role",nil,[""]]
];
private _players = allPlayers; // entities "caManBase";
private _inRole  = _players select { 
	private _playerRole = _x getVariable "PTG_role";
	(!isNil "_playerRole") &&
	{_playerRole isEqualTo _role};	
};

// Array of players with the assigned role
_inRole;