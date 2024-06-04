params[
    ["_crate", nil,[objNull]],
    ["_side",  nil,   [west]]    
];

private _pos    = getPosATLVisual _crate;
private _color  = [_side] call PSA_fnc_getSideMarkerColor;
private _icon   = "loc_Box";
private _text   = "supplyCrate";
private _marker = [_pos, _text, 1, _color, _icon] call PSA_fnc_posMarker;

_marker;