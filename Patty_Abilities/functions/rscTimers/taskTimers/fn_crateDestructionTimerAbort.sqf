private _crate     = _self get "crate";

if(isNil "_crate")exitWith{};

private _data      = _crate getVariable "PSA_crateData";
private _endTime   = (_self get "endTime")+0;
private _contested = _data call ["contestedNow"];
private _friends   = count (_data call ["nearFriends"])>0;
private _enemies   = count (_data call ["nearEnemies"])>0;
private _pause     = _friends && {_enemies};

if(_pause)     exitWith{
	_self set ["endTime", _endTime+1];
};

if(_contested) exitWith{};

_self call ["stop"];

true;