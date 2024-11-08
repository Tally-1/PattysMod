params[
	["_man",nil,[objNull]]
];
private _items = assignedItems [_man, false, false];
private _radio = "";

{if(_x call TFAR_fnc_isRadio)then{_radio = _x}}forEach _items;

if(_radio isEqualTo "")exitWith{};

_radio;