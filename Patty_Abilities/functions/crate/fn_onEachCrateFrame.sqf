params[
	["_man",   nil,[objNull]],
	["_crate", nil,[objNull]]
];
private _z        = _crate getVariable "PSA_crateZ";
private _dir      = _crate getVariable "PSA_crateDir";
private _cratePos = _man modelToWorldVisual [0,3,1]; 


_crate setPosATL [_cratePos#0,_cratePos#1, _z];
_crate setVectorUp surfaceNormal _cratePos;
_crate setDir _dir;

true;