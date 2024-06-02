if(_self get "ended")exitWith{};
_self call ["whileCode"];
private _ctrl          = _self get "control";
private _text          = _self get "text";
private _endTime       = _self get "endTime";
private _icon          = _self get "icon";
private _remainingTime = round (_endTime - time);
private _textArr = [ 
	"<t shadow='2' >",
	_text, _remainingTime,
	"</t>"
];

if(_icon isNotEqualTo "")
then{_textArr insert [1, ["<img image='",_icon,"'></img> "]]};

private _displayText = parseText (_textArr joinString"");

_ctrl ctrlSetStructuredText _displayText;
if(_remainingTime > 0)exitWith{};

_self call ["stop"];

true;