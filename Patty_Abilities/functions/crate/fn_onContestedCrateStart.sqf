private _owner = _self get "owner";
private _crate = _self get "crate";

"Crate is contested!" call p_dbg;

[_crate] remoteExec ["PSA_fnc_crateDestructionTimer", _owner];

true;