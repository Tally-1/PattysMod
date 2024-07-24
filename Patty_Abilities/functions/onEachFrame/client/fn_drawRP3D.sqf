private _camPos   = (positionCameraToWorld [0,0,0]);
private _position = _self get "position";
private _tooFar   = _camPos distance2D _position > PSA_rp3DMarkerDistance;

if(_tooFar)exitWith{};

private _status      = _self get"status";
private _contested   = _status isEqualTo"contested";
private _deactivated = _status isEqualTo"deactivated";
private _icon        = "\Patty_Abilities\textures\icons\rp.paa";
private _txt         = _self get "name";
private _distCoef    = (_camPos distance _position) / PSA_3dCrateMarkerDistance;
private _txtDiff     = (8*_distCoef);
private _iconZ       = 0.75;
private _txtZ        = _iconZ+_txtDiff;
private _yellow      = [0.85,0.85,0,1];
private _white       = [1,1,1,1];
private _red         = [0.9,0,0,1];
private _txtColor    = _yellow;
private _iconColor   = _white;
private _txtPos      = [_position, _txtZ] call PSA_fnc_addZ;
private _iconPos     = [_position, _iconZ] call PSA_fnc_addZ;

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