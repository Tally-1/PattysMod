params[
    ["_crate",nil,[objNull]]
];
private _data  = _crate getVariable "PSA_crateData";
private _owner = _data getOrDefault ["owner", objNull];
private _pos   = getPosATLVisual _crate;
private _icon  = _data get "icon";
private _color = _data get "color";
private _type  = _data get "type";
private _txt   = _data get "3Dtext";

if(_data get "contested")
then{_txt = [_txt," (contested)"]joinString""}
else{if(_owner isEqualTo player)
then{_color = [0.85,0.85,0,1]}};

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