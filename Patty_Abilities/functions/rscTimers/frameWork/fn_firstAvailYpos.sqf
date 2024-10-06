params[
	["_yPos",    nil,  [0]],
	["_height",  nil,  [0]],
	["_ctrlArr", nil, [[]]]
];
private _allYpos   = [_yPos, _height] call PSA_fnc_getAllTimerYPositions;
private _inUseYArr = _ctrlArr apply {(ctrlPosition _x)#1};
private _i         = 0;
private ["_newYPos"];
{
	if!(isNil "_newYPos")     exitWith{};
	if!(_x in _inUseYArr)  exitWith{_newYPos = _x};

	_i=_i+1;
	
} forEach _allYpos;

if(isNil "_newYPos")then{
	// copyToClipboard str [_allYpos, _inUseYArr];
	"no new Y coordinate" call p_dbg;
};

_newYPos;