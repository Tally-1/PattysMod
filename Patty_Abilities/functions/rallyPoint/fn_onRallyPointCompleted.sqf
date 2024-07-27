params[
    ["_man",       nil, [objNull]],
    ["_animState", nil,      [""]]
];
private _clientId  = clientOwner;

playSound "hintCollapse";

["PSA_placeRallypoint", [_man, _clientId, _animState]] call CBA_fnc_serverEvent;