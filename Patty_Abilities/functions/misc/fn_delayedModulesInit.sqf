params[
	["_modules", nil,[[]]],
	["_delay",   nil, [0]]
];
if(!canSuspend)
exitWith{_this spawn PSA_fnc_delayedModulesInit};

private _count = count _modules;
sleep _delay;

{_x setvariable ["BIS_fnc_initModules_disableAutoActivation",false,true]}forEach _modules;
_modules call BIS_fnc_initModules;

[[_count, " module(s) initialized"]] call p_dbg;

true;