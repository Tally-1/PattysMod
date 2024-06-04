private _crate     = _self get "crate";
private _data      = _crate getVariable "PSA_crateData";
private _contested = _data call ["contestedNow"];

if!(_contested)exitWith{
	_data set ["contested", _contested]; 
	_data call ["globalizeData"];
};

[_crate] remoteExecCall ["PSA_fnc_destroyCrateRemote",2];

true;