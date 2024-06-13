params[
	["_crate",nil,[objNull]]
];
private _pos    = getPosATLVisual _crate;
private _colorM = "ColorWEST";
private _color  = [0,0.3,0.6,1];
private _icon   = "loc_Box";
private _text   = "Arsenal";
private _marker = [_pos, _text, 1, _colorM, _icon] call PSA_fnc_posMarker;
private _dataArr = [
	["type", "arsenalCrate"],
	["marker",      _marker],
	["owner",       objNull],
	["color",        _color]
];

private _crateData = createhashmapObject [_dataArr];

_crate setVariable ["PSA_crateData", _crateData, true];
_crate addEventHandler ["Deleted",{_this call  PSA_fnc_crateDeleted}];
[_crate] spawn PSA_fnc_addToAllCrates;

true;