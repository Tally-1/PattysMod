private _lifeMap = missionNamespace getVariable "PTTY_lifeMap";
{
    private _uid   = [_x] call PTTY_fnc_getPlayerUID;
    private _lives = [_x] call PTTY_fnc_getLives;
	if(!isNil "_lives")
	then{_lifeMap set [_uid, _lives]};
    
} forEach allPlayers;

missionNamespace setVariable ["PTTY_lifeMap", _lifeMap, true];

true;