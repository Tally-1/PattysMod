params[
    ["_group",nil,[grpNull]]
];
private _players  = units _group select {[_x] call PTTY_fnc_isPlayer};
private _rankAlgo = {
	private _sum      = rankId _x;
	private _isLeader = leader group _x isEqualTo _x;
	if(_isLeader)
	then{_sum = _sum+1};
	
	_sum;
};
_players = [_players, [], _rankAlgo, "DESCEND"] call BIS_fnc_sortBy;

_players;