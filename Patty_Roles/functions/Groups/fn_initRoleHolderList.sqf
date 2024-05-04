private _display    = findDisplay 9702;
private _tree       = _display displayCtrl 1500;
private _header     = _display displayCtrl 1080;
private _backGround = _display displayCtrl 1082;
private _boxPos     = ctrlPosition _backGround;
private _txtSize    = 0.04;
private _playerList = _display ctrlCreate ["RscStructuredText", 1002];

_playerList ctrlSetPosition [
	_boxPos#0-0.5, 
	_boxPos#1,
	0.4, 
	0.35
];

_playerList ctrlSetBackgroundColor [0.1,0.1,0.1,0.5];
_playerList ctrlCommit 0.2;
_playerList ctrlSetFontHeight _txtSize;