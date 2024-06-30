private _crates = call PSA_fnc_updateAllCrateActionsACE;

missionNamespace setVariable ["PSA_specialCrates", _crates];

[] spawn PSA_fnc_initMapDrawLoop;

true;