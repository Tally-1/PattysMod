params[
	["_zChange",nil,[0]]
];
private _man     = call PSA_fnc_getControlledMan;
private _manZ    = (getPosATLVisual _man)#2;
private _crate   = _man getVariable   "PSA_localCrate";
private _curZ    = _crate getVariable "PSA_crateZ";
private _newZ    = _curZ+_zChange;
private _maxDiff = 2.11; 
private _diff    = [_manZ, _curZ] call PSA_fnc_numDiff;

// max alt-diff between player and crate should be 2m, 
// but the Z is changed by minimum 0.12 pr scroll, 
// meaning that by adding 0.11 to the max diff the change will be stopped 
// before exceeding the 2m limit.
// it may however be slightly less, but I'd say that is tolerable.

if(_newZ < 0)
then{_newZ = 0}
else{if(_diff > _maxDiff)
then{_newZ = (_manZ+2)}};

_crate setVariable ["PSA_crateZ", _newZ];

true;