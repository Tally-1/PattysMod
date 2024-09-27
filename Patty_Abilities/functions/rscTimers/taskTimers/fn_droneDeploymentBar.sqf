params[
	["_owner", nil,[objNull]],
	["_type",  nil,     [""]]
];
private _droneModel = [_type] call PSA_fnc_droneTypeToModel;
private _displayName = getText (configfile >> "CfgVehicles" >> _droneModel >> "displayName");
private _placeTime   = PSA_dronePlacementTime;
private _text        = ["Placing ", _displayName] joinString "";
private _endCode     = [[_owner,_type], {["PSA_DeployDrone", _this] call CBA_fnc_serverEvent}];
private _abortCode   = [[_owner], PSA_fnc_cratePlaceProgressBarAborted];
private _condition   = [[_owner], PSA_fnc_functionalMan];

[_text, _placeTime, _endCode, _abortCode, _condition, true] call PSA_fnc_progressBar;

_owner playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";

true;