params[
	["_man",        nil, [objNull]],
	["_valueToAdd", nil,       [0]]
];
private _lives = _man getVariable ["PTTY_aiLives", PTTY_defaultLives];

_lives = _lives+_valueToAdd;

_man setVariable ["PTTY_aiLives", _lives, true];

_lives;