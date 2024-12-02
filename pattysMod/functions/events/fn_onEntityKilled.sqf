params [
	["_man",nil,[objNull]]
];
if!(_man isKindOf "caManBase") exitWith{};
if (_man in allPlayers)
exitWith{[_man]call PTTY_fnc_onPlayerKilled};

true;