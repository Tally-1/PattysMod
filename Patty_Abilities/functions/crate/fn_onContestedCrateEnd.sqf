private _marker = _self get "marker";
private _owner  = _self get "owner";
private _text   = _self get "3Dtext";

_self set ["color", [0,0.8,0,1]];
_self set ["contested", false];
_self call ["globalizeData"];

if(!isNil "_marker")then{
	_marker setMarkerText _text;
	[_marker, _owner, false] remoteExec ["PSA_fnc_setCrateMarkerColor", 0];
};
