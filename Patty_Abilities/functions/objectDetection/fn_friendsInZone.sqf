params[
    ["_ownSide",  nil, [objNull,west,grpNull]],
    ["_zone",     nil,                   [[]]]
];
_zone params["_pos","_rad"];
private _friends  = [];

{
    if([_x] call PSA_fnc_validLandEntity
    &&{([_ownSide,_x] call PSA_fnc_hostile) isEqualTo false})
    then{_friends pushBackUnique _x};
    
} forEach (_pos nearEntities ["land", _rad]);

_friends;