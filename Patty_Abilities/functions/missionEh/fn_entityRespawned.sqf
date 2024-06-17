params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
if!(_man isKindOf "caManBase")exitWith{};

private _crate     = _corpse getVariable "PSA_myCrate";
private _loadOut   = _corpse getVariable "PSA_loadOut";
private _abilities = _corpse getVariable "PSA_abilities";
private _coolDown  = _corpse getVariable "PSA_crateCooldown";

if(!isNil "_abilities") then{_man setVariable ["PSA_abilities", _abilities, true]};
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