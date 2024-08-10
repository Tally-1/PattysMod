// call PTTY_fnc_serverAddLifeToNoLifePlayers
if(!isServer)exitWith{};

private _noLifers = allPlayers select {
	private _lives   = [_x] call PTTY_fnc_getLives;
	private _noLifer = _lives <= 0;
	
	_noLifer;
};
if(_noLifers isEqualTo [])exitWith{};

{[_x,1] call BIS_fnc_respawnTickets} forEach _noLifers;

["PTTY_livesChanged"] call CBA_fnc_serverEvent;