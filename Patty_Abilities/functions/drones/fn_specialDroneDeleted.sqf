params[
    ["_drone",nil,[objNull]]
];
private _reason = _drone getVariable "PSA_deletionReason";
if(isNil "_reason")exitWith{"No reason for deletion" call p_dbg};

private _owner = _drone getVariable "PSA_droneOwner";
private _data  = _owner getVariable "PSA_droneOwnerData";

_drone setVariable ["PSA_deletionReason",nil,true];

_data call ["onDeletion", [_drone, _reason]];

true;