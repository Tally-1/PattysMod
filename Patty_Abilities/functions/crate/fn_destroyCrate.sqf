private _crate = _self get "crate";
private _owner = _self get "owner";

_owner setVariable ["PSA_crateCooldown", time+PSA_crateDestructionCooldown, true];

_self set ["destroyed", true];
_crate setDamage 1;

true;