params[
	["_man",nil,[objNull]]
];
private _side     = side group _man;
private _terminal = "B_UavTerminal";

if(_side isEqualTo east)        then{_terminal = "O_UavTerminal"};
if(_side isEqualTo independent) then{_terminal = "I_UavTerminal"};

_man linkItem _terminal;

_terminal;