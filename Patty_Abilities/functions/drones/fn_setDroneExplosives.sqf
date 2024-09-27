params[
    ["_drone",nil,[objNull]]
];
private _pos   = getPosATLVisual _drone;
private _owner = _drone getVariable "PSA_droneOwner";
private _mineFront = createVehicle ["ClaymoreDirectionalMine_Remote_Ammo", _pos, [], 0, "CAN_COLLIDE"];
_mineFront attachTo [_drone, [0,0.22,-0.15]];

private _mineRight = createVehicle ["ClaymoreDirectionalMine_Remote_Ammo", _pos, [], 0, "CAN_COLLIDE"];
_mineRight attachTo [_drone, [0.2,0,-0.15]]; _mineRight setDir 90; 

private _mineLeft = createVehicle ["ClaymoreDirectionalMine_Remote_Ammo", _pos, [], 0, "CAN_COLLIDE"];
_mineLeft attachTo [_drone, [-0.2,0,-0.15]]; _mineLeft setDir 270; 

private _mineBottom = createVehicle ["SatchelCharge_Remote_Ammo", _pos, [], 0, "CAN_COLLIDE"];
_mineBottom setVectorUp [0,0,-1];
_mineBottom attachTo [_drone, [0.02,0,-0.28]]; _mineBottom setDir 180; 

private _mines = [_mineFront, _mineRight, _mineLeft, _mineBottom];
_drone setVariable ["PSA_mines", _mines, true];
_drone setVariable ["PSA_detonated", false, true];

{_x setShotParents [_drone, _owner]}forEach _mines;

true;