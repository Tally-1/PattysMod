params [
	["_marker",nil,[""]]
];
// when placing the module the marker name starts with this string.
if("bis_o2_" in _marker)exitWith{true};


// If no rallypoint or respawnmodule was recently placed then it is not a respawn marker.
private _timeSince = time - PSA_lastRallyPoint;
if(_timeSince > 1)exitWith{false};

// When using the "BIS_fnc_addRespawnPosition" function the marker name usually is close to the actual respawn position.
private _isNumArr  = [_marker] call PSA_fnc_strIsNumArr;
if(_isNumArr)exitWith{ 
	private _markerPos = [(markerPos _marker)] call PSA_fnc_roundPos;
	private _strPos    = [(parseSimpleArray _marker)] call PSA_fnc_roundPos;
	_markerPos set [2,0];
	_strPos    set [2,0];

	private _samePos = _markerPos isEqualTo _strPos;
	
	_samePos;
};

false;