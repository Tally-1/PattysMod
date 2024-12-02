params[
    ["_man",nil,[objNull]]
];
private _isAi       = !(_man in allPlayers);
private _default    = if([_man]call PTTY_fnc_isMedic)then{PTTY_defaultLives+1}else{PTTY_defaultLives};
private _lives      = [_man] call PTTY_fnc_getLives;
private _newAmount  = _default - _lives;

if(_lives isEqualTo _default)
exitWith{false};

if(_isAi)
then{_man setVariable ["PTTY_aiLives", _default]}
else{[_man, _newAmount] call BIS_fnc_respawnTickets};

true;