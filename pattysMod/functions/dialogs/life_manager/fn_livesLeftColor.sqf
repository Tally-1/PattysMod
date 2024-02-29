params[
	["_count", nil, [0]]
];
private _color = [0,1,0,1];
if(_count <  5) then {_color = [0.9,0.9,0.1,1]};
if(_count <  3) then {_color = [1,0.451,0,1]};
if(_count <  1) then {_color = [1,0,0,1]};

_color;
// private _maxCount = 5;
// private _coef     = _count/_maxCount;

// if(_coef  > 1)then{_coef=1;};
// if(_count < 1)then{_coef=0;};

// private _red   = 1;
// private _green = 0+_coef;
// private _blue  = 0+_coef;
// private _alpha = 1;//-_coef;
// private _color = [
// 	_red,
// 	_green,
// 	_blue,
// 	_alpha
// ];

// _color;