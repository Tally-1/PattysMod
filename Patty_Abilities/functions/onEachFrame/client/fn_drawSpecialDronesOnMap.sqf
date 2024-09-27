params[
	["_map",nil,[controlNull]]
];
private _drones = missionNamespace getVariable ["PSA_specialDrones",[]];

{[_map, _x] call PSA_fnc_drawDroneOnMap} forEach _drones;

true;