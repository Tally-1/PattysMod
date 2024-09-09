params[
	["_crate", nil,[objNull]],
	["_man",   nil,[objNull]]
];
private _vehicle   = [_crate,PSA_vehicleRearmDist,(side group _man)] call PSA_fnc_nearFriendlyVehicle;
if(isNil "_vehicle")exitWith{"no vehicle" call P_dbg};

private _time      = PSA_vehicleRearmTime;
private _vehName   = [_vehicle] call PSA_fnc_objectName;
private _text      = ["Rearming ", _vehName] joinString"";
private _endCode   = [[_vehicle],PSA_fnc_rearmVehicle];
private _abortCode = [[_man], PSA_fnc_resupplyBarAborted];
private _condition = [[_man, _crate, _vehicle], PSA_fnc_vehicleRearmBarCondition];

_man playMoveNow "AinvPknlMstpSlayWrflDnon_medic";

[_text, _time, _endCode, _abortCode, _condition] call PSA_fnc_progressBar;

true;