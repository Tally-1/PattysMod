params[
	["_entity", nil, [objNull]]
];

if([_entity] call PSA_fnc_functionalMan isEqualTo false
&&{[_entity] call PSA_fnc_validVehicle  isEqualTo false})
exitWith{false;};


true;