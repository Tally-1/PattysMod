params[
    ["_type",  nil,        [""]],
    ["_owner", player,[objNull]]
];
private _droneModel = [_type] call PSA_fnc_droneTypeToModel;
private _placeCode  = [[_owner, _type], PSA_fnc_droneDeploymentBar];
[
    _owner,
    _droneModel,
    _placeCode

] call PSA_fnc_initObjectPlacement;

true;