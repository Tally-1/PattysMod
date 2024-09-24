params[
	["_dirType", nil,[""]] // can be: "add" / "subtract"
];
private _man    = call PSA_fnc_getControlledMan;
private _object  = _man getVariable   "PSA_localObject";
private _curDir = _object getVariable "PSA_objectDir";
private _newDir = _curDir+2;

if(_dirType isEqualTo "subtract")
then{_newDir=_curDir-2};

_newDir = [_newDir] call PSA_fnc_formatDir;

_object setVariable ["PSA_objectDir", _newDir];

_newDir;