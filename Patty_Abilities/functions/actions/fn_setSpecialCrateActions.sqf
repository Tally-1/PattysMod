params[
    ["_crate", nil,[objNull]]
];

if(PSA_isACEEnabled)exitWith {
	[_crate] call PSA_fnc_specialCrateResupplyActionACE;
	[_crate] call PSA_fnc_specialCrateRetrieveActionACE;
	[_crate] call PSA_fnc_vehicleRearmActionACE;
};

[_crate] call PSA_fnc_specialCrateResupplyAction;
[_crate] call PSA_fnc_specialCrateRetrieveAction;

true;