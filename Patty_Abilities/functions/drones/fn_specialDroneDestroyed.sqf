params[
    ["_drone",nil,[objNull]]
];
private _owner = _drone getVariable "PSA_droneOwner";
if(isNil "_owner")exitWith{"No Drone Owner found" call p_dbg;};

_drone removeAllEventHandlers "Deleted";
_drone removeAllEventHandlers "Fuel";
_drone removeAllEventHandlers "Killed";

private _reason = _drone getVariable "PSA_deletionReason";
if(!isNil "_reason")exitWith{"Drone deleted" call p_dbg};

"Special Drone destroyed" call p_dbg;

private _droneData = _owner getVariable "PSA_droneOwnerData";
if(isNil "_droneData")exitWith{"No Drone Data found" call p_dbg;};

_droneData call ["onDestruction",[_drone]];