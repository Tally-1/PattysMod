params[
	["_player", nil, [objNull]]
];
private _curators = allCurators apply{getAssignedCuratorUnit _x};

if(_player in _curators)exitWith{true;};

false;