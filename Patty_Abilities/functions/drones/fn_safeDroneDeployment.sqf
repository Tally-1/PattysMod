params[
	["_drone",nil,[objNull]]
];
"Deploying Drone" call p_dbg;
if(isServer)exitWith{
	_this call PSA_fnc_safeDroneDeploymentServer;
};
private _onEachFrame = { (_this#0) setVectorUp [0,0,1]; (_this#0) setVelocityModelSpace [0,0,0]};
private _frameEh     = [[_drone],_onEachFrame] call PSA_fnc_addClientFrameTask;

sleep 3;

[_frameEh] call PSA_fnc_removeClientFrameTask;
private _z = (getPos _drone)#2;

_drone allowDamage true;

if(_z<=1)
exitWith{false};

_drone setVelocityModelSpace [0,0,3];

true;