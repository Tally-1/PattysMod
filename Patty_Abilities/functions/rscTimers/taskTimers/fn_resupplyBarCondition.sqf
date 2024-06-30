params[
	["_man",   nil, [objNull]],
	["_crate", nil, [objNull]]
];
if(isNil "_man")                       exitWith{false};
if(isNil "_crate")                     exitWith{false};
if!(alive _crate)                      exitWith{false};
if!([_man] call PSA_fnc_functionalMan) exitWith{false};

true;