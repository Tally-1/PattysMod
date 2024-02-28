

private _amount     = PTTY_defaultLives + 1;
private _unitsLives = ([player]   call PTTY_fnc_getLives);

if(_unitsLives > 0)
then{_amount = _amount-_unitsLives;};

[player, _amount] call BIS_fnc_respawnTickets;

true;