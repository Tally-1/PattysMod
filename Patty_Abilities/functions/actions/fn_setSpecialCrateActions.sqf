params[
    ["_crate", nil,[objNull]]
];

if(PSA_isACEEnabled)exitWith {[_crate] call PSA_fnc_specialCrateResupplyActionACE};
[_crate] call PSA_fnc_specialCrateResupplyAction;

true;