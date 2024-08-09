params[
	["_man",nil,[objNull]]
];
private _pos      = getPosATLVisual _man;
private _module   = 
[
	_pos,
	false,
	true
] call PSA_fnc_spawnRespawnModule;

private _nameArr  = [name _man];
for"_i"from(round random 10)
do{_nameArr pushBack " "};

private _name = _nameArr joinString"";

_module attachTo [_man, [0,0,0]];
_module setVariable ["name", "", true]; // _module setVariable ["name", _name, true];
_module setVariable ["BIS_fnc_initModules_disableAutoActivation", false, true];
[_module] call BIS_fnc_initModules;

_module;