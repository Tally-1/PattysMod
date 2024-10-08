params[
	["_man", nil, [objNull]]
];

if!(alive _man)                                          exitWith{false;};
if!((side _man) in [west, east, independent, sideEnemy]) exitWith{false;};
if ([_man] call PSA_fnc_unconscious)                     exitWith{false;};
if!([_man] call PSA_fnc_isRealMan)                       exitWith{false;};

// In 3den enhanced all AI-features are disabeled for players...
// Some false negatives may occur when remoteControlling ai units.
if(_man in allPlayers)exitWith{true};

if!(_man checkAIFeature "PATH") exitWith{false;};
if!(_man checkAIFeature "MOVE") exitWith{false;};
if!(_man checkAIFeature "ANIM") exitWith{false;};

true;