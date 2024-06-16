params[
	["_crate",nil,[objNull]],
	["_man",  nil,[objNull]]
];
private _data  = _crate getVariable "PSA_crateData";
if(isNil "_data")exitWith{false;};

private _owner = _data get "owner";
if(isNil  "_owner") exitWith{false;};
if(_owner != _man)  exitWith{false;};

true;