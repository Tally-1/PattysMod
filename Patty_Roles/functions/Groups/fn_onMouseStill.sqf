params [
	["_tree", nil, [controlNull]],
	["_path",    nil,          [[]]]
];
if(count _path < 2)exitWith{call PTG_fnc_closeRoleHolderList;};

private _display    = findDisplay 9702;
private _playerList = _display displayCtrl 1002;
private _role       = (parseSimpleArray (_tree tvData _path))#0;
private _players    = [_role] call PTG_fnc_getPlayersByRole;
private _count      = count _players;

if(_count < 1)
exitWith{call PTG_fnc_closeRoleHolderList;};

if(isNull _playerList)
then{_playerList = call PTG_fnc_initRoleHolderList};

private _textArr  = [
	"<t shadow='2' font='PuristaLight'>"
];

for "_i" from 0 to _count do {
	private _entry = [name (_players#_i), "<br/>"]joinString"";
	_textArr pushBack _entry;
};

private _position = ctrlPosition _playerList;
private _text     = parseText(_textArr joinString "");
private _height   = (_count* 0.03)+0.05;

_playerList ctrlSetStructuredText _text;

true;