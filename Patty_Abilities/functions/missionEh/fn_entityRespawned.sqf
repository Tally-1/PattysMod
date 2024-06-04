params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
if!(_man isKindOf "caManBase")exitWith{};

private _crate     = _man getVariable "PSA_myCrate";
private _loadOut   = _man getVariable "PSA_loadOut";
private _abilities = _man getVariable "PSA_abilities";

if(!isNil "_abilities") then{_man setVariable ["PSA_abilities", _abilities, true]};
if(!isNil "_crate")     then{
	_man setVariable ["PSA_myCrate", _crate, true];

	private _crateData = _crate getVariable ["PSA_crateData", createHashmap];
	_crateData set  ["owner", _man];
	_crateData call ["globalizeData"];
};

if(!isNil "_loadOut")   then{
	_man setVariable ["PSA_loadOut", _loadOut, true];
	_man setUnitLoadout _loadOut;
};

true;