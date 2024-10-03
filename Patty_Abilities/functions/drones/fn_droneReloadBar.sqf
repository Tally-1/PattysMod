params[
    ["_drone",nil,[objNull]]
];
private _type        = _drone getVariable "PSA_droneType";
private _owner       = _drone getVariable ["PSA_droneOwner",objNull];
private _droneModel  = [_type] call PSA_fnc_droneTypeToModel;
private _displayName = getText (configfile >> "CfgVehicles" >> _droneModel >> "displayName");
private _time        = PSA_dronePickupTime;
private _text        = ["Reloading ", _displayName] joinString "";
private _endCode     = [[_drone], {[_this#0] call PSA_fnc_droneReloadComplete}];
private _abortCode   = [[_owner, _drone], PSA_fnc_droneReloadBarAborted];
private _condition   = [[_owner], PSA_fnc_functionalMan];
private _soundObject = createSimpleObject ["UserTexture1m_F", getPosASLVisual _drone];

[_text, _time, _endCode, _abortCode, _condition, true] call PSA_fnc_progressBar;

_soundObject attachTo [_drone,[0,0,0]];
_drone setVariable ["PSA_soundObject", _soundObject, true];

[_soundObject] call PSA_fnc_playReloadSound;

_drone engineOn false;
_owner playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";

true;