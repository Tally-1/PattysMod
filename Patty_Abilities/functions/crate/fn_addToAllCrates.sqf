params[
    ["_crate", nil,[objNull]]
];
private _allCrates = missionNamespace getVariable "PSA_specialCrates";

if(canSuspend
&&{isNil "_allCrates"})
then{
	private _timer = time+10;
	waitUntil {
		sleep 0.1;
		_allCrates = missionNamespace getVariable "PSA_specialCrates";
		if(!isNil "_allCrates")exitWith{true};
		if(time>_timer)        exitWith{true};
		false;
	};
};

_allCrates pushBackUnique _crate;
missionNamespace setVariable ["PSA_specialCrates",_allCrates,true];

_allCrates;