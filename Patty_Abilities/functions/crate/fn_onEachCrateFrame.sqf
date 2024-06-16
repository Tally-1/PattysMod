params[
	["_man",   nil,[objNull]],
	["_crate", nil,[objNull]]
];
private _cratePos = _man modelToWorldVisual [0,3,1]; 
private _dir      = _crate getVariable "PSA_crateDir";

_crate setPosATL [_cratePos#0,_cratePos#1, 0];
_crate setVectorUp surfaceNormal _cratePos;
_crate setDir _dir;

true;