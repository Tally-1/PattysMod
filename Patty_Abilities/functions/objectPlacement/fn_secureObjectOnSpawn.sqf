isNil{
params[
	["_object",  nil, [objNull]],
	["_isDrone", false,  [true]]
];
private _pos = getPosATL _object;

_object allowDamage false;
_object setDir _dir;
_object setPosATL [_pos#0,_pos#1,(_pos#2)+0.1];

if(_isDrone)
exitWith{[_object] spawn PSA_fnc_safeDroneDeployment};

_object setVectorUp surfaceNormal _pos;

[_object] spawn PSA_fnc_stopVelocityAndDamage;
};