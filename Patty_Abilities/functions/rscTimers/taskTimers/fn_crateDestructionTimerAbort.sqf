private _crate     = _self get "crate";

if(isNil "_crate")exitWith{};

private _data      = _crate getVariable "PSA_crateData";
private _contested = _data call ["contestedNow"];

if(_contested)exitWith{};

_self call ["stop"];

true;