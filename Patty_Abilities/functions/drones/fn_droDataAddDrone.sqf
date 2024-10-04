params[
    ["_drone", nil,[objNull]],
    ["_type",  nil,     [""]]
];
private _selection = {alive _x && {canMove _x}};
private _allDrones = (missionNamespace getVariable "PSA_specialDrones")select _selection;
private _ownDrones = (_self get "active_drones")select _selection;
private _owner     = _self get "owner";

_ownDrones pushBackUnique _drone;
_self set ["active_drones", _ownDrones];

_allDrones pushBackUnique _drone;
missionNamespace setVariable ["PSA_specialDrones",_allDrones,true];

_owner setVariable["PSA_droneOwnerData", _self, true];

if(PSA_debug)then{
    private _activeTypes = _self call ["activeTypes"];
    private _debugText   = parseText([
        _type, " drone deployed by ", name _owner,"<br/>",
        "Active types: ",_activeTypes, "<br/>",
        "Valid Drone-count: ", count _ownDrones
    ]joinString"");

    hint _debugText;
};

true;