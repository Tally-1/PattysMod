params[
	["_ctrlPos",nil,[[]]]
];
private _color   = [0.678431,0.74902,0.513726,1];
private _title   = "Squads";
private _canvas     = "#(argb,8,8,3)color(0.1,0.1,0.1,0.500000,ca)";
private _backGround = _self call ["addImage",[_canvas, _ctrlPos]];
private _tvFrame    = _self call ["addFrame",[_ctrlPos, _title, _color, true, 0.05]];

_tvFrame;