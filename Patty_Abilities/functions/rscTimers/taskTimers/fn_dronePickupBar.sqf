params[
    ["_drone",nil,[objNull]]
];
private _type        = _drone getVariable "PSA_droneType";
private _owner       = _drone getVariable ["PSA_droneOwner",objNull];
private _droneModel  = [_type] call PSA_fnc_droneTypeToModel;
private _displayName = getText (configfile >> "CfgVehicles" >> _droneModel >> "displayName");
private _time        = PSA_dronePickupTime;
private _text        = ["Picking up ", _displayName] joinString "";
private _endCode     = [[_drone,"was picked up"], {[_this#0, _this#1] remoteExecCall ["PSA_fnc_deleteSpecialDrone",2]}];
private _abortCode   = [[_owner], PSA_fnc_cratePlaceProgressBarAborted];
private _condition   = [[_owner], PSA_fnc_functionalMan];

[_text, _time, _endCode, _abortCode, _condition, true] call PSA_fnc_progressBar;

_owner playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";

true;