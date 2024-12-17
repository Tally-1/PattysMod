private _playerGrps = [];

if(!PTTY_Debug)exitWith{
	isNil{
		private _players = call BIS_fnc_listPlayers;
		{_playerGrps pushBackUnique group _x} forEach _players;
	};

    _playerGrps;
};

{isNil{// forced unscheduled execution for speed improvement

    private _isPlayerGroup = false;
    
    {
        if([_x] call PTTY_fnc_isPlayer)
        exitWith{_isPlayerGroup = true};        
    } forEach units _x;

    if(_isPlayerGroup)
    then{_playerGrps pushBack _x};
    
}} forEach allGroups;

_playerGrps;