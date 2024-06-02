params[
	["_man", nil, [objNull]]
];

if!(alive _man)                                exitWith{false;};
if!((side _man) in [west, east, independent])  exitWith{false;};
if!(_man checkAIFeature "PATH")                exitWith{false;};
if!(_man checkAIFeature "MOVE")                exitWith{false;};
if!(_man checkAIFeature "ANIM")                exitWith{false;};
if ([_man] call PSA_fnc_unconscious)           exitWith{false;};
if!([_man] call PSA_fnc_isRealMan)             exitWith{false;};


true;