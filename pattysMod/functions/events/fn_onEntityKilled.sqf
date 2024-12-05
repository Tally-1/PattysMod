params [
	["_man",nil,[objNull]]
];
if!(_man isKindOf "caManBase") exitWith{};
if ([_man] call PTTY_fnc_isPlayer)
exitWith{[_man]call PTTY_fnc_onPlayerKilled};

true;