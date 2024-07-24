private _module = _self get "owner";

_self set ["enabled", false];

deleteVehicle _module;

"Module RP disabled" call p_dbg;

true;