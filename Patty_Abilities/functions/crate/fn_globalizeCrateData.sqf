private _crate = _self get "crate";
[_crate, ["PSA_crateData", _self]]remoteExecCall ["setVariable"];
_crate setVariable ["PSA_crateData", _self, true];