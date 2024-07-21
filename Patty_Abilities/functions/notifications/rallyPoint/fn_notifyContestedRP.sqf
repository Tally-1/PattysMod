params[
	["_ownerName",nil,[""]]
];
private _title  = "!Rally Point!";
private _text   = "Your Rally Point is contested!";
private _icon   = "\Patty_Abilities\textures\icons\RallyPointContested.paa";

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;

true;