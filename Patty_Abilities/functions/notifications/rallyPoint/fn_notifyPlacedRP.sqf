params[
	["_ownerName",nil,[""]]
];
private _iOwnIt = _ownerName isEqualTo name player;
private _title  = "Rally point";
private _text   = ["Rally Point placed by ", _ownerName]joinString"";
private _icon   = "\Patty_Abilities\textures\icons\RallyPointPlaced.paa";

if(_iOwnIt)
then{_text="You placed a Rally Point"};

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;

true;