params[
	["_roleData",nil,[configNull]]
];
private _noWeaponArr = ["-", "-", "-"];
private _customVars  = getArray (_roleData >> "customVariables");
private _index       = (_customVars apply {toLower (_x#0)}) find "psa_secondrifle";
if(_index isEqualTo -1)
exitWith{_noWeaponArr};

private _weapon = _customVars#_index#1#0;
private _name   = getText (configFile >> "CfgWeapons"  >> _weapon >> "displayName");
private _image  = getText (configFile >> "CfgWeapons"  >> _weapon >> "picture");
private _model  = getText (configFile >> "CfgWeapons"  >> _weapon >> "model");
private _data   = [_name, _image, _model] apply {
	private _returnVal = _x;
	if(_x == "")then{_returnVal = "-"};
	_returnVal;
};

_data;