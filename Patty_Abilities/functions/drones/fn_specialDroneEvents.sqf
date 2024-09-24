params[
    ["_drone", nil,[objNull]]
];
_drone addEventHandler ["Killed",  {_this call PSA_fnc_specialDroneDestroyed}];
_drone addEventHandler ["Deleted", {_this call PSA_fnc_specialDroneDeleted}];

true;