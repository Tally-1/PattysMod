private _playerGrps = [];

{
    private _isPlayerGroup = false;
    
    {
        if([_x] call PTTY_fnc_isPlayer)
        exitWith{_isPlayerGroup = true};        
    } forEach units _x;

    if(_isPlayerGroup)
    then{_playerGrps pushBack _x};
    
} forEach allGroups;

_playerGrps;