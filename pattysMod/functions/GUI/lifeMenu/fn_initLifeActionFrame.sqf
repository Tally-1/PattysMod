params[
	["_ctrlPos",nil,[[]]]
];
private _color      = _self get"frameColor";
private _title      = "Actions";
private _canvas     = "#(argb,8,8,3)color(0.1,0.1,0.1,0.500000,ca)";
private _backGround = _self call ["addImage",[_canvas, _ctrlPos]];
private _tvFrame    = _self call ["addFrame",[_ctrlPos, _title, _color, false, 0.05]];

_tvFrame;