params[
	["_yPos",   nil, [0]],
	["_height", nil, [0]]
];
private _allPositions = [_yPos];
private _nextPos = _yPos+_height;
for "_i" from 1 to 20 do { 
	_allPositions pushBack _nextPos;
	_nextPos = _nextPos+_height;
};

_allPositions;