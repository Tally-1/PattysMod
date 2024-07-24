params[
	["_map",nil,[controlNull]]
];
private _position  = _self get "position";
private _mouseOver = (_map ctrlMapWorldToScreen _position) distance2D getMousePosition < 0.02;
private _contested   = _status isEqualTo"contested";
private _deactivated = _status isEqualTo"deactivated";
private _icon      = "\Patty_Abilities\textures\icons\rp.paa";
private _font      = "PuristaMedium";
private _size      = 25;
private _yellow    = [0.85,0.85,0,1];
private _white     = [1,1,1,1];
private _red       = [0.9,0,0,1];
private _txtColor  = _yellow;
private _iconColor = _white;
private _txt       = _self get "name";

if(_contested)then{
    _txt = [_txt," (Contested)"]joinString"";
    _txtColor  = _red;
    _iconColor = _red;
};

if(_deactivated)then{ 
	_iconColor set [3,0.5];
	_txtColor  set [3,0.5];
	_txt=[_txt," (Deactivated)"]joinString"";
};

if(_mouseOver)then{ 
	_map drawIcon [
		_icon, 
		_txtColor, 
		_position, 
		_size, 
		_size, 
		0, 
		_txt, 
		1, 
		0.05, 
		_font, 
		"right"
	];
};

_map drawIcon [
	_icon, 
	_iconColor, 
	_position, 
	_size, 
	_size, 
	0, 
	"", 
	2, 
	0.05, 
	_font, 
	"right"
];