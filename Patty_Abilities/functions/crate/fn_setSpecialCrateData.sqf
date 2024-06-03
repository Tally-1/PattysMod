params[
    ["_man",   nil, [objNull]],
    ["_crate", nil, [objNull]]
];

private _side    = side group _man;
private _3dColor = [_side] call PSA_fnc_sideColor;
private _marker  = [_crate, _side] call PSA_fnc_crateMarker;
private _dataArr = [
    ["owner",                                _man],
    ["side",                                _side],
    ["marker",                            _marker],
    ["crate",                              _crate],
    ["color",                            _3dColor],
	["zone",      [_pos, PSA_crateProxDestrTimer]],
	["destroyed",                           false],
	["retrieved",                           false],
	["contested",                           false],
	["lastDamage",                              0],

    ["timeSinceDamage",              {time - (_self get "lastDamage")}],
	["destroy",                                   PSA_fnc_destroyCrate],
	["globalizeData",                       PSA_fnc_globalizeCrateData],
	["nearEnemies",                           PSA_fnc_nearCrateEnemies],
	
	["toggleContested",                   PSA_fnc_toggleContestedCrate],
	["contestedNow",    {(_self call ["nearEnemies"]) isNotEqualTo []}],
	["onContestedStart",                 PSA_fnc_onContestedCrateStart],
	["onContestedEnd",    {"Crate is no longer contested!" call p_dbg}]
];

private _crateData = createhashmapObject [_dataArr];

_crate setVariable ["PSA_crateData", _crateData, true];

_crateData;