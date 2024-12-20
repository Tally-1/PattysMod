params[
	["_roleData",nil,[configNull]]
];
private _loadout    = getArray(_roleData >> "defaultLoadout");
private _secondWpn  = [_roleData] call PTG_fnc_getSecondaryRifleData;
private _itemNames  = [];
private _itemImages = [];
private _itemModels = [];

for "_i" from 0 to 6 do{
	private ["_className", "_configPath", "_itemName", "_itemImage"];
	private _element  = _loadout#_i;
	private _dataType = typeName _element;
	

	if(_dataType isEqualTo "STRING")
	then{_className = _element;}
	else{_className = _element#0;};
	if(isNil "_className")
	then{_className = ""};
 
	if(_i isEqualTo 5)
	then{_configPath = configFile >> "CfgVehicles" >> _className}
	else{_configPath = configFile >> "CfgWeapons"  >> _className};

	if(_className isEqualTo "")
	then{
		_itemName   = "-"; 
		_itemImage  = "-";
		_itemModel  = "-";
	}else{
		_itemName  = getText (_configPath >> "displayName");
		_itemImage = getText (_configPath >> "picture");
		_itemModel = getText (_configPath >> "model");
	};

	_itemNames  pushBack _itemName;
	_itemImages pushBack _itemImage;
	_itemModels pushBack _itemModel;
};

_itemNames  pushBack (_secondWpn#0);
_itemImages pushBack (_secondWpn#1);
_itemModels pushBack (_secondWpn#2);

[_itemNames, _itemImages, _itemModels];