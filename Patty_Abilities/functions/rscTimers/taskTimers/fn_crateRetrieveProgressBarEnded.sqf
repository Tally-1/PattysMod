params [
	["_man",nil,[objNull]]
];
private _crate = _man getVariable "PSA_myCrate";
[_crate] remoteExecCall ["deleteVehicle",2];

true;