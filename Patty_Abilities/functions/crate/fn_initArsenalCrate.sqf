params[
	["_crate",nil,[objNull]]
];
private _pos    = getPosATLVisual _crate;
private _colorM = "ColorWEST";
private _color  = [0,0.3,0.6,1];
private _iconM  = "PSA_arsenal_crate";
private _text   = "Arsenal Crate";

private _dataArr = [
	["type",                                "arsenalCrate"],
	["3Dtext",                                       _text],
	["icon",      "\Patty_Abilities\textures\icons\AC.paa"],
	["contested",                                    false],
	["marker",                                     _marker],
	["owner",                                      objNull],
	["color",                                       _color]
];

private _crateData = createhashmapObject [_dataArr];

_crate setVariable ["PSA_crateData", _crateData, true];
_crate addEventHandler ["Deleted",{_this call  PSA_fnc_crateDeleted}];
[_crate] spawn PSA_fnc_addToAllCrates;
[_crate] remoteExec ["PSA_fnc_arsenalCrateHealActionACE",0,true];
remoteExecCall ["PSA_fnc_updateAllCrates"];

true;