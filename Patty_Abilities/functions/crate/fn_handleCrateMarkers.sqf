{
	private _data      = _x getVariable "PSA_crateData";
	private _marker    = _data get "marker";

	if(!isNil "_marker")then{
		private _cratePos  = getPosATLVisual _x;
		private _markerPos = markerPos _marker;

		if(_cratePos distance2D _markerPos > 2)
		then{[_marker, _cratePos] remoteExecCall ["setMarkerPosLocal"]};
	
}} forEach (PSA_specialCrates);

true;