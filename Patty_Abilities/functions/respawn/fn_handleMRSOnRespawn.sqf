params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
private _data = _man getVariable ["PSA_mobileRespawnData", (_corpse getVariable "PSA_mobileRespawnData")];
if(isNil "_data")then{
	if!([_man]call PSA_fnc_canInitMRSP)exitWith{};
	_data = [_man] call PSA_fnc_initMRSP
};
if(isNil "_data")exitWith{"Unable to init MRS-Data on respawn" call p_dbg};
_data set  ["owner", _man];
private _status = _data call ["update"];
if(!isNil "_status")
then{[["MRS status: ",_status]]call p_dbg}
else{"No MRS data found on respawn" call p_dbg};

sleep 1;

["PSA_mobileRespawnChanged"]call CBA_fnc_serverEvent;

true;