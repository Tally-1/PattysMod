params[
	["_map",   nil, [controlNull]],
	["_crate", nil,     [objNull]]
];
private _data = _crate getVariable "PSA_crateData";
if(isNil "_data")exitWith{};

private _icon      = _data get "icon";
private _color     = [1,1,1,1];
private _pos       = getPosATL _crate;
private _size      = 25;
private _mouseOver = (_map ctrlMapWorldToScreen _pos) distance2D getMousePosition < 0.02;
private _crateTxt  = _data get "3Dtext";
private _text      = "";
private _font      = "PuristaMedium";

if(_data get "contested")then{
	_color = [0.9,0.1,0.1,1];
	if(_mouseOver)
	then{_text=[_crateTxt," (Contested)"]joinString ""};

};

if(_mouseOver)then{ 
_map drawIcon [
	_icon, 
	[1,0.9,0,1], 
	_pos, 
	_size, 
	_size, 
	0, 
	_crateTxt, 
	1, 
	0.05, 
	_font, 
	"right"
];
};

_map drawIcon [
	_icon, 
	_color, 
	_pos, 
	_size, 
	_size, 
	0, 
	_text, 
	2, 
	0.05, 
	_font, 
	"right"
];