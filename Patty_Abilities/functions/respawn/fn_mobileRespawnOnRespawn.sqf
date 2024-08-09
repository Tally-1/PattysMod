params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
private _abilities = _man getVariable ["PSA_abilities",[]];
if("mobile_respawn"in _abilities)then{_this spawn PSA_fnc_handleMRSOnRespawn};

private _timer = time+1;
waitUntil{(isTouchingGround _man || {time > _timer})};

private _nearMRS = [_man] call PSA_fnc_nearestMRS;
if(isNil "_nearMRS")exitWith{};

private _data = _nearMRS getVariable "PSA_mobileRespawnData";
if(isNil "_data")exitWith{};

private _owner   = _data get "owner";
private _vehicle = vehicle _owner;
if(_vehicle isEqualTo _owner)exitWith{};
[[name _man, " moved into cargo of ",name _owner,"'s vehicle"]] call p_dbg;

_man moveInCargo _vehicle;