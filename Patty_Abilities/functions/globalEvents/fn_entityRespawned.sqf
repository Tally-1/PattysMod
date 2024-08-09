params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
if!(_man isKindOf "caManBase")exitWith{};

private _abilities = _corpse getVariable ["PSA_abilities",[]];

_man setVariable ["PSA_abilities", _abilities, true];

[_man, _corpse] call  PSA_fnc_crateDataOnRespawn;
[_man, _corpse] spawn PSA_fnc_mobileRespawnOnRespawn;
[_man, _corpse] spawn PSA_fnc_rallyPointOnRespawn;

true;