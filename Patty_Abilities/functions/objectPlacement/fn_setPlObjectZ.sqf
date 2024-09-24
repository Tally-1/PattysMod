params[
	["_zChange",nil,[0]]
];
private _man     = call PSA_fnc_getControlledMan;
private _manZ    = (getPosATLVisual _man)#2;
private _object   = _man getVariable   "PSA_localObject";
private _curZ    = _object getVariable "PSA_objectZ";
private _newZ    = _curZ+_zChange;
private _maxDiff = 2.11; 
private _diff    = [_manZ, _curZ] call PSA_fnc_numDiff;


if(_newZ < 0)
then{_newZ = 0}
else{if(_diff > _maxDiff)
then{_newZ = (_manZ+2)}};

_object setVariable ["PSA_objectZ", _newZ];

true;