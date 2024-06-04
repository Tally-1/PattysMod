params[
    ["_man",   nil, [objNull]],
    ["_crate", nil, [objNull]]
];
private ["_marker"];
private _pos     = getPosATLVisual _crate;
private _side    = side group _man;
if(isNull _man)
then{_side = civilian}
else{_marker = [_crate, _side] call PSA_fnc_crateMarker};

private _3dColor = [_side] call PSA_fnc_sideColor;
private _dataArr = [
    ["owner",                                _man],
    ["side",                                _side],
    ["crate",                              _crate],
    ["color",                            _3dColor],
	["zone",      [_pos, PSA_crateProxDestrDist]],
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

if(!isNil "_marker")
then{_crateData set ["marker", _marker]};

_crate setVariable ["PSA_crateData", _crateData, true];

_crateData;