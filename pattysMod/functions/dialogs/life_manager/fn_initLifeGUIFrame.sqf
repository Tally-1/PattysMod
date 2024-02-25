params[
	["_frame", nil, [controlNull]]
];
private _title      = "Life manager";
private _txtSize    = 0.05;
private _titleColor = [0.678431,0.74902,0.513726,1];
private _pos        = ctrlPosition _frame;

_frame ctrlSetTextColor _titleColor;
_frame ctrlSetText      _title;
_frame ctrlSetFontHeight _txtSize;
_frame ctrlSetPosition [_pos#0, (_pos#1)-(_txtSize*0.4), _pos#2, (_pos#3)+(_txtSize*2)];

_frame ctrlCommit 1;