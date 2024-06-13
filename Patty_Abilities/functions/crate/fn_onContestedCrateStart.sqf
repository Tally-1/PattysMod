private _owner  = _self get "owner";
private _crate  = _self get "crate";
private _marker = _self get "marker";

_marker setMarkerColorLocal "colorRed";
_marker setMarkerText "supplyCrate (contested)";

_self set  ["color", [1,0,0,1]];
_self set  ["contested", true];
_self call ["globalizeData"];

if(isNull _owner)exitWith{};

[]                      remoteExecCall ["PSA_fnc_contCrateNotification", _owner];
["Crate is contested!"] remoteExecCall ["PSA_fnc_debugMessage",     [_owner, 2]];
[_crate]                remoteExec     ["PSA_fnc_crateDestructionTimer", _owner];

true;