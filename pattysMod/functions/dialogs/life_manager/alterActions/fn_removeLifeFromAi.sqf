params[
	["_man",           nil, [objNull]],
	["_valueToRemove", nil,       [0]]
];
private _lives = _man getVariable ["PTTY_aiLives", PTTY_defaultLives];

_lives = _lives-_valueToRemove;

_man setVariable ["PTTY_aiLives", _lives, true];

_lives;