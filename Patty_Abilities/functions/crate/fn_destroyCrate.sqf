private _crate = _self get "crate";
private _owner = _self get "owner";

if((!isNil "_owner")
&&{!isNull _owner})then{ 
	private _coolDownTime = time+PSA_crateDestructionCooldown;
	_owner setVariable ["PSA_crateCooldown", _coolDownTime, true];
	[]               remoteExecCall ["PSA_fnc_crateDestroyedNotification", _owner];
	[_coolDownTime]  remoteExec     ["PSA_fnc_crateCoolDownTimer",         _owner];
};

_self set ["destroyed", true];
_crate setDamage 1;

true;