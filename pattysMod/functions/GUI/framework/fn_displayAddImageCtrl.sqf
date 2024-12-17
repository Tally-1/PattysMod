params[
	["_image",   nil,         [""]],
	["_pos",     nil,         [[]]],
	["_color",   [1,1,1,1],   [[]]],
	["_show",    true,     [false]]
];
private _img = _self call ["addCtrl",["RscPicture",_pos, _show]];

_img set  ["setText",   PTTY_fnc_imgCtrlSetText];
_img set  ["rotate",   PTTY_fnc_imgCtrlSetAngle];
_img set  ["getAngle", PTTY_fnc_imgCtrlGetAngle];
_img set  ["defaultColor",               _color];

_img call ["setImage",                 [_image]];
_img call ["setColor",                 [_color]];

_img;