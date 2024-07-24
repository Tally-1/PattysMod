params [
	["_marker",        nil,      [""]],
	["_channelNumber", nil,       [0]],
	["_owner",         nil, [objNull]],
	["_local",         nil,   [false]]
];
private _isRspwn = [_marker] call PSA_fnc_isRespawnMarker;

if(_isRspwn)then{
	_marker setMarkerAlpha 0;
	"Respawn marker hidden" call p_dbg;
};