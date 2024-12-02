params[
    ["_man", nil, [objNull]]
];
if(isNil "_man") exitwith{false};
if(isNull _man)  exitwith{false};

private _rightType = _man isKindOf "caManBase";
if(!_rightType)exitwith{false};

private _isPlayer  = _man in (call BIS_fnc_listPlayers);
private _nullGroup = isNull group _man;
if(_nullGroup &&{!_isPlayer})exitwith{false};

private _rightSide = side _man in [east,west,independent,civilian];
if(!_rightSide&&{!_isPlayer})exitwith{false};

true;