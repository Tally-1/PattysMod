params[
    ["_crate",nil,[objNull]]
];
private _camPos    = (positionCameraToWorld [0,0,0]);
private _data      = _crate getVariable "PSA_crateData";
private _owner     = _data getOrDefault ["owner", objNull];
private _icon      = _data get "icon";
private _type      = _data get "type";
private _txt       = _data get "3Dtext";
private _distCoef  = (_camPos distance _crate) / PSA_3dCrateMarkerDistance;
private _txtDiff   = (8*_distCoef);
private _iconZ     = 1.5;
private _txtZ      = _iconZ+_txtDiff;
private _yellow    = [0.85,0.85,0,1];
private _white     = [1,1,1,1];
private _red       = [0.9,0,0,1];
private _txtColor  = _yellow;
private _iconColor = _white;
private _txtPos    = [getPosATLVisual _crate, _txtZ] call PSA_fnc_addZ;
private _iconPos   = [getPosATLVisual _crate, _iconZ] call PSA_fnc_addZ;


if(_data get "contested")then{
    _txt = [_txt," (Contested)"]joinString"";
    _txtColor  = _red;
    _iconColor = _red;
};

// Text 3D
drawIcon3D 
[
    "",    // texture (icon type)
    _txtColor,   // color
    _txtPos,     // position
    1.1,      // size X
    1.1,      // size Y
    0,        // angle
    _txt,     // text
    2,        // shadow
    0.04      // textSize
];

// Icon 3D
drawIcon3D 
[
    _icon,    // texture (icon type)
    _iconColor,   // color
    _iconPos, // position
    1.1,      // size X
    1.1,      // size Y
    0,        // angle
    "",       // text
    2,        // shadow
    0.04      // textSize
];

true;