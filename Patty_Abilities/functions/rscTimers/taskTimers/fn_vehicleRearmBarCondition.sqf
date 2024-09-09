params[
	["_man",    nil,[objNull]],
	["_crate",  nil,[objNull]],
	["_vehicle",nil,[objNull]]
];
if(isNil "_man")                       exitWith{false};
if(isNil "_crate")                     exitWith{false};
if!(alive _crate)                      exitWith{false};
if(isNil "_vehicle")                   exitWith{false};
if!(alive _vehicle)                    exitWith{false};
if!([_man] call PSA_fnc_functionalMan) exitWith{false};

true;