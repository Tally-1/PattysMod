params[
    ["_pos",     nil,[[]]],
	["_zChange", nil, [0]]
];
private _z       = _pos#2;
private _newPos  = [_pos#0,_pos#1,_z+_zChange];

_newPos;