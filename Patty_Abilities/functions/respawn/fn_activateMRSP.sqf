private _man       = _self get "owner";
private _oldModule = _self get "module";

if(!isNull _oldModule)
exitWith{"double module deactivated" call p_dbg};

private _module    = [_man] call PSA_fnc_spawnMRSPModule;
"MRS activated" call p_dbg;
_self set ["module", _module];

true;