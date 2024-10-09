params[
	["_drone",nil,[objNull]]
];
if(!isServer)
exitWith{"Client tried to execute Server function" call p_dbg};

private _onEachFrame = { (_this#0) setVectorUp [0,0,1]; (_this#0) setVelocityModelSpace [0,0,0]};
private _frameEh     = [[_drone],_onEachFrame] call PSA_fnc_addServerFrameTask;

sleep 3;

[_frameEh] call PSA_fnc_removeServerFrameTask;
private _z = (getPos _drone)#2;

_drone allowDamage true;

if(_z <= 1)
exitWith{false};

_drone setVelocityModelSpace [0,0,3];

true;