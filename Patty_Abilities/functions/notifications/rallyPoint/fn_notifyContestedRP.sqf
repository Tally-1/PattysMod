params[
	["_ownerName",nil,[""]]
];
private _title  = "Rally Point Contested!";
private _text   = "Rally Point is now Disabled!";
private _icon   = "\Patty_Abilities\textures\icons\RallyPointContested.paa";

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;

true;