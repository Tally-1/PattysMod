params[
	["_ctrlPos",nil,[[]]]
];
private _color      = _self get"frameColor";
private _title      = "Loading...";
private _canvas     = call PTTY_fnc_loadScreenImage;
private _backGround = _self call ["addImage",[_canvas, _ctrlPos]];
private _tvFrame    = _self call ["addFrame",[_ctrlPos, _title, _color, false, 0.05]];

[_tvFrame, _backGround];