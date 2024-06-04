private _owner = _self get "owner";
private _crate = _self get "crate";

if(isNull _owner)exitWith{};

["Crate is contested!"] remoteExecCall ["PSA_fnc_debugMessage", [_owner, 2]];
[_crate]                remoteExec     ["PSA_fnc_crateDestructionTimer", _owner];

true;