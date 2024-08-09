private _owner  = _self get "owner";
private _module = _self get "module";
private _list   = PSA_mobileSpawnPoints get"all";
private _index  = _list find _self;

_owner  setVariable ["PSA_mobileRespawnData", nil, true];
_module setVariable ["PSA_mobileRespawnData", nil, true];

deleteVehicle _module;

_list deleteAt _index;

true;