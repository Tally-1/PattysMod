params[
	["_man",   nil,[objNull]],
	["_crate", nil,[objNull]]
];
private _cratePos = _man modelToWorldVisual [0,3,1]; 

_crate setPosATL [_cratePos#0,_cratePos#1, 0];

true;