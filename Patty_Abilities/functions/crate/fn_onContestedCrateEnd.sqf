private _marker = _self get "marker";

_marker setMarkerColorLocal "ColorGUER";
_marker setMarkerText "supplyCrate";

_self set ["color", [0,0.3,0.6,1]];
_self set ["contested", false];
_self call ["globalizeData"];
