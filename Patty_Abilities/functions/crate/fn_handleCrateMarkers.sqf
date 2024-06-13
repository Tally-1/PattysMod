{
	private _data      = _x getVariable "PSA_crateData";
	private _marker    = _data get "marker";
	private _cratePos  = getPosATLVisual _x;
	private _markerPos = markerPos _marker;

	if(_cratePos distance2D _markerPos > 2)
	then{_marker setMarkerPos _cratePos};
	
} forEach (PSA_specialCrates);

true;