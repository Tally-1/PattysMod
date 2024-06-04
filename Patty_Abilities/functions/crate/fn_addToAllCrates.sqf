params[
    ["_crate", nil,[objNull]]
];
private _allCrates = missionNamespace getVariable "PSA_specialCrates";
_allCrates pushBackUnique _crate;
missionNamespace setVariable ["PSA_specialCrates",_allCrates,true];

_allCrates;