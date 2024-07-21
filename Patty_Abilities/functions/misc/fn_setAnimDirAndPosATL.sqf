params[
    ["_man",  nil,[objNull]],
    ["_anim", nil,     [""]],
    ["_dir",  nil,      [0]],
    ["_pos",  nil,     [[]]]
];

[_man, _anim] remoteExec ["switchMove"];
_man setPosATL  _pos;
_man setDir     _dir;

true;