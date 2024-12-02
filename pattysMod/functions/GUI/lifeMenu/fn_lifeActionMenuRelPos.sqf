params[
	["_newX",nil,[0]],
	["_newY",nil,[0]],
	["_newW",nil,[0]],
	["_newH",nil,[0]]
];
(_self get "position")
params["_x", "_y", "_w", "_h"];

private _relPos = [_x+_newX,_y+_newY,_w*_newW,_h*_newH];

_relPos;