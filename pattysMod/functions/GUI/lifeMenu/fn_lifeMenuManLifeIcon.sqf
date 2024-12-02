params[
    ["_man",nil,[objNull]]
];
private _lives = [_man]call PTTY_fnc_getLives;
if(!alive _man)
exitWith{[_lives] call PTTY_fnc_livesSkullImage};
private _image = [
	str _lives,
	1.2
] call PTTY_fnc_textTexture;

_image;