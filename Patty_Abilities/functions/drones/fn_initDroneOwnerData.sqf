params[
    ["_man",nil,[objNull]]
];
private _timeLimits = [
	["recon",  0],
	["combat", 0],
	["bomb",   0]
];
_timeLimits = createHashmapObject [_timeLimits];

private _dataArr = [
    ["active_drones",       []],
	["timeLimits", _timeLimits],
    ["owner",             _man],

        /*************{METHODS}*************/
    ["addDrone",                   PSA_fnc_droDataAddDrone],
	["globalizeData",         PSA_fnc_droDataglobalizeData],
	["onDestruction",         PSA_fnc_droDataOnDestruction], // Called on "Killed" event.
	["remainingCoolDown", PSA_fnc_droDataRemainingCoolDown],
	["cooldownComplete",   PSA_fnc_droDataCooldownComplete],
    ["activeTypes",             PSA_fnc_droDataActiveTypes]
];

private _data = createHashmapObject [_dataArr];
_man setVariable ["PSA_droneOwnerData", _data, true];

_data;