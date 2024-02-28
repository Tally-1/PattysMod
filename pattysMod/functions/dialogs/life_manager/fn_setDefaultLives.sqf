params[
	["_man",         nil,       [objNull]],
	["_listBox",     nil,   [controlNull]],
	["_index",       nil,             [0]],
	["_ignoreMedic", false,       [false]]
];

private _default    = PTTY_defaultLives-1;
private _isMedic    = _ignoreMedic isEqualTo false && {[_man] call PTTY_fnc_isMedic};
private _unitsLives = [_man] call PTTY_fnc_getLives;

if(_isMedic)then{_default=_default+1};

if(_unitsLives isNotEqualTo _default)
then{[_man, _default - _unitsLives] call BIS_fnc_respawnTickets};

// if((!isNil "_listBox")
// && {!isNil "_index"})
// then{};