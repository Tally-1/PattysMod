params[
    ["_position", nil,         [[]]],
    ["_text",     "",          [""]],
    ["_size",     1,            [0]],
    ["_color",    "ColorBlack",[""]],
    ["_type",     "hd_dot",    [""]]
];

private _markerCount = count allMapMarkers;
private _markerName  = [round random 1000000, "_posMarker_", _markerCount] joinString "";

private _marker = createMarkerLocal [_markerName, _position];

_markerName setMarkerTypeLocal _type;
_markerName setMarkerSizeLocal  [_size, _size];
_markerName setMarkerColorLocal _color;
_markerName setMarkerTextLocal _text;
_markerName setMarkerAlpha 1;

_markerName;