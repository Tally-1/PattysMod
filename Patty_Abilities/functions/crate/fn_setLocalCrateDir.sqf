params[
	["_dirType", nil,[""]] // can be: "add" / "subtract"
];
private _man    = call PSA_fnc_getControlledMan;
private _crate  = _man getVariable   "PSA_localCrate";
private _curDir = _crate getVariable "PSA_crateDir";
private _newDir = _curDir+2;

if(_dirType isEqualTo "subtract")
then{_newDir=_curDir-2};

_newDir = [_newDir] call PSA_fnc_formatDir;

_crate setVariable ["PSA_crateDir", _newDir];

_newDir;