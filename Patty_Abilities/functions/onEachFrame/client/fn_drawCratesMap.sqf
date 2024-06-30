params[
	["_map",nil,[controlNull]]
];
private _crates = missionNamespace getVariable ["PSA_specialCrates",[]];

{[_map, _x] call PSA_fnc_drawCrateOnMap} forEach _crates;

true;