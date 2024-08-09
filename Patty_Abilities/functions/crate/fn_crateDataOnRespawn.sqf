params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
private _crate     = _corpse getVariable "PSA_myCrate";
private _loadOut   = _corpse getVariable "PSA_loadOut";
private _coolDown  = _corpse getVariable "PSA_crateCooldown";

if(!isNil "_crate")     then{
	private _crateData = _crate getVariable ["PSA_crateData", createHashmap];

	_man setVariable ["PSA_myCrate", _crate, true];
	_crateData set  ["owner", _man];
	_crateData call ["globalizeData"];
};

if(!isNil "_loadOut")   then{
	_man setVariable ["PSA_loadOut", _loadOut, true];
	_man setUnitLoadout _loadOut;
};

if(!isNil "_coolDown")
then{_man setVariable ["PSA_crateCooldown", _coolDown, true]};

true;