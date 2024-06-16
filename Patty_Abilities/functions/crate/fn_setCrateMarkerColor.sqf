params[
    ["_marker",    nil,      [""]],
    ["_owner",     nil, [objNull]],
	["_contested", nil,    [true]]
];
private _color = "ColorGreen";
if(_owner isEqualTo player)
then{_color = "ColorYellow"};

if(_contested)
then{_color = "ColorRed"};
_marker setMarkerColorLocal _color;

true;