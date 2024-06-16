private _marker = _self get "marker";
private _owner  = _self get "owner";
private _text   = _self get "3Dtext";

_marker setMarkerText _text;

_self set ["color", [0,0.3,0.6,1]];
_self set ["contested", false];
_self call ["globalizeData"];

[_marker, _owner, false] remoteExecCall ["PSA_fnc_setCrateMarkerColor", 0];