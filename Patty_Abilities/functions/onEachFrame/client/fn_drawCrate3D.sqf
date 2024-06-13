params[
    ["_crate",nil,[objNull]]
];
private _data  = _crate getVariable "PSA_crateData";
private _owner = _data getOrDefault ["owner", objNull];
private _pos   = getPosATLVisual _crate;
private _icon  = "\Patty_Abilities\textures\icons\RC.paa"; // "\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa";
private _color = _data get "color";
private _type  = _data get "type";
private _txt   = "supplyCrate";

if(_data get "contested")
then{_txt = "supplyCrate (contested)"}
else{if(_owner isEqualTo player)
then{_color = [0.85,0.85,0,1]}};

if(_type isEqualTo "arsenalCrate")then{
	_txt = "Arsenal";
	_icon = "\Patty_Abilities\textures\icons\AC.paa";
};

drawIcon3D 
[
    _icon,    // texture (icon type)
    _color,   // color
    _pos,     // position
    1.1,      // size X
    1.1,      // size Y
    0,        // angle
    _txt,     // text
    2,        // shadow
    0.04      // textSize
];

true;