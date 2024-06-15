params[
    ["_man",   nil, [objNull]],
    ["_crate", nil, [objNull]]
];
private _pos     = getPosATLVisual _crate;
private _side    = side group _man;
private _3dColor = [0,0.3,0.6,1];
private _colorM  = "ColorGreen";
private _iconM   = "PSA_resupply_crate";
private _text    = "Resupply Crate";
private _marker  = [_pos, _text, 1, _colorM, _iconM] call PSA_fnc_posMarker;
private _dataArr = [
    ["owner",                                      _man],
	["3Dtext",                                    _text],
	["icon",   "\Patty_Abilities\textures\icons\RC.paa"],
	["type",                            "resupplyCrate"],
    ["side",                                      _side],
    ["crate",                                    _crate],
    ["color",                                  _3dColor],
	["zone",             [_pos, PSA_crateProxDestrDist]],
	["destroyed",                                 false],
	["retrieved",                                 false],
	["contested",                                 false],
	["lastDamage",                                    0],

    ["timeSinceDamage",  {time - (_self get "lastDamage")}],
	["destroy",                       PSA_fnc_destroyCrate],
	["globalizeData",           PSA_fnc_globalizeCrateData],
	["nearEnemies",               PSA_fnc_nearCrateEnemies],
	["nearFriends",               PSA_fnc_nearCrateFriends],
	["toggleContested",       PSA_fnc_toggleContestedCrate],
	["contestedNow",             PSA_fnc_crateContestedNow],
	["onContestedStart",     PSA_fnc_onContestedCrateStart],
	["onContestedEnd",         PSA_fnc_onContestedCrateEnd]
];

private _crateData = createhashmapObject [_dataArr];

if(!isNil "_marker")
then{_crateData set ["marker", _marker]};

_crate setVariable ["PSA_crateData", _crateData, true];

_crateData;