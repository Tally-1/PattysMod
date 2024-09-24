params[
	["_man",   nil,[objNull]],
	["_object", nil,[objNull]]
];
private _z        = _object getVariable "PSA_objectZ";
private _dir      = _object getVariable "PSA_objectDir";
private _objectPos = _man modelToWorldVisual [0,3,1]; 


_object setPosATL [_objectPos#0,_objectPos#1, _z];
_object setVectorUp surfaceNormal _objectPos;
_object setDir _dir;

true;