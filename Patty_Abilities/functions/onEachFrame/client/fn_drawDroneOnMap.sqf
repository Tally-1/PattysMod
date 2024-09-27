params[
	["_map",   nil,[controlNull]],
    ["_drone", nil,    [objNull]]
];

private _pos       = getPosATL _drone;
private _icon      = "\Patty_Abilities\textures\icons\DroneAbility.paa";
private _color     = [1,1,1,1];
private _size      = 25;
private _mouseOver = (_map ctrlMapWorldToScreen _pos) distance2D getMousePosition < 0.02;
private _text      = "";
private _font      = "PuristaMedium";

if(_mouseOver)then{ 
    private _type = [(_drone getVariable "PSA_droneType")] call PSA_fnc_capFirstLetter;
    _text = [_type, " Drone"]joinstring"";
    PSA_MapDrone = _drone;
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