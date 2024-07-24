params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
if!(_man isKindOf "caManBase")exitWith{};

[_man, _corpse] call PSA_fnc_crateDataOnRespawn;
[_man, _corpse] spawn PSA_fnc_rallyPointOnRespawn;

true;