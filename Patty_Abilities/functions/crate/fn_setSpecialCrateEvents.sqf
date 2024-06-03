params[
    ["_crate", nil, [objNull]]
];
_crate addEventHandler ["Killed",      {_this spawn PSA_fnc_crateKilled}];
_crate addEventHandler ["Deleted",     {_this call  PSA_fnc_crateDeleted}];
_crate addEventHandler ["HandleDamage",{_this call  PSA_fnc_crateDamaged}];

true;