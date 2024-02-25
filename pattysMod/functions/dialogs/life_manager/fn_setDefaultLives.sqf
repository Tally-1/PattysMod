params[
	["_man",     nil,     [objNull]],
	["_listBox", nil, [controlNull]],
	["_index",   nil,           [0]]
];
private _default    = PTTY_defaultLives;
private _isMedic    = [_man] call PTTY_fnc_isMedic;
private _unitsLives = [_man] call PTTY_fnc_getLives;

if(_isMedic)then{_default=_default+1};

if(_unitsLives isNotEqualTo _default)
then{[_man, _default - _unitsLives] call BIS_fnc_respawnTickets};

if((!isNil "_listBox")
&& {!isNil "_index"})
then{};