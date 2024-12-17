params [
	["_ctrl", nil, [controlNull]],
	["_path", nil,          [[]]]
];
if(isNil "_ctrl")exitWith{};
if(isNull _ctrl) exitWith{};

private _object       = _this call PTTY_fnc_getObjectFromTreePathLifeMenu;
private _display      = ctrlParent _ctrl;
private _data         = _display getVariable "PTTY_data";
if(isNil "_data")exitWith{};

private _actionMenu   = _data get "actionMenu";
private _recentUpdate = time-(_data get"listUpdate")<0.1;
if(_recentUpdate)exitWith{};

_actionMenu call ["update",[_object]];

true;