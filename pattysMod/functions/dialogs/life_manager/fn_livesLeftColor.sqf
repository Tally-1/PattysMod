params[
	["_count", nil, [0]]
];
private _color = [0,1,0,1];
if(_count <  5) then {_color = [0.9,0.9,0.1,1]};
if(_count <  3) then {_color = [1,0.451,0,1]};
if(_count <  1) then {_color = [1,0,0,1]};

_color;