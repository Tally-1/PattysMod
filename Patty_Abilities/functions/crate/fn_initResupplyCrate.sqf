params[
	["_crate", nil,     [objNull]],
	["_man",   objNull, [objNull]]
];
[_crate] call PSA_fnc_addToAllCrates;
[_man, _crate] call PSA_fnc_setSpecialCrateData;
[_crate]       call PSA_fnc_setSpecialCrateEvents;
[_crate]       remoteExecCall ["PSA_fnc_setSpecialCrateActions", 0];

true;